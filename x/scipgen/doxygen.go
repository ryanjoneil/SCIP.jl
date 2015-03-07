package main

import (
	"encoding/xml"
	"fmt"
	"io/ioutil"
)

// Structures parsed out of SCIP Doxygen XML, along with other useful
// things like C -> Julia type mappings.

// Example XML:
/*
<doxygen>
    <compounddef>
        <sectiondef kind="define|typedef">
            <memberdef kind="define">
                <name>SCIP_Bool</name>
                <initializer>unsigned int</initializer>
      		</memberdef>
        </sectiondef>

        <sectiondef kind="enum">
            <memberdef kind="enum">
                <name>SCIP_Status</name>
        		<enumvalue>
 		        	<name>SCIP_STATUS_UNKNOWN</name>
          			<initializer>=  0</initializer>
          			<detaileddescription>
          				<para>the solving status is not yet known</para>
          			</detaileddescription>
        		</enumvalue>
      		</memberdef>
        </sectiondef>

        <sectiondef kind="typedef">
        </sectiondef>
    </compounddef>
</doxygen>
*/
type EnumValue struct {
	Name                string `xml:"name"`
	Initializer         string `xml:"initializer"`
	DetailedDescription struct {
		Para string `xml:"para"`
	} `xml:"detaileddescription"`
}
type MemberDef struct {
	Kind        string      `xml:"kind,attr"`
	Name        string      `xml:"name"`
	Initializer string      `xml:"initializer"`
	EnumValues  []EnumValue `xml:"enumvalue"`
}
type Doxygen struct {
	CompoundDef struct {
		SectionDefs []struct {
			Kind       string      `xml:"kind,attr"`
			MemberDefs []MemberDef `xml:"memberdef"`
		} `xml:"sectiondef"`
	} `xml:"compounddef"`
}

func Parse(path string) (*Doxygen, error) {
	contents, err := ioutil.ReadFile(path)
	if err != nil {
		return nil, fmt.Errorf("unable to read file %s: %v\n", path, err)
	}

	var scipCDef Doxygen
	err = xml.Unmarshal(contents, &scipCDef)
	if err != nil {
		return nil, fmt.Errorf("unable to parse xml file %s: %v\n", path, err)
	}

	return &scipCDef, nil
}
