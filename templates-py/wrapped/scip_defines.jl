# SCIP defines for character, string, and numeric constants
export {{ parser.defines.keys()|scipname|join(', ') }}
{% for def_name, def_ref in parser.defines.items() %}const {{ def_name|scipname }} = {{ def_ref }}
{% endfor %}
# SCIP defines for known C types and pointers to SCIP structs.
export {{ parser.typealiases.keys()|scipname|join(', ') }}
abstract SCIPType
export SCIPType
{% for def_name, def_ref in parser.typealiases.items() %}{% if def_ref == 'Void' %}type {{ def_name|scipname }} <: SCIPType end{% else %}typealias {{ def_name|scipname }} {{ def_ref }}{% endif %}
{% endfor %}