# SCIP typedefs
export {{ parser.typedefs.keys()|scipname|join(', ') }}
{% for type_name, type_ref in parser.typedefs.items() %}
typealias {{ type_name|scipname }} {{ type_ref|scipname }}{% endfor %}