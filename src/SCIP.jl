module SCIP

# dump all code wrapped from C interface
module CInterface
    include("wrapped/scip_defines.jl")
    include("wrapped/scip_enums.jl")
    include("wrapped/scip_typedefs.jl")
    include("wrapped/scip_structs.jl")
    include("wrapped/scip_functions.jl")
end
using .CInterface

# some convenience functions
module Helper
    using SCIP.CInterface
    include("convenience.jl")
end
using .Helper

# MathProgBase interface
include("SCIPSolverInterface.jl")

end
