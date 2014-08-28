export SCIPMathProgModel, SCIPSolver

require("MathProgBase")
importall MathProgBase.SolverInterface

type SCIPMathProgModel <: AbstractMathProgModel
    ptr::_SCIP_t
    varmap::Dict{Int,_SCIP_VAR_t}
end

function SCIPMathProgModel(;options...)
    # in the future, set parameters here
    scip = SCIPcreate()
    _SCIPcreateProbBasic(scip, "")
    _SCIPincludeDefaultPlugins(scip)
    SCIPMathProgModel(scip,Dict{Int,Ptr{_SCIP_VAR}}()) 
end

immutable SCIPSolver <: AbstractMathProgSolver
    options
end

function addvar!(m::SCIPMathProgModel, l, u, coeff)
    var = SCIPcreateVarBasic(m.ptr, l, u, coeff, SCIP._SCIP_VARTYPE_CONTINUOUS)
    _SCIPaddVar(m.ptr, var)
    m.varmap[numvar(m)+1] = var
    return numvar(m)
end

numvar(m::SCIPMathProgModel) = length(keys(m.varmap))

function addconstr!(m::SCIPMathProgModel, varidx, coeff, lb, ub)
    cons = SCIPcreateConsBasicLinear(m.ptr, [m.varmap[idx] for idx in varidx]), 
                                            convert(Vector{_SCIP_Real},coeff), 
                                            convert(_SCIP_Real,lb), 
                                            convert(_SCIP_Real,ub))
    _SCIPaddCons(m.ptr, cons)
end

function setobj!(m::SCIPMathProgModel, c)
    @assert (n = numvar(m)) == length(c)
    for i in 1:n
        _SCIPchgVarObj(m.ptr, m.varmap[i], convert(_SCIP_Real,c[i]))
    end
    nothing
end

const obj_sense_map = [
    :Max => _SCIP_OBJSENSE_MAXIMIZE,
    :Min => _SCIP_OBJSENSE_MINIMIZE
]
setsense!(m::SCIPMathProgModel, sns::Symbol) = _SCIPsetObjsense(m.ptr, obj_sense_map[sns])

const var_type_map = [
    'B' => _SCIP_VARTYPE_BINARY,
    'C' => _SCIP_VARTYPE_CONTINUOUS,
    'I' => _SCIP_VARTYPE_INTEGER,
    'M' => _SCIP_VARTYPE_IMPLINT
]
function setvartype!(m::SCIPMathProgModel, v::Vector{Char})
    (n = numvar(m)) == length(v) || error("Input variable type vector length not equal to number of model variables")
    for i in 1:n
        _SCIPchgVarType(m.ptr, m.varmap[i], var_type_map[v[i]], pointer(Array(_SCIP_Bool,1)))
        # pp = _SCIP_Bool_t(Array(Ptr{_SCIP_Bool},1))
        # _SCIPchgVarType(m.ptr, m.varmap[i], var_type_map[v[i]], pp)
    end
    nothing
end

function optimize!(m::SCIPMathProgModel)
    ret = _SCIPsolve(m.ptr)
    ret == _SCIP_OKAY || throw(SCIPError(ret))
    nothing
end
