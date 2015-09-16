package main

import "strings"

// Mapping of standard C types to Julia types.
var TYPE_MAP = map[string]string{
	"SCIP_Longint": "Int64",
	"char":         "Char",
	"char *":       "Ptr{Uint8}",
	"double":       "Float64",
	"int":          "Int",
	"unsigned int": "Uint",
	"void":         "Void",
}

// Things that variables should not be named.
var JULIA_BUILTINS = map[string]bool{
	"begin":  true,
	"end":    true,
	"global": true,
	"local":  true,
	"type":   true,
}

type InfoEnumValue struct {
	OrigName    string // e.g. SCIP_STATUS_UNKNOWN
	FinalName   string // e.g. _SCIP_STATUS_UNKNOWN
	Init        int    // integer value
	Description string
}

type InfoParamType struct {
	OrigType    string // e.g. SCIP_Var *
	FinalType   string // e.g. Ptr{_SCIP_Var}
	OrigName    string // e.g. global
	FinalName   string // e.g. globalVar
	Description string
}

type InfoFunction struct {
	ReturnType  InfoParamType
	Arguments   []InfoParamType
	OrigName    string // e.g. SCIPpricerGetData
	FinalName   string // e.g. _SCIPpricerGetData
	Description string
}

func (f InfoFunction) IsChecked() bool {
	return f.ReturnType.OrigType == "SCIP_RETCODE" ||
		f.ReturnType.OrigType == "SCIP_Retcode"
}

func (f InfoFunction) ParsedOK() bool {
	// Makes sure the function data was parsed successfully and we
	// render it into Julia. This excludes things like macro calls
	// inside the argument list.
	for _, a := range f.Arguments {
		if a.FinalType == "" || a.FinalName == "" {
			return false
		}
	}
	return true
}

func SCIPName(name string) string {
	if strings.HasPrefix(name, "SCIP") {
		return "_" + name
	}
	return name
}

// SCIPInfo contains the relevant data for rendering SCIP.jl template code,
// in a more convenient format than the parsed Doxygen XML.
type SCIPInfo struct {
	Defines []struct {
		OrigName  string // name of #define in C
		FinalName string // name of const in Julia
		CInit     string // initializer in C
		JlInit    string // initializer in Julia
	}

	Enums []struct {
		OrigName  string // e.g. SCIP_Status
		FinalName string // e.g. _SCIP_Status
		Values    []InfoEnumValue
	}

	CheckedFunctions   []InfoFunction
	UncheckedFunctions []InfoFunction

	TypeAliases []struct {
		OrigName  string // original name of #define
		FinalName string // prepends _ if necessary
		CInit     string // initializer in C
		JlInit    string // initializer in Julia
	}

	SCIPTypes map[string]bool // SCIP types that we see in function calls

	defines     map[string]bool // true if we've already seen a define
	enums       map[string]bool // true if we've already seen an enum
	functions   map[string]bool // true if we've already seen a function
	typealiases map[string]bool // true if we've already seen a typealias
}

// NewSCIPInfo constructs a SCIPInfo instance and initializes its maps.
func NewSCIPInfo() *SCIPInfo {
	return &SCIPInfo{
		SCIPTypes:   make(map[string]bool),
		defines:     make(map[string]bool),
		enums:       make(map[string]bool),
		functions:   make(map[string]bool),
		typealiases: make(map[string]bool),
	}
}

// Convert additively converts a Doxygen struct
func (info *SCIPInfo) Convert(doxygen *Doxygen) {
	for _, section := range doxygen.CompoundDef.SectionDefs {
		for _, member := range section.MemberDefs {
			if member.Kind != "function" && member.Kind != section.Kind {
				continue
			}
			if member.Kind == "function" &&
				!(section.Kind == "func" || section.Kind == "user-defined") {
				continue
			}

			switch member.Kind {
			case "define":
				info.ConvertDefine(member)
			case "enum":
				info.ConvertEnum(member)
			case "function":
				info.ConvertFunction(member)
			case "typedef":
				info.ConvertTypedef(member)
			}
		}
	}

	// Remove anything from SCIPTypes that is an enum or typedef.
	for _, e := range info.Enums {
		delete(info.SCIPTypes, e.FinalName)
	}
	for _, d := range info.Defines {
		delete(info.SCIPTypes, d.FinalName)
	}
	for _, t := range info.TypeAliases {
		delete(info.SCIPTypes, t.FinalName)
	}
}
