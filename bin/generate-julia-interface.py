#!/usr/bin/env python2.7
from collections import OrderedDict
from jinja2 import Template
from lxml import etree
import os
import sys
import time

# TODO: add xml dir to source

def log(msg):
    print '[%s] %s' % (time.asctime(), msg)

class SCIPXMLParser(object):
    # Mapping of C types to Julia types
    TYPE_MAP = {
        'SCIP_Longint': 'Int64',
        'const char *': 'String',
        'double':       'Float64',
        'int':          'Int',
        'unsigned int': 'Uint',
        'void':         'Void',
    }

    # Set of variable names on the C side that will cause errors if they 
    # are used in Julia. These will get replaced with something else.
    JULIA_BUILTINS = set(['global', 'local', 'type'])

    def __init__(self):
        self.typealiases = OrderedDict() # {SCIP_Bool: Uint, ...}
        self.defines  = OrderedDict()    # {TRUE: 1, ...}
        self.enums    = OrderedDict()    # {SCIP_Retcode: {SCIP_OKAY: 1, ...}, ...}
        self.typedefs = OrderedDict()    # {SCIP_Retcode: SCIP_RETCODE}

        self.checked_functions = OrderedDict()   # {SCIPversion: (SCIP_Real, ...)}
        self.unchecked_functions = OrderedDict() # {SCIPcreate: (SCIP_Retcode, ...}}

        self.scip_types = OrderedDict() # {SCIP: ([constructors], destructor)}

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

        # Sanity check: typedefs are for enums and should not reappear
        # in the typealiases section. This might happend depending on
        # on the order types are found.
        for tn in self.typedefs:
            try:
                del self.typealiases[tn]
            except KeyError:
                pass

    def _convert_type(self, type_name):
        type_name = type_name.strip()
    
        if type_name in SCIPXMLParser.TYPE_MAP:
            return SCIPXMLParser.TYPE_MAP[type_name]

        elif type_name in self.typedefs:
            return type_name

        elif type_name in self.typealiases:
            return type_name

        elif type_name.startswith('SCIP') :
            if type_name.endswith('*'):
                return 'Ptr{%s}' % self._convert_type(type_name[:-1])

            elif type_name.replace('_', '').isalnum():
                if type_name not in self.typealiases:
                    self.typealiases[type_name] = 'Void'
                return type_name

        raise KeyError('type unknown: %r' % type_name)

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
            arg_types = [] # such as Int or Ptr{SCIP}
            arg_names = [] # such as scip
            arg_vals = []  # such as scip[1]

            for child in memberdef:
                if child.tag == 'type':
                    ret_type = ' '.join(s.strip() for s in child.itertext())

                elif child.tag == 'name':
                    func_name = child.text

                elif child.tag == 'param':

                    for param_child in child:
                        if param_child.tag == 'type':
                            # Construct type name from hierarchical XML.
                            arg_types.append(' '.join(s.strip() for s in param_child.itertext()))

                        elif param_child.tag == 'declname':
                            # Pull out var name and convert to forms like scip[1].
                            t = param_child.text
                            if t in SCIPXMLParser.JULIA_BUILTINS:
                                t += 'Var'
                            arg_names.append(t)
                            arg_vals.append(t)

            #print ret_type, func_name, arg_types, arg_names, arg_vals

            # We're only interested in functions that start with 'SCIP'.
            if None in (ret_type, func_name) or not func_name.startswith('SCIP'):
                continue

            orig_arg_names = list(arg_names)

            # Convert function name and values in signature to use type.
            for i, (at, an, av) in enumerate(zip(arg_types, arg_names, arg_vals)):
                if at in SCIPXMLParser.TYPE_MAP:
                    continue

                # Convert from scip to pointer(scip) or array(scip)
                if at.endswith(' **'):
                    av = 'array(%s)' % av
                elif at.endswith(' *'):
                    av = 'pointer(%s)' % av
                arg_vals[i] = av

                # Convert from scip to scip::SCIP_t
                is_pointer = at.endswith('*')
                at = at.rstrip('*').strip()
                if at.startswith('SCIP'):
                    if is_pointer:
                        at = '%s_t' % at
                    arg_names[i] = '%s::%s' % (an, at)
                
            # Convert function signature components to Julia types & names.
            try:
                orig_arg_types = list(arg_types)
                ret_type = self._convert_type(ret_type)
                arg_types = [self._convert_type(tn) for tn in arg_types]
            except KeyError:
                #raise
                continue

            # Detect constructors. We will write convenience functions for these.
            if func_name.startswith('SCIPcreate'):
                if func_name == 'SCIPcreate':
                    # We know everything about this function a priori.
                    inst_name = orig_arg_names[0]
                    mod_arg_names = list(arg_names[1:])
                    self.scip_types['SCIP'] = [
                        [(func_name, inst_name, mod_arg_names, orig_arg_names)], # Constructors
                        None                                                     # Destructor
                    ]

                elif len(orig_arg_types) > 1 and orig_arg_types[1].endswith('**'):
                    # The first argument 
                    print func_name, arg_names, arg_types

            # Detect destructors for the same reason.
            if func_name.startswith('SCIPfree'):
                if func_name == 'SCIPfree':
                    # We know everything about this function a priori.
                    self.scip_types['SCIP'][1] = (func_name, arg_names, orig_arg_names)

                elif len(orig_arg_types) > 1 and orig_arg_types[1].endswith('**'):
                    # The first argument 
                    print func_name, arg_names, arg_types                

            if len(arg_types) == 1 and arg_types[0] == 'Void':
                arg_types = []

            if ret_type == 'SCIP_RETCODE':
                # Separate out functions based on whether they return SCIP 
                # return codes or not. These are handled by diferrent macros.
                if func_name not in self.checked_functions:
                    self.checked_functions[func_name] = (arg_types, arg_names, arg_vals)

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
