package main

import (
	"strconv"
	"strings"
)

func (info *SCIPInfo) ConvertEnum(member MemberDef) {
	// Have we seen this define before?
	if _, ok := info.enums[member.Name]; ok {
		return
	}

	// Convert values structure
	var values []InfoEnumValue
	for _, enumVal := range member.EnumValues {
		i, _ := strconv.Atoi(strings.TrimSpace(
			strings.Replace(enumVal.Initializer, "=", "", 1),
		))

		// Fix any errant formatting on description
		desc := strings.TrimSpace(enumVal.DetailedDescription.Para)
		desc = strings.Replace(desc, `"`, `\"`, -1)

		values = append(values, InfoEnumValue{
			OrigName:    enumVal.Name,
			FinalName:   "_" + enumVal.Name,
			Init:        i,
			Description: desc,
		})
	}

	info.enums[member.Name] = true
	info.Enums = append(info.Enums, struct {
		OrigName  string // e.g. SCIP_Status
		FinalName string // e.g. _SCIP_Status
		Values    []InfoEnumValue
	}{
		OrigName:  member.Name,
		FinalName: "_" + member.Name,
		Values:    values,
	})
}
