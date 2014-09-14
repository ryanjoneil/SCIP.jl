push!(LOAD_PATH, "src")

using SCIP, SCIP.CInterface

println("Loaded SCIP version: $(_SCIPversion())")
scip = SCIPcreate()
_SCIPincludeDefaultPlugins(scip)
_SCIPcreateProbBasic(scip, "Test problem")
x1 = SCIPcreateVarBasic(scip, "x1", 0.0, 1.0, 4.0, _SCIP_VARTYPE_BINARY)
_SCIPaddVar(scip, x1)
x2 = SCIPcreateVarBasic(scip, "x1", 0.0, 1.0, 3.0, _SCIP_VARTYPE_BINARY)
_SCIPaddVar(scip, x2)

cons1 = SCIPcreateConsBasicLinear(scip, "cons1", [x1, x2], [1.0,2.0], 0.0, 1.0)
@assert _SCIPgetRhsLinear(scip, cons1) == 1.0

println("done")
