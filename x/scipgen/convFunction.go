package main

import (
	"fmt"
	"strings"
)

func (info *SCIPInfo) getOrigType(typeStr, refStr string) string {
	// If we have a refStr and a typeStr with something other than *,
	// such as ["EXTERN", "size_t"], then our type should just be
	// the typeStr.
	typeStr = strings.Replace(typeStr, "*const", "*", 1)
	typeStr = strings.Replace(typeStr, " const", "", 1)
	typeStr = strings.TrimSpace(typeStr)
	refStr = strings.TrimSpace(refStr)

	var fullType string
	if strings.Replace(typeStr, "*", "", -1) != "" && refStr != "" {
		fullType = typeStr
	} else {
		fullType = strings.TrimSpace(fmt.Sprintf("%s %s", refStr, typeStr))
	}

	return fullType
}

func (info *SCIPInfo) getFinalType(typeStr string) string {
	numStar := strings.Count(typeStr, "*")
	typeStr = strings.TrimSpace(strings.Replace(typeStr, "*", "", -1))

	// Trim off const modifiers.
	if strings.HasSuffix(typeStr, " const") {
		typeStr = strings.Replace(typeStr, " const", "", -1)
	}

	if jlType, ok := TYPE_MAP[typeStr]; ok {
		typeStr = jlType
	}

	typeStr = SCIPName(typeStr)

	// Record types that start with SCIP so we can declare them later
	if strings.HasPrefix(typeStr, "_SCIP") {
		info.SCIPTypes[typeStr] = true
	}

	for ; numStar > 0; numStar-- {
		typeStr = fmt.Sprintf("Ptr{%s}", typeStr)
	}

	if typeStr == "" {
		typeStr = "Void"
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
	if len(member.Type.Ref) > 0 {
		retType.OrigType = info.getOrigType(
			member.Type.TypeStr,
			member.Type.Ref[len(member.Type.Ref)-1],
		)
	}
	retType.FinalType = info.getFinalType(retType.OrigType)

	// Convert function parameters
	var params []InfoParamType
	if len(member.Params) == 1 && member.Params[0].Type.TypeStr == "void" {
		// No parameters
	} else {
		for _, p := range member.Params {
			// Catch void parameter lists.
			var newParam InfoParamType
			if len(p.Type.Ref) > 0 {
				newParam.OrigType = info.getOrigType(
					p.Type.TypeStr,
					p.Type.Ref[len(p.Type.Ref)-1],
				)
			}
			newParam.FinalType = info.getFinalType(newParam.OrigType)
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
	}

	// Construct into a function type
	var newFunc InfoFunction
	newFunc.ReturnType = retType
	newFunc.Arguments = params
	newFunc.OrigName = member.Name
	newFunc.FinalName = SCIPName(member.Name)
	newFunc.Description = strings.TrimSpace(
		strings.Replace(member.DetailedDescription.Para, `"`, `\"`, -1),
	)

	if !newFunc.ParsedOK() {
		return
	}

	if newFunc.IsChecked() {
		info.CheckedFunctions = append(info.CheckedFunctions, newFunc)
	} else {
		info.UncheckedFunctions = append(info.UncheckedFunctions, newFunc)
	}
}
