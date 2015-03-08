package main

func (info *SCIPInfo) AddTypeAlias(name, cinit, jlinit string) {
	// Have we seen this define before?
	if _, ok := info.typealiases[name]; ok {
		return
	}

	// Prepend SCIP types with _.
	finalName := SCIPName(name)
	jlinit = SCIPName(jlinit)

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
	var cinit string
	if len(member.Type.Ref) > 0 {
		cinit = member.Type.Ref[len(member.Type.Ref)-1]
	}
	if cinit != "" {
		info.AddTypeAlias(member.Name, cinit, cinit)
	}
}
