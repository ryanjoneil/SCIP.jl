export SCIPcreate, SCIPcreateVarBasic, SCIPcreateConsBasicLinear

# Convenience constructors/destructors
function SCIPcreate()
    # scip = pointer(Array(Ptr{_SCIP}, 1))
    scip = Array(Ptr{_SCIP},1)
    _SCIPcreate(pointer(scip))
    sc = scip[1]
    # finalizer(scip, scip->_SCIPfree(scip))
    return sc
end

SCIPcreateVarBasic(scip::Ptr{_SCIP}, lb, ub, obj, vartype::_SCIP_VARTYPE) = 
    SCIPcreateVarBasic(scip, "", convert(_SCIP_Real,lb), convert(_SCIP_Real,ub), convert(_SCIP_Real,obj), vartype)
function SCIPcreateVarBasic(scip::Ptr{_SCIP}, name::String, lb::_SCIP_Real, ub::_SCIP_Real, obj::_SCIP_Real, vartype::_SCIP_VARTYPE)
    var = Array(Ptr{_SCIP_VAR}, 1)
    _SCIPcreateVarBasic(scip, pointer(var), name, lb, ub, obj, vartype)
    # finalizer(var, var->_SCIPreleaseVar(scip, var))
    return var[1]
end

SCIPcreateConsBasicLinear(scip::Ptr{_SCIP}, vars, vals, lhs, rhs) = 
    SCIPcreateConsBasicLinear(scip, "", convert(Vector{Ptr{_SCIP_VAR}},vars), convert(Vector{_SCIP_Real},vals), convert(_SCIP_Real,lhs), convert(_SCIP_Real,rhs))
function SCIPcreateConsBasicLinear(scip::Ptr{_SCIP}, name::String, vars::Vector{Ptr{_SCIP_VAR}}, vals::Vector{_SCIP_Real}, lhs::_SCIP_Real, rhs::_SCIP_Real)
    nvars = length(vars)
    @assert length(vals) == nvars
    # cons = _SCIP_CONS_t(Array(Ptr{_SCIP_CONS}, 1))
    cons = Array(Ptr{_SCIP_CONS}, 1)
    # v = _SCIP_VAR_t([pointer(var) for var in vars])
    _SCIPcreateConsBasicLinear(scip, pointer(cons), name, nvars, pointer(vars), vals, lhs, rhs)
    # finalizer(cons, cons->_SCIPreleaseCons(scip, cons))
    return cons[1]
end
