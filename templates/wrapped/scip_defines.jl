# SCIP defines for character, string, and numeric constants
export {{ exportDefines . }}{{ range .Defines }}
const {{ .FinalName }} = {{ .JlInit }}{{ end }}

export {{ exportSCIPTypes . }}
abstract SCIPType
export SCIPType
{{ range $name, $value := .SCIPTypes }}type {{ $name }} <: SCIPType end
{{ end }}
