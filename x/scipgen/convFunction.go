package main

import (
	"fmt"
	"strings"
)

func getOrigType(typeStr, refStr string) string {
	return strings.TrimSpace(fmt.Sprintf("%s %s", refStr, typeStr))
}

func getFinalType(typeStr string) string {
	numStar := strings.Count(typeStr, "*")
	typeStr = strings.Replace(typeStr, "*", "", -1)

	if jlType, ok := TYPE_MAP[typeStr]; ok {
		typeStr = jlType
	}

	if strings.HasPrefix(typeStr, "SCIP") {
		// TODO: record type alias
		typeStr = "_" + typeStr
	}

	for ; numStar > 0; numStar-- {
		typeStr = fmt.Sprintf("Ptr{%s}", typeStr)
	}

	return typeStr
}

func (info *SCIPInfo) ConvertFunction(member MemberDef) {
	// Have we seen this define before?
	if _, ok := info.functions[member.Name]; ok {
		return
	}

	// Convert return argument
	var retType InfoParamType
	retType.OrigType = getOrigType(member.Type.TypeStr, member.Type.Ref)
	retType.FinalType = getFinalType(retType.OrigType)

	// Convert function parameters
	var params []InfoParamType
	for _, p := range member.Params {
		var newParam InfoParamType
		newParam.OrigType = getOrigType(p.Type.TypeStr, p.Type.Ref)
		newParam.FinalType = getFinalType(newParam.OrigType)
		newParam.OrigName = p.DeclName
		newParam.Description = strings.TrimSpace(
			strings.Replace(p.BriefDescription.Para, `"`, `\"`, -1),
		)

		if _, ok := JULIA_BUILTINS[p.DeclName]; ok {
			newParam.FinalName = p.DeclName + "Var"
		} else {
			newParam.FinalName = p.DeclName
		}

		params = append(params, newParam)
	}

	// Construct into a function type
	var newFunc InfoFunction
	newFunc.ReturnType = retType
	newFunc.Arguments = params
	newFunc.OrigName = member.Name
	newFunc.FinalName = "_" + member.Name
	newFunc.Description = strings.TrimSpace(
		strings.Replace(member.DetailedDescription.Para, `"`, `\"`, -1),
	)

	if newFunc.IsChecked() {
		info.CheckedFunctions = append(info.CheckedFunctions, newFunc)
	} else {
		info.UncheckedFunctions = append(info.UncheckedFunctions, newFunc)
	}
}
