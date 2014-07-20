# Macro for calling SCIP functions that return misc. types
macro scip_ccall(func, args...)
    f = "SCIP$(func)"
    return quote
        ccall(($f, "libscipopt"), $(args...))
    end
end

# Macro for calling SCIP functions that have checked return codes
macro scip_ccall_check(func, args...)
    f = "SCIP$(func)"
    return quote
        ret = ccall(($f, "libscipopt"), Int8, $(args...))
        if ret != SCIP_OKAY
            error(SCIP_RETCODE[ret])
        end
    end
end

# SCIP function wrappers: unchecked functions
{% for func_name, (ret_type, arg_types, arg_names, arg_vals) in parser.unchecked_functions.items() %}{{ func_name }}({{ arg_names }}) = @scip_ccall("{{ func_name }}", {% if ret_type %}{{ ret_type }}{% else %}Void{% endif %}, ({{ arg_types }}){% if arg_vals %}, {{ arg_vals }}{% endif %})
{% endfor %}