package main

// Mapping of standard C types to Julia types.
var TYPE_MAP = map[string]string{
	"SCIP_Longint": "Int64",
	"char":         "Char",
	"const char *": "String",
	"double":       "Float64",
	"int":          "Int",
	"unsigned int": "Uint",
	"void":         "Void",
}

type InfoEnumValue struct {
	OrigName    string // e.g. SCIP_STATUS_UNKNOWN
	FinalName   string // e.g. _SCIP_STATUS_UNKNOWN
	Init        int    // integer value
	Description string
}

// SCIPInfo contains the relevant data for rendering SCIP.jl template code,
// in a more convenient format than the parsed Doxygen XML.
type SCIPInfo struct {
	Defines []struct {
		Name   string // name of #define
		CInit  string // initializer in C
		JlInit string // initializer in Julia
	}

	Enums []struct {
		OrigName  string // e.g. SCIP_Status
		FinalName string // e.g. _SCIP_Status
		Values    []InfoEnumValue
	}

	TypeAliases []struct {
		OrigName  string // original name of #define
		FinalName string // prepends _ if necessary
		CInit     string // initializer in C
		JlInit    string // initializer in Julia
	}

	defines     map[string]bool // true if we've already seen a define
	enums       map[string]bool // true if we've already seen an enum
	typealiases map[string]bool // true if we've already seen a typealias
}

// NewSCIPInfo constructs a SCIPInfo instance and initializes its maps.
func NewSCIPInfo() *SCIPInfo {
	return &SCIPInfo{
		defines:     make(map[string]bool),
		enums:       make(map[string]bool),
		typealiases: make(map[string]bool),
	}
}

// Convert additively converts a Doxygen struct
func (info *SCIPInfo) Convert(doxygen *Doxygen) {
	for _, section := range doxygen.CompoundDef.SectionDefs {
		for _, member := range section.MemberDefs {
			if member.Kind != section.Kind {
				continue
			}

			if member.Kind == "define" {
				info.ConvertDefine(member)
			}

			if member.Kind == "enum" {
				info.ConvertEnum(member)
			}
		}
	}
}
