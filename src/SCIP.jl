module SCIP

include("scip_defines.jl")
include("scip_enums.jl")
include("scip_typedefs.jl")
include("scip_functions.jl")

println("Loaded SCIP version: $(SCIPversion())")

end