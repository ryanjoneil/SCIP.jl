package main

import (
	"strconv"
	"strings"
)

func (info *SCIPInfo) AddDefine(name, cinit, jlinit string) {
	// Have we seen this define before?
	if _, ok := info.defines[name]; ok {
		return
	}

	finalName := name
	if strings.HasPrefix(finalName, "SCIP") {
		finalName = "_" + finalName
	}

	info.defines[name] = true
	info.Defines = append(info.Defines, struct {
		OrigName  string
		FinalName string
		CInit     string
		JlInit    string
	}{
		OrigName:  name,
		FinalName: finalName,
		CInit:     cinit,
		JlInit:    jlinit,
	})
}

func (info *SCIPInfo) AddTypeAlias(name, cinit, jlinit string) {
	// Have we seen this define before?
	if _, ok := info.typealiases[name]; ok {
		return
	}

	// Prepend SCIP types with _.
	finalName := name
	if strings.HasPrefix(name, "SCIP") {
		finalName = "_" + name
	}

	info.typealiases[name] = true
	info.TypeAliases = append(info.TypeAliases, struct {
		OrigName  string
		FinalName string
		CInit     string
		JlInit    string
	}{
		OrigName:  name,
		FinalName: finalName,
		CInit:     cinit,
		JlInit:    jlinit,
	})
}

func (info *SCIPInfo) ConvertDefine(member MemberDef) {
	// First question: is it a known C type with a Julia mapping?
	cinit := member.Initializer
	jlinit := cinit
	if mapping, ok := TYPE_MAP[cinit]; ok {
		info.AddTypeAlias(member.Name, cinit, mapping)
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
		save = true
	}

	if save {
		info.AddDefine(member.Name, cinit, jlinit)
	}
}
