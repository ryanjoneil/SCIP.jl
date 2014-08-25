export SCIPSolver

require("MathProgBase")
importall MathProgBase.SolverInterface

type SCIPMathProgModel <: AbstractMathProgModel
    model::Ptr{_SCIP}
    varmap::Dict{Int,_SCIP_VAR_t}
end

function SCIPMathProgModel(;options...)
    # in the future, set parameters here
    _SCIPcreate()
end

immutable SCIPSolver <: AbstractMathProgSolver
    options
end

function addvar!(m::SCIPMathProgModel, l, u, coeff)
    var = _SCIPcreateVarBasic(m.model, "", l, u, coeff, SCIP._SCIP_VARTYPE_CONTINUOUS)
    _SCIPaddVar(m.model, var)
    m.varmap[numvar(m)] = var
    return numvar(m)
end

numvar(m::SCIPMathProgModel) = length(keys(m.varmap))

addconstr!(m::SCIPMathProgModel, varidx, coeff, lb, ub) = 
    _SCIPcreateConsBasicLinear(m.model, "", [m.varmap[idx] for idx in varidx], coeff, lb, ub)
