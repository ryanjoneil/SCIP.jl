push!(LOAD_PATH, "src")

using SCIPCInterface

println("Loaded SCIP version: $(SCIPversion())")
scip = SCIPcreate()
SCIPincludeDefaultPlugins(scip)
SCIPcreateProbBasic(scip, "Test problem")
x1 = SCIPcreateVarBasic(scip, "x1", 0.0, 1.0, 4.0, SCIPCInterface.SCIP_VARTYPE_BINARY)
SCIPaddVar(scip, x1)
x2 = SCIPcreateVarBasic(scip, "x1", 0.0, 1.0, 3.0, SCIPCInterface.SCIP_VARTYPE_BINARY)
SCIPaddVar(scip, x2)

cons1 = SCIPcreateConsBasicLinear(scip, "cons1", [x1, x2], [1.0,2.0], 0.0, 1.0)
@assert SCIPgetRhsLinear(scip, cons1) == 1.0

println("done")
