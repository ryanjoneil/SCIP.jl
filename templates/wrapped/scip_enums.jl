# SCIP enums
{{ range .Enums }}export {{ .FinalName }}, {{ range .Values }}{{ .FinalName }}, {{ end }}{{ .OrigName }}_MAP
typealias {{ .FinalName }} Int8
{{ range .Values }}const {{ .FinalName }} = int8({{ .Init }})
{{ end }}
const {{ .OrigName }}_MAP = [
{{ range .Values }}    {{ .FinalName }} => "{{ .Description }}",
{{ end }}]

{{ end }}
