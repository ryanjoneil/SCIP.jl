# SCIP typedefs
{% for type_name, type_ref in parser.typedefs.items() %}
typealias {{ type_name }} {{ type_ref }}{% endfor %}