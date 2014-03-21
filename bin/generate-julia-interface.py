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
    def __init__(self):
        self.enums    = OrderedDict() # {SCIP_Retcode: {SCIP_OKAY: 1, ...}, ...}
        self.typedefs = OrderedDict() # {SCIP_Retcode: SCIP_RETCODE}

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

                if sectiondef.attrib['kind'] == 'enum':
                    self._parse_enums(sectiondef)
                elif sectiondef.attrib['kind'] == 'typedef':
                    self._parse_typedefs(sectiondef)

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

        # if filename != 'type__expr_8h.xml':
        #     continue
        parser.parse(os.path.join(xmldir, filename))

    # Template -> src conversion.
    for filename in os.listdir(tmpldir):
        with open(os.path.join(srcdir, filename), 'w') as outfile:
            with open(os.path.join(tmpldir, filename)) as infile:
                template = Template(infile.read())
                outfile.write(template.render(parser=parser))
