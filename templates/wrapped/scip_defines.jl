# SCIP defines for character, string, and numeric constants
export {{ exportDefines . }}{{ range .Defines }}
const {{ .Name }} = {{ .JlInit }}{{ end }}
