push!(LOAD_PATH, "src")

using SCIPCInterface

scip = SCIPcreate()
println(scip.ptr_scip)
println(pointer(scip))
println(typeof(scip))
println("Stage: $(SCIPgetStage(scip))")
println("Status: $(SCIPgetStatus(scip))")
println("SCIPisTransformed?: $(SCIPisTransformed(scip))")
println("done")
