# function SCIPcreate()
#     s = SCIP_t(Array(Ptr{SCIP}, 1))
#     SCIPcreate(s)
#     finalizer(s, s->SCIPfree(s))
#     return s
# end

# Convenience constructors/destructors
function SCIPcreate()
    scip = SCIP_t(Array(Ptr{SCIP}, 1))
    SCIPcreate(scip)
    finalizer(scip, scip->SCIPfree(scip))
    return scip
end

function SCIPcreateVarBasic(scip::SCIP_t, name::String, lb::SCIP_Real, ub::SCIP_Real, obj::SCIP_Real, vartype::SCIP_VARTYPE)
    var = SCIP_VAR_t(Array(Ptr{SCIP_VAR}, 1))
    SCIPcreateVarBasic(scip, var, name, lb, ub, obj, vartype)
    #finalizer(var, var->SCIPreleaseVar(scip, var))
    return var
end

function SCIPcreateConsBasicLinear(scip::SCIP_t, name::String, vars::Vector{SCIP_VAR_t}, vals::Vector{SCIP_Real}, lhs::SCIP_Real, rhs::SCIP_Real)
    nvars = length(vars)
    @assert length(vals) == nvars
    cons = SCIP_CONS_t(Array(Ptr{SCIP_CONS}, 1))
    v = SCIP_VAR_t([pointer(var) for var in vars])
    SCIPcreateConsBasicLinear(scip, cons, name, nvars, v, vals, lhs, rhs)
    #finalizer(cons, cons->SCIPreleaseCons(scip, cons))
    return cons
end

