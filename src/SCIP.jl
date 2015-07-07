module SCIP

function __init__()
   # if SCIP is compiled with Ipopt, libipopt must be in LD_LIBRARY_PATH
   if (libipopt = find_library(["libipopt"])) != ""
      @unix_only dlopen(libipopt, RTLD_LAZY|RTLD_DEEPBIND|RTLD_GLOBAL)
   end
end

# dump all code wrapped from C interface
module CInterface
    include("wrapped/scip_defines.jl")
    include("wrapped/scip_enums.jl")
    include("wrapped/scip_typedefs.jl")
    # include("wrapped/scip_structs.jl")
    include("wrapped/scip_functions.jl")
end
using .CInterface

# some convenience functions
module Helper
    using SCIP.CInterface
    include("helper/pointer_types.jl")
    include("helper/convenience.jl")
end
using .Helper

# MathProgBase interface
include("SCIPSolverInterface.jl")

end
