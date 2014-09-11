push!(LOAD_PATH, "src")

using SCIPCInterface

println("Loaded SCIP version: $(SCIPCInterface._SCIPversion())")
scip = SCIPCInterface.SCIPcreate()
SCIPCInterface._SCIPincludeDefaultPlugins(scip)
SCIPCInterface._SCIPcreateProbBasic(scip, "Test problem")
x1 = SCIPCInterface.SCIPcreateVarBasic(scip, "x1", 0.0, 1.0, 4.0, SCIPCInterface._SCIP_VARTYPE_BINARY)
SCIPCInterface._SCIPaddVar(scip, x1)
x2 = SCIPCInterface.SCIPcreateVarBasic(scip, "x2", 0.0, 1.0, 3.0, SCIPCInterface._SCIP_VARTYPE_BINARY)
SCIPCInterface._SCIPaddVar(scip, x2)

#cons1 = SCIPcreateConsBasicLinear(scip, "cons1", [x1, x2], [1.0,2.0], 0.0, 1.0)
#@assert SCIPgetRhsLinear(scip, cons1) == 1.0

SCIPCInterface._SCIPsolve(scip)
println("done")
