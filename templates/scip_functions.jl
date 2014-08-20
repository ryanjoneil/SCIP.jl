# TODO: exports
export SCIPcreate, SCIPgetStage, SCIPgetStatus, SCIPisTransformed, SCIPversion

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

# SCIP function wrappers: unchecked functions
{% for func_name, (ret_type, arg_types, arg_names, arg_vals) in parser.unchecked_functions.items() %}{{ func_name }}({{ arg_names|join(', ') }}) = @scip_ccall("{{ func_name }}", {% if ret_type %}{{ ret_type }}{% else %}Void{% endif %}, ({{ arg_types|join(', ') }}{% if arg_types|length == 1 %},{% endif %}){% if arg_vals %}, {{ arg_vals|join(', ') }}{% endif %})
{% endfor %}
# SCIP function wrappers: unchecked functions
{% for func_name, (arg_types, arg_names, arg_vals) in parser.checked_functions.items() %}{{ func_name }}({{ arg_names|join(', ') }}) = @scip_ccall_check("{{ func_name }}", ({{ arg_types|join(', ') }}{% if arg_types|length == 1 %},{% endif %}){% if arg_vals %}, {{ arg_vals|join(', ') }}{% endif %})
{% endfor %}
