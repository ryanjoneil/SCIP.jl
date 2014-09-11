# function SCIPcreate()
#     s = SCIP_t(Array(Ptr{SCIP}, 1))
#     SCIPcreate(s)
#     finalizer(s, s->SCIPfree(s))
#     return s
# end

# Convenience constructors/destructors
{% for type_name, (constructors, destructor) in parser.WRAPPED_TYPES.items() %}{% for constructor in constructors %}{% set sig = parser.checked_functions[constructor] %}{% set arg_types = sig[1] %}{% set arg_names = sig[2] %}{% if type_name == 'SCIP' %}function {{ constructor }}()
    scip = SCIP_t(Array(Ptr{_SCIP}, 1))
    {{ constructor|scipname }}(scip)
    finalizer(scip, scip->{{ destructor|scipname }}(scip))
    return scip
end
{% else %}{% set arg_types2 = [arg_types[0]] + arg_types[2:] %}{% set orig_arg_names = parser.checked_functions_orig[constructor] %}{% set instance_var = orig_arg_names[1] %}function {{ constructor }}({{ arg_types2|scipname|join(', ') }})
    {{ instance_var }} = {{ type_name }}_t({{ 'Array(Ptr{%s}, 1)'|format(type_name|scipname) }})
    {{ constructor|scipname }}({{ orig_arg_names|join(', ') }})
    # TODO: figure out why this causes an exception.
    #finalizer({{ instance_var }}, {{ instance_var }}->{{ destructor }}({{ orig_arg_names[:2]|join(', ') }}))
    return {{ instance_var }}
end
{% endif %}
{% endfor %}{% endfor %}
