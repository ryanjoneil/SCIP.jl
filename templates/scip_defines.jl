# SCIP defines for character, string, and numeric constants
{% for def_name, def_ref in parser.defines.items() %}const {{ def_name }} = {{ def_ref }}
{% endfor %}
# SCIP defines for known C types and pointers to SCIP structs.
{% for def_name, def_ref in parser.typealiases.items() %}typealias {{ def_name }} {{ def_ref }}
{% endfor %}