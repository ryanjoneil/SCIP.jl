export SCIPMathProgModel, SCIPSolver

# require("MathProgBase")
importall MathProgBase.SolverInterface

type SCIPMathProgModel <: AbstractMathProgModel
    ptr::SPtr{_SCIP}
    varmap::Dict{Int,SPtr{_SCIP_VAR}}
end

function SCIPMathProgModel(;options...)
    # in the future, set parameters here
    scip = SCIPcreate()
    _SCIPcreateProbBasic(scip, "")
    _SCIPincludeDefaultPlugins(scip)
    SCIPMathProgModel(scip,Dict{Int,SPtr{_SCIP_VAR}}()) 
end

immutable SCIPSolver <: AbstractMathProgSolver
    options
end
SCIPSolver(;kwargs...) = SCIPSolver(kwargs)
model(s::SCIPSolver) = SCIPMathProgModel(;s.options...)


function addvar!(m::SCIPMathProgModel, l, u, coeff)
    var = SCIPcreateVarBasic(m.ptr, l, u, coeff, SCIP._SCIP_VARTYPE_CONTINUOUS)
    _SCIPaddVar(m.ptr, var)
    m.varmap[numvar(m)+1] = var
    return numvar(m)
end

numvar(m::SCIPMathProgModel) = length(keys(m.varmap))

function addconstr!(m::SCIPMathProgModel, varidx, coeff, lb, ub)
    cons = SCIPcreateConsBasicLinear(m.ptr, [m.varmap[idx] for idx in varidx], 
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
    :Bin => _SCIP_VARTYPE_BINARY,
    :Cont => _SCIP_VARTYPE_CONTINUOUS,
    :Int => _SCIP_VARTYPE_INTEGER,
    :ImpliedInt => _SCIP_VARTYPE_IMPLINT
]
function setvartype!(m::SCIPMathProgModel, v::Vector{Symbol})
    (n = numvar(m)) == length(v) || error("Input variable type vector length not equal to number of model variables")
    for i in 1:n
        _SCIPchgVarType(m.ptr, m.varmap[i], var_type_map[v[i]], Array(_SCIP_Bool,1))
    end
    nothing
end

function loadproblem!(model::SCIPMathProgModel, A::Union(SparseMatrixCSC,Matrix), l::Vector, u::Vector, c::Vector, lb::Vector, ub::Vector, sense::Symbol)
    A = sparse(A)
    m, n = size(A)
    setsense!(model, sense)
    for i in 1:n
        addvar!(model, l[i], u[i], c[i])
    end
    At = A'
    for i in 1:length(At.colptr)-1
        r, s = At.colptr[i], At.colptr[i+1]
        r == s && continue
        addconstr!(model, At.rowval[r:(s-1)], At.nzval[r:(s-1)], lb[i], ub[i])
    end
    nothing
end

function optimize!(m::SCIPMathProgModel)
    ret = _SCIPsolve(m.ptr)
    ret == _SCIP_OKAY || throw(SCIPError(ret))
    nothing
end

const sol_stat_map = [
    _SCIP_STATUS_UNKNOWN  => :Error,
    _SCIP_STATUS_USERINTERRUPT  => :Error,
    _SCIP_STATUS_NODELIMIT => :UserLimit,
    _SCIP_STATUS_TOTALNODELIMIT => :UserLimit,
    _SCIP_STATUS_STALLNODELIMIT => :UserLimit,
    _SCIP_STATUS_TIMELIMIT => :UserLimit ,
    _SCIP_STATUS_MEMLIMIT => :UserLimit,
    _SCIP_STATUS_GAPLIMIT => :UserLimit,
    _SCIP_STATUS_SOLLIMIT => :UserLimit,
    _SCIP_STATUS_BESTSOLLIMIT  => :UserLimit,
    _SCIP_STATUS_OPTIMAL => :Optimal,
    _SCIP_STATUS_INFEASIBLE => :Infeasible,
    _SCIP_STATUS_UNBOUNDED => :Unbounded,
    _SCIP_STATUS_INFORUNBD => :InfOrUnbounded
]

status(m::SCIPMathProgModel) = sol_stat_map[_SCIPgetStatus(m.ptr)]

getobjval(m::SCIPMathProgModel) = _SCIPgetPrimalbound(m.ptr)

getobjbound(m::SCIPMathProgModel) = _SCIPgetDualbound(m.ptr)

function getsolution(m::SCIPMathProgModel)
    nvar = numvar(m)
    sol = SPtr(_SCIP_SOL)
    vars = [m.varmap[i] for i in 1:nvar]
    vals = Array(Cdouble, nvar)
    ret = _SCIPgetSolVals(m.ptr, pointer(sol), nvar, pointer(vars), pointer(vals))
    ret == _SCIP_OKAY || throw(SCIPError(ret))
    return vals
end