# TODO: exports
export SCIPcreate, SCIPgetStage, SCIPgetStatus, SCIPisTransformed, SCIPversion
import Base: pointer

# Macro for calling SCIP functions that return misc. types
macro scip_ccall(func, args...)
    return quote
        ccall(($func, "libscipopt"), $(args...))
    end
end

# Macro for calling SCIP functions that have checked return codes
macro scip_ccall_check(func, args...)
    return quote
        ret = ccall(($func, "libscipopt"), SCIP_RETCODE, $(args...))
        if ret != SCIP_OKAY
            error("SCIP Error: $ret")
        end
    end
end

# TODO: type creations
# type SCIP_t
#     array_ptr_scip::Array{Ptr{SCIP}}
# end

# # TODO: pointer methods
# array(scip::SCIP_t) = scip.array_ptr_scip
# pointer(scip::SCIP_t) = array(scip)[1]

# Containers for SCIP structures
{% for type_name in parser.scip_types %}type {{ type_name }}_t
    array_ptr_{{ type_name|lower }}::{{ 'Array{Ptr{%s}}'|format(type_name) }}
end{% endfor %}

# Pointer and array access functions
{% for type_name in parser.scip_types %}array({{ type_name|lower }}::{{ type_name }}_t) = {{ type_name|lower }}.array_ptr_{{ type_name|lower }}
pointer({{ type_name|lower }}::{{ type_name }}_t) = array({{ type_name|lower }})[1]{% endfor %}

# SCIP function wrappers: unchecked functions
{% for func_name, (ret_type, arg_types, arg_names, arg_vals) in parser.unchecked_functions.items() %}#{{ func_name }}({{ arg_names|join(', ') }}) = @scip_ccall("{{ func_name }}", {% if ret_type %}{{ ret_type }}{% else %}Void{% endif %}, ({{ arg_types|join(', ') }}{% if arg_types|length == 1 %},{% endif %}){% if arg_vals %}, {{ arg_vals|join(', ') }}{% endif %})
{% endfor %}
# SCIP function wrappers: unchecked functions
{% for func_name, (arg_types, arg_names, arg_vals) in parser.checked_functions.items() %}#{{ func_name }}({{ arg_names|join(', ') }}) = @scip_ccall_check("{{ func_name }}", ({{ arg_types|join(', ') }}{% if arg_types|length == 1 %},{% endif %}){% if arg_vals %}, {{ arg_vals|join(', ') }}{% endif %})
{% endfor %}

SCIPcreate(scip::SCIP_t) = @scip_ccall_check("SCIPcreate", (Ptr{Ptr{SCIP}},), array(scip))
SCIPfree(scip::SCIP_t) = @scip_ccall_check("SCIPfree", (Ptr{Ptr{SCIP}},), array(scip))

# Convenience constructors/destructors
{% for type_name, (constructors, (de_func_name, de_arg_names, de_orig_arg_names)) in parser.scip_types.items() %}{% for co_func_name, co_inst_name, co_mod_arg_names, co_orig_arg_names in constructors %}function {{ co_func_name }}({{ co_mod_arg_names|join(', ') }})
    {{ co_inst_name }} = {{ type_name }}_t({{ 'Array(Ptr{%s}, 1)'|format(type_name) }})
    {{ co_func_name }}({{ co_orig_arg_names|join(', ') }})
    finalizer({{ co_inst_name }}, {{ co_inst_name }}->{{ de_func_name }}({% if de_orig_arg_names|length > 1 %}{{ de_orig_arg_names[0] }}, {% endif %}{{ co_inst_name }}))
    return {{ type_name|lower }}
end{% endfor %}{% endfor %}

# # TODO: construction/destruction
# function SCIPcreate()
#     s = SCIP_t(Array(Ptr{SCIP}, 1))
#     SCIPcreate(s)
#     finalizer(s, s->SCIPfree(s))
#     return s
# end

SCIPversion() = @scip_ccall("SCIPversion", SCIP_Real, ())
SCIPgetStage(scip::SCIP_t) = @scip_ccall("SCIPgetStage", SCIP_Stage, (Ptr{SCIP},), pointer(scip))
SCIPgetStatus(scip::SCIP_t) = @scip_ccall("SCIPgetStatus", SCIP_Status, (Ptr{SCIP},), pointer(scip))
SCIPisTransformed(scip::SCIP_t) = @scip_ccall("SCIPisTransformed", SCIP_Bool, (Ptr{SCIP},), pointer(scip))