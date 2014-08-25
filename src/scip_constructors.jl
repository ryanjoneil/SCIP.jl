export SCIPcreate, SCIPcreateVarBasic, SCIPcreateConsBasicLinear

# Convenience constructors/destructors
function SCIPcreate()
    scip = _SCIP_t(Array(Ptr{_SCIP}, 1))
    _SCIPcreate(scip)
    finalizer(scip, scip->_SCIPfree(scip))
    return scip
end

function SCIPcreateVarBasic(scip::_SCIP_t, name::String, lb::_SCIP_Real, ub::_SCIP_Real, obj::_SCIP_Real, vartype::_SCIP_VARTYPE)
    var = _SCIP_VAR_t(Array(Ptr{_SCIP_VAR}, 1))
    _SCIPcreateVarBasic(scip, var, name, lb, ub, obj, vartype)
    #finalizer(var, var->SCIPreleaseVar(scip, var))
    return var
end

function SCIPcreateConsBasicLinear(scip::_SCIP_t, name::String, vars::Vector{_SCIP_VAR_t}, vals::Vector{_SCIP_Real}, lhs::_SCIP_Real, rhs::_SCIP_Real)
    nvars = length(vars)
    @assert length(vals) == nvars
    cons = _SCIP_CONS_t(Array(Ptr{_SCIP_CONS}, 1))
    v = _SCIP_VAR_t([pointer(var) for var in vars])
    _SCIPcreateConsBasicLinear(scip, cons, name, nvars, v, vals, lhs, rhs)
    #finalizer(cons, cons->SCIPreleaseCons(scip, cons))
    return cons
end

