package main

import (
	"strings"
)

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

	if strings.HasPrefix(jlinit, "SCIP") {
		jlinit = "_" + jlinit
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

func (info *SCIPInfo) ConvertTypedef(member MemberDef) {
	cinit := member.Type.Ref
	if cinit != "" {
		info.AddTypeAlias(member.Name, cinit, cinit)
	}
}
