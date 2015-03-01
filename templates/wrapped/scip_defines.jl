# SCIP defines for character, string, and numeric constants
export {{ exportDefines . }}{{ range $index, $define := .Defines }}
const {{ .Name }} = {{ .JlInit }}{{ end }}
