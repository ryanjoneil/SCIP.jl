# SCIP defines for character, string, and numeric constants
export {{ exportDefines . }}{{ range .Defines }}
const {{ .Name }} = {{ .JlInit }}{{ end }}

# SCIP defines that are processed as type aliases
export {{ exportTypeAliases . }}{{ range .TypeAliases }}
typealias {{ .FinalName }} {{ .JlInit }}{{ end }}