# SCIP typedefs
{% for type_name, type_ref in parser.typedefs.items() %}
typealias _{{ type_name }} _{{ type_ref }}{% endfor %}