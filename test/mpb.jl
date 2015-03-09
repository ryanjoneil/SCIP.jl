using MathProgBase.SolverInterface, SCIP

m = SCIPMathProgModel()
MathProgBase.addvar!(m, 0, 1, 1)
addvar!(m, 0, 1, 1)

setvartype!(m, [:Int, :Int])

addconstr!(m, [1,2], [1,1], 1, 1)

setobj!(m, [1,2])
setsense!(m, :Max)

optimize!(m)

println("status: $(status(m))")
println("objective value: $(getobjval(m))")
println("solution: $(getsolution(m))")
