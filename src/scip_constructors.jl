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

function SCIPcreateConsBasicLinear(scip::SCIP_t, name::String, nvars::Int, vars::SCIP_VAR_t, vals::SCIP_Real_t, lhs::SCIP_Real, rhs::SCIP_Real)
    cons = SCIP_CONS_t(Array(Ptr{SCIP_CONS}, 1))
    SCIPcreateConsBasicLinear(scip, cons, name, nvars, vars, vals, lhs, rhs)
    #finalizer(cons, cons->SCIPreleaseCons(scip, cons))
    return cons
end

