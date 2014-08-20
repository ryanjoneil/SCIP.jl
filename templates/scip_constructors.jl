# # Convenience constructors/destructors
# {% for type_name, (constructors, (de_func_name, de_arg_names, de_orig_arg_names)) in parser.scip_types.items() %}{% for co_func_name, co_inst_name, co_mod_arg_names, co_orig_arg_names in constructors %}function {{ co_func_name }}({{ co_mod_arg_names|join(', ') }})
#     {{ co_inst_name }} = {{ type_name }}_t({{ 'Array(Ptr{%s}, 1)'|format(type_name) }})
#     {{ co_func_name }}({{ co_orig_arg_names|join(', ') }})
#     finalizer({{ co_inst_name }}, {{ co_inst_name }}->{{ de_func_name }}({% if de_orig_arg_names|length > 1 %}{{ de_orig_arg_names[0] }}, {% endif %}{{ co_inst_name }}))
#     return {{ type_name|lower }}
# end
# {% endfor %}{% endfor %}

# TODO: construction/destruction
function SCIPcreate()
    s = SCIP_t(Array(Ptr{SCIP}, 1))
    SCIPcreate(s)
    finalizer(s, s->SCIPfree(s))
    return s
end
