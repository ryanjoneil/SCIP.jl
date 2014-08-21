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

println("done")
