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

        <memberdef kind="function">
        	<type><ref>SCIP_PRICERDATA</ref> *</type>
        	<name>SCIPpricerGetData</name>
        	<param>
          		<type><ref>SCIP_PRICER</ref> *</type>
          		<declname>pricer</declname>
          		<briefdescription>
          			<para>variable pricer</para>
          		</briefdescription>
        	</param>
        	<detaileddescription>
				<para>gets user data of variable pricer</para>
			</detaileddescription>
      </memberdef>
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
	// Universal fields
	Kind string `xml:"kind,attr"`
	Name string `xml:"name"`

	DetailedDescription struct {
		Para string `xml:"para"`
	} `xml:"detaileddescription"`

	// Fields for defines and enums
	Initializer string      `xml:"initializer"`
	EnumValues  []EnumValue `xml:"enumvalue"`

	// Fields for functions
	Type struct {
		Ref     string `xml:"ref"`
		TypeStr string `xml:",chardata"`
	} `xml:"type"`

	Params []struct {
		Type struct {
			Ref     string `xml:"ref"`
			TypeStr string `xml:",chardata"`
		} `xml:"type"`

		DeclName string `xml:"declname"`

		BriefDescription struct {
			Para string `xml:"para"`
		} `xml:"briefdescription"`
	} `xml:"param"`
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
