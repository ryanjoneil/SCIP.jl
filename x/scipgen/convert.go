package main

import (
	"strconv"
	"strings"
)

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

// SCIPInfo contains the relevant data for rendering SCIP.jl template code,
// in a more convenient format than the parsed Doxygen XML.
type SCIPInfo struct {
	Defines []struct {
		Name   string // name of #define
		CInit  string // initializer in C
		JlInit string // initializer in Julia
	}

	defines map[string]bool // true if we've already seen a define
}

// NewSCIPInfo constructs a SCIPInfo instance and initializes its maps.s
func NewSCIPInfo() *SCIPInfo {
	return &SCIPInfo{
		defines: make(map[string]bool),
	}
}

func (info *SCIPInfo) AddDefine(name, cinit, jlinit string) {
	// Have we seen this define before?
	if _, ok := info.defines[name]; ok {
		return
	}

	info.defines[name] = true
	info.Defines = append(info.Defines, struct {
		Name   string
		CInit  string
		JlInit string
	}{
		Name:   name,
		CInit:  cinit,
		JlInit: jlinit,
	})
}

// Convert additively converts a Doxygen struct
func (info *SCIPInfo) Convert(doxygen *Doxygen) {
	for _, section := range doxygen.CompoundDef.SectionDefs {
		if section.Kind != "define" {
			continue
		}

		for _, member := range section.MemberDefs {
			if member.Kind != section.Kind {
				continue
			}

			// First question: is it a known C type with a Julia mapping?
			cinit := member.Initializer
			jlinit := cinit
			if mapping, ok := TYPE_MAP[cinit]; ok {
				info.AddDefine(member.Name, cinit, mapping)
			}

			// Now we test to see if we can parse it into a number or string.
			save := false

			// Is it a number?
			_, err := strconv.Atoi(cinit)
			if err == nil {
				save = true
			}

			_, err = strconv.ParseFloat(cinit, 64)
			if err == nil {
				save = true
			}

			// Or a string?
			if (strings.HasPrefix(cinit, `"`) && strings.HasSuffix(cinit, `"`)) ||
				(strings.HasPrefix(cinit, `'`) && strings.HasSuffix(cinit, `'`)) {
				// Julia uses `"` only, so get rid of `'`.
				jlinit = strings.Replace(jlinit, `'`, `"`, -1)
				save = true
			}

			if save {
				info.AddDefine(member.Name, cinit, jlinit)
			}
		}
	}
}
