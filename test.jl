push!(LOAD_PATH, "src")

using SCIPCInterface

println("Loaded SCIP version: $(SCIPversion())")
scip = SCIPcreate()
println(scip.array_ptr_scip)
println(pointer(scip))
println(typeof(scip))
println("Stage: $(SCIPgetStage(scip))")
println("Status: $(SCIPgetStatus(scip))")
println("SCIPisTransformed?: $(SCIPisTransformed(scip))")
println("done")
