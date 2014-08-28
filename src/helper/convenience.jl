export SCIPcreate, SCIPcreateVarBasic, SCIPcreateConsBasicLinear

# Convenience constructors/destructors
function SCIPcreate()
    # scip = pointer(Array(Ptr{_SCIP}, 1))
    scip = _SCIP_t()
    _SCIPcreate(pointer(scip))
    finalizer(scip, scip->_SCIPfree(scip))
    return scip
end

SCIPcreateVarBasic(scip::_SCIP_t,lb,ub,obj,vartype::_SCIP_VARTYPE) = 
    SCIPcreateVarBasic(scip,"",lb,ub,obj,vartype)

function SCIPcreateVarBasic(scip::_SCIP_t, name::String, lb, ub, obj, vartype::_SCIP_VARTYPE)
    var = _SCIP_VAR_t()
    _SCIPcreateVarBasic(scip, pointer(var), name, convert(_SCIP_Real,lb), convert(_SCIP_Real,ub), convert(_SCIP_Real,obj), vartype)
    # finalizer(var, var->_SCIPreleaseVar(scip, var))
    return var
end

SCIPcreateConsBasicLinear(scip::_SCIP_t, vars::Vector{_SCIP_VAR_t}, vals, lhs, rhs) = 
    SCIPcreateConsBasicLinear(scip, "", vars, vals, lhs, rhs)
function SCIPcreateConsBasicLinear(scip::_SCIP_t, name::String, vars::Vector{_SCIP_VAR_t}, vals, lhs, rhs)
    nvars = length(vars)
    @assert length(vals) == nvars
    cons = _SCIP_CONS_t()
    # v = _SCIP_VAR_t([pointer(var for var in vars])
    _SCIPcreateConsBasicLinear(scip, 
                               pointer(cons), 
                               name, 
                               nvars, 
                               pointer(vars), 
                               convert(Vector{_SCIP_Real},vals), 
                               convert(_SCIP_Real,lhs), 
                               convert(_SCIP_Real,rhs))
    # finalizer(cons, cons->_SCIPreleaseCons(scip, cons))
    return cons[1]
end
