package main

import (
	"fmt"
	"strings"
)

func (info *SCIPInfo) getOrigType(typeStr string, ref []string) string {
	// If we have a refStr and a typeStr with something other than *,
	// such as ["EXTERN", "size_t"], then our type should just be
	// the typeStr.
	s := []string{}
	for _, r := range ref {
		r = strings.TrimSpace(r)
		if r != "" {
			s = append(s, r)
		}
	}
	typeStr = strings.TrimSpace(typeStr)
	if typeStr != "" {
		s = append(s, typeStr)
	}

	return strings.Join(s, " ")
}

func (info *SCIPInfo) getFinalType(typeStr string) string {
	// Strip off erronous "..." at end.
	typeStr = strings.TrimSpace(strings.TrimSuffix(typeStr, "..."))

	// Types of the form "SCIP_DECL_BRANCHCOPY ((*branchcopy))" have embedded
	// macros and can't be parsed yet.
	if strings.Contains(typeStr, "((") {
		return ""
	}

	// Strip "EXTERN" off the start.
	typeStr = strings.TrimPrefix(typeStr, "EXTERN ")

	// Strip "const" off the right of types like "int *const" and the left
	// of types like "const char *".
	typeStr = strings.TrimPrefix(typeStr, "const ")
	typeStr = strings.TrimSuffix(typeStr, "const")
	typeStr = strings.TrimSpace(typeStr)

	// See if this is a known type.
	if jlType, ok := TYPE_MAP[typeStr]; ok {
		return jlType
	}

	numStar := 0
	for strings.HasSuffix(typeStr, "*") {
		numStar += 1
		typeStr = strings.TrimSuffix(typeStr, "*")
	}
	typeStr = strings.TrimSpace(typeStr)

	// See if this is a known type without its *'s at the end.
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

	return typeStr
}

func (info *SCIPInfo) ConvertFunction(member MemberDef) {
	// Have we seen this define before?
	if _, ok := info.functions[member.Name]; ok {
		return
	}

	// Convert return argument
	var retType InfoParamType
	retType.OrigType = info.getOrigType(member.Type.TypeStr, member.Type.Ref)
	retType.FinalType = info.getFinalType(retType.OrigType)

	// Convert function parameters
	var params []InfoParamType
	if len(member.Params) == 1 && member.Params[0].Type.TypeStr == "void" {
		// No parameters
	} else {
		for _, p := range member.Params {
			// Catch void parameter lists.
			var newParam InfoParamType
			newParam.OrigType = info.getOrigType(p.Type.TypeStr, p.Type.Ref)
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
