# SCIP defines
{% for def_name, def_ref in parser.defines.items() %}
typealias {{ def_name }} {{ def_ref }}{% endfor %}