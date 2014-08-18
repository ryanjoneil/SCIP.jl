# TODO: exports
export SCIPcreate, SCIPgetStage, SCIPgetStatus, SCIPisTransformed, SCIPversion
import Base: pointer

# TODO: upgrade to SCIP 3.1 and include version # in libscipopt
# Macro for calling SCIP functions that return misc. types
macro scip_ccall(func, args...)
    return quote
        ccall(($func, "libscipopt"), $(args...))
    end
end

# Macro for calling SCIP functions that have checked return codes
macro scip_ccall_check(func, args...)
    return quote
        ret = ccall(($func, "libscipopt"), Int8, $(args...))
        if ret != SCIP_OKAY
            error(SCIP_RETCODE[ret])
        end
    end
end

# TODO: type creations
type SCIP_t
    array_ptr_scip::Array{Ptr{SCIP}}
end

# # TODO: pointer methods
pointer(scip::SCIP_t) = scip.array_ptr_scip[1]

SCIPcreate(scip::SCIP_t) = @scip_ccall_check("SCIPcreate", (Ptr{Ptr{SCIP}},), scip.array_ptr_scip)
SCIPfree(scip::SCIP_t) = @scip_ccall_check("SCIPfree", (Ptr{Ptr{SCIP}},), scip.array_ptr_scip)

# TODO: construction/destruction
function SCIPcreate()
    s = SCIP_t(Array(Ptr{SCIP}, 1))
    SCIPcreate(s)
    finalizer(s, s->SCIPfree(s))
    return s
end

SCIPversion() = @scip_ccall("SCIPversion", SCIP_Real, ())
SCIPgetStage(scip::SCIP_t) = @scip_ccall("SCIPgetStage", SCIP_Stage, (Ptr{SCIP},), pointer(scip))
SCIPgetStatus(scip::SCIP_t) = @scip_ccall("SCIPgetStatus", SCIP_Status, (Ptr{SCIP},), pointer(scip))
SCIPisTransformed(scip::SCIP_t) = @scip_ccall("SCIPisTransformed", SCIP_Bool, (Ptr{SCIP},), pointer(scip))


# SCIP function wrappers: unchecked functions
{% for func_name, (ret_type, arg_types, arg_names, arg_vals) in parser.unchecked_functions.items() %}#{{ func_name }}({{ arg_names }}) = @scip_ccall("{{ func_name }}", {% if ret_type %}{{ ret_type }}{% else %}Void{% endif %}, ({{ arg_types }}){% if arg_vals %}, {{ arg_vals }}{% endif %})
{% endfor %}
# SCIP function wrappers: unchecked functions
{% for func_name, (arg_types, arg_names, arg_vals) in parser.checked_functions.items() %}#{{ func_name }}({{ arg_names }}) = @scip_ccall_check("{{ func_name }}", ({{ arg_types }}){% if arg_vals %}, {{ arg_vals }}{% endif %})
{% endfor %}
