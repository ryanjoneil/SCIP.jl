# SCIP defines that are processed as type aliases
export {{ exportTypeAliases . }}{{ range .TypeAliases }}
typealias {{ .FinalName }} {{ .JlInit }}{{ end }}
