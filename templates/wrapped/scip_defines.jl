# SCIP defines for character, string, and numeric constants
export {{ exportDefines . }}{{ range .Defines }}
const {{ .FinalName }} = {{ .JlInit }}{{ end }}
