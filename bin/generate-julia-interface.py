#!/usr/bin/env python2.7
from collections import OrderedDict
from jinja2 import Template
from lxml import etree
import os
import sys
import time

def log(msg):
    print '[%s] %s' % (time.asctime(), msg)

class SCIPXMLParser(object):
    # Mapping of C types to Julia types
    TYPE_MAP = {
        'double': 'Float64',
        'int': 'Int',
        'unsigned int': 'Uint',
        'void': 'Void',
    }

    def __init__(self):
        self.typealiases = OrderedDict() # {SCIP_Bool: Uint, ...}
        self.defines  = OrderedDict()    # {TRUE: 1, ...}
        self.enums    = OrderedDict()    # {SCIP_Retcode: {SCIP_OKAY: 1, ...}, ...}
        self.typedefs = OrderedDict()    # {SCIP_Retcode: SCIP_RETCODE}

        self.checked_functions = OrderedDict()   # {version: (SCIP_Real, ...)}
        self.unchecked_functions = OrderedDict() # {create: (SCIP_Retcode, ...}}

    def parse(self, filepath):
        log('parsing %s' % filepath)

        # Main parser loop. This is responsible for identifying major sections
        # of the XML and passing those off to more specialized methods.
        doxygen = etree.parse(open(filepath)).getroot()
        for compounddef in doxygen:
            if compounddef.tag != 'compounddef':
                continue

            for sectiondef in compounddef:
                if sectiondef.tag != 'sectiondef':
                    continue

                # Section type: enum, define, etc.
                kind = sectiondef.attrib['kind']
                if kind == 'define':
                    self._parse_defines(sectiondef)
                elif kind == 'enum':
                    self._parse_enums(sectiondef)
                elif kind == 'typedef':
                    self._parse_typedefs(sectiondef)
                elif kind == 'user-defined':
                    self._parse_functions(sectiondef)

    def _convert_type(self, type_name):
        if type_name in self.typealiases:
            return type_name
        return SCIPXMLParser.TYPE_MAP[type_name]

    def _parse_enums(self, node):
        # <memberdef kind="enum">
        #     <name>SCIP_Retcode</name>
        #     <enumvalue>
        #         <name>SCIP_OKAY</name>
        #         <initializer>=  +1</initializer>
        #     </enumvalue>
        #     ...
        # </memberdef>
        for memberdef in node:
            if memberdef.tag != 'memberdef':
                continue
            
            enum_name = None          # e.g. SCIP_Retcode
            enum_vals = OrderedDict() # {'SCIP_OKAY': 1, ...}

            for child in memberdef:
                if child.tag == 'name':
                    # Name of enum
                    enum_name = child.text

                elif child.tag == 'enumvalue':
                    # Names and values of constants in enum
                    name = initializer = None
                    for valnode in child:
                        if valnode.tag == 'name':
                            name = valnode.text
                        elif valnode.tag == 'initializer':
                            initializer = valnode.text.replace('=', '').strip()

                    enum_vals[name] = initializer

            self.enums[enum_name] = enum_vals

    def _parse_defines(self, node):
        # <memberdef kind="define">
        #     <name>SCIP_Bool</name>
        #     <initializer>unsigned int</initializer>
        # </memberdef>
        for memberdef in node:
            if memberdef.tag != 'memberdef':
                continue
            
            define_name = None # e.g. SCIP_Bool

            for child in memberdef:
                if child.tag == 'name':
                    # Name of define
                    define_name = child.text

                elif child.tag == 'initializer':
                    # Known C types are treated as typealiases, while defines 
                    # with numbers or strings are treated as constants.
                    t = child.text
                    if t is None:
                        continue

                    if t in SCIPXMLParser.TYPE_MAP:
                        if define_name not in self.typealiases:
                            self.typealiases[define_name] = SCIPXMLParser.TYPE_MAP[t]

                    elif t.isdigit() or (t.startswith('"') and t.endswith('"')) \
                                     or (t.startswith("'") and t.endswith("'")):
                        if define_name not in self.defines:
                            self.defines[define_name] = t


    def _parse_typedefs(self, node):
        # <memberdef kind="typedef">
        #     <type>enum <ref kindref="member">SCIP_Retcode</ref></type>
        #     <name>SCIP_RETCODE</name>
        # </memberdef>
        for memberdef in node:
            if memberdef.tag != 'memberdef':
                continue
            
            type_ref = type_name = None

            for child in memberdef:
                if child.tag == 'name':
                    type_name = child.text

                elif child.tag == 'type':
                    # enum SCIP_Retcode
                    if child.text.startswith('enum'):
                        for ref in child:
                            if ref.tag != 'ref':
                                continue
                            type_ref = ref.text

            if type_name is not None and type_ref is not None:
                self.typedefs[type_name] = type_ref

    def _parse_functions(self, node):
        # <memberdef kind="function">
        #     <type><ref>SCIP_Bool</ref></type>
        #     <name>SCIPisTransformed</name>
        #     <param>
        #         <type><ref>SCIP</ref> **</type>
        #         <declname>scip</declname>
        #     </param>
        # </memberdef>
        for memberdef in node:
            if memberdef.tag != 'memberdef':
                continue
            
            ret_type = None
            func_name = None
            arg_types = [] # such as Int or PtrPtrSCIP
            arg_names = [] # such as scip
            arg_vals = []  # such as scip[1]

            for child in memberdef:
                if child.tag == 'type':
                    try:
                        ret_type = self._convert_type(' '.join(s.strip() for s in child.itertext()))
                    except KeyError:
                        print 'UNKNOWN RET TYPE:', ret_type
                        ret_type = None

                elif child.tag == 'name':
                    func_name = child.text

                elif child.tag == 'param':

                    for param_child in child:
                        if param_child.tag == 'type':
                            # Construct type name from hierarchical XML.
                            type_name = ' '.join(s.strip() for s in param_child.itertext())
                            try:
                                arg_types.append(self._convert_type(type_name))
                            except KeyError:
                                print 'UNKNOWN ARG TYPE:', func_name, type_name
                                ret_type = None

                        elif param_child.tag == 'declname':
                            # Pull out var name and convert to forms like scip[1].
                            arg_names.append(param_child.text)
                            arg_vals.append(param_child.text) # TODO: scip[1]

            # Julia requires a , after a vector of one type: (PtrPtrSCIP,)
            if len(arg_types) == 1:
                if arg_types[0] == 'Void':
                    arg_types = ''
                else:
                    arg_types = '%s,' % arg_types[0]
            else:
                arg_types = ', '.join(arg_types)

            arg_names = ', '.join(arg_names)
            arg_vals = ', '.join(arg_vals)

            if ret_type is not None and func_name is not None:
                # We're only interested in functions that start with 'SCIP'.
                if not func_name.startswith('SCIP'):
                    continue

                # Separate out functions based on whether they return SCIP 
                # return codes or not. These are handled by diferrent macros.
                if ret_type == 'SCIP_RETCODE':
                    if func_name not in self.checked_functions:
                        self.checked_functions[func_name] = (ret_type, arg_types, arg_names, arg_vals)

                else:
                    if func_name not in self.unchecked_functions:
                        self.unchecked_functions[func_name] = (ret_type, arg_types, arg_names, arg_vals)

if __name__ == '__main__':
    try:
        xmldir, tmpldir, srcdir = sys.argv[1:]
    except:
        print 'usage: %s xml-dir template-dir src-dir' % sys.argv[0]
        sys.exit()

    # Parse each public header file into data structures for generating
    # the interface, then use those to convert templates into source.
    parser = SCIPXMLParser()
    for filename in os.listdir(xmldir):
        if not filename.endswith('_8h.xml'):
            continue
        if not (filename in ('def_8h.xml', 'scip_8h.xml') or \
                filename.startswith('pub__') or filename.startswith('type__')):
            continue

        # if filename != 'def_8h.xml':
        #     continue
        #if filename != 'scip_8h.xml':
        #    continue
        parser.parse(os.path.join(xmldir, filename))

    # Template -> src conversion.
    for filename in os.listdir(tmpldir):
        with open(os.path.join(srcdir, filename), 'w') as outfile:
            with open(os.path.join(tmpldir, filename)) as infile:
                template = Template(infile.read())
                outfile.write(template.render(parser=parser))
