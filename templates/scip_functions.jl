# TODO: exports
export SCIPcreate, SCIPgetStage, SCIPgetStatus, SCIPisTransformed

# TODO: upgrade to SCIP 3.1 and include version # in libscipopt
# Macro for calling SCIP functions that return misc. types
macro scip_ccall(func, args...)
    return quote
        ccall(($func, "libscipopt"), $(args...))
    end
end
import Base: pointer

# Macro for calling SCIP functions that have checked return codes
macro scip_ccall_check(func, args...)
    return quote
        ret = ccall(($func, "libscipopt"), Int8, $(args...))
        if ret != SCIP_OKAY
            error(SCIP_RETCODE[ret])
        end
    end
end

# SCIP function wrappers: unchecked functions
{% for func_name, (ret_type, arg_types, arg_names, arg_vals) in parser.unchecked_functions.items() %}{{ func_name }}({{ arg_names }}) = @scip_ccall("{{ func_name }}", {% if ret_type %}{{ ret_type }}{% else %}Void{% endif %}, ({{ arg_types }}){% if arg_vals %}, {{ arg_vals }}{% endif %})
{% endfor %}
# SCIP function wrappers: unchecked functions
{% for func_name, (arg_types, arg_names, arg_vals) in parser.checked_functions.items() %}{{ func_name }}({{ arg_names }}) = @scip_ccall_check("{{ func_name }}", ({{ arg_types }}){% if arg_vals %}, {{ arg_vals }}{% endif %})
{% endfor %}

# TODO: type creations
typealias PtrSCIP Ptr{Void}
type SCIP_t
    ptr_scip::PtrSCIP
end

# TODO: construction/destruction
function SCIPcreate()
    a = Array(Ptr{SCIP}, 1)
    @scip_ccall_check("SCIPcreate", (Ptr{Ptr{SCIP}},), pointer(a))
    s = SCIP_t(a[1])
    finalizer(s, s->@scip_ccall_check("SCIPfree", (Ptr{Ptr{SCIP}},), pointer(a)))
    return s
end

# TODO: pointer methods
pointer(scip::SCIP_t) = scip.ptr_scip

# TODO: types and pointer() calls in arg lists
SCIPgetStage(scip::SCIP_t) = @scip_ccall("SCIPgetStage", SCIP_Stage, (Ptr{SCIP},), pointer(scip))
SCIPgetStatus(scip::SCIP_t) = @scip_ccall("SCIPgetStatus", SCIP_Status, (Ptr{SCIP},), pointer(scip))
SCIPisTransformed(scip::SCIP_t) = @scip_ccall("SCIPisTransformed", SCIP_Bool, (Ptr{SCIP},), pointer(scip))
