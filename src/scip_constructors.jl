# function SCIPcreate()
#     s = SCIP_t(Array(Ptr{SCIP}, 1))
#     SCIPcreate(s)
#     finalizer(s, s->SCIPfree(s))
#     return s
# end

# Convenience constructors/destructors
function SCIPcreate()
    scip = SCIP_t(Array(Ptr{_SCIP}, 1))
    _SCIPcreate(scip)
    finalizer(scip, scip->_SCIPfree(scip))
    return scip
end

function SCIPcreateVarBasic(scip::SCIP_t, name::String, lb::_SCIP_Real, ub::_SCIP_Real, obj::_SCIP_Real, vartype::_SCIP_VARTYPE)
    var = SCIP_VAR_t(Array(Ptr{_SCIP_VAR}, 1))
    _SCIPcreateVarBasic(scip, var, name, lb, ub, obj, vartype)
    # TODO: figure out why this causes an exception.
    #finalizer(var, var->SCIPreleaseVar(scip, var))
    return var
end

function SCIPcreateConsBasicLinear(scip::SCIP_t, name::String, nvars::Int, vars::SCIP_VAR_t, vals::SCIP_Real_t, lhs::_SCIP_Real, rhs::_SCIP_Real)
    cons = SCIP_CONS_t(Array(Ptr{_SCIP_CONS}, 1))
    _SCIPcreateConsBasicLinear(scip, cons, name, nvars, vars, vals, lhs, rhs)
    # TODO: figure out why this causes an exception.
    #finalizer(cons, cons->SCIPreleaseCons(scip, cons))
    return cons
end

