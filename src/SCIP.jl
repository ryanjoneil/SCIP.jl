module SCIP

include("scip_retcode.jl")
include("scip_stage.jl")
include("scip_status.jl")

export run_test

################################################################################
# Mappings to SCIP types
################################################################################
typealias SCIP_Real Float64
typealias SCIP_Bool Bool

typealias PtrSCIP Ptr{Void}
typealias PtrPtrSCIP Ptr{Ptr{Void}}

################################################################################
# Macros for interacting with SCIP
################################################################################
# Macro for calling SCIP functions that return misc. types
macro scip_ccall(func, args...)
    f = "SCIP$(func)"
    return quote
        ccall(($f, "libscipopt"), $(args...))
    end
end

# Macro for calling SCIP functions that have checked return codes
macro scip_ccall_check(func, args...)
    f = "SCIP$(func)"
    return quote
        ret = ccall(($f, "libscipopt"), SCIP_Retcode, $(args...))
        if ret != SCIP_OKAY
            error(SCIP_RETCODE[ret])
        end
    end
end

################################################################################
# Miscellaneous methods
################################################################################
version()                = @scip_ccall("version", SCIP_Real, ())
major_version()          = @scip_ccall("majorVersion", Int, ())
minor_version()          = @scip_ccall("minorVersion", Int, ())
tech_version()           = @scip_ccall("techVersion", Int, ())
subversion()             = @scip_ccall("subversion", Int, ())
# TODO: SCIPprintVersion
print_error(e)           = @scip_ccall("printError", Void, (SCIP_Retcode,), e)
store_solution_gap(scip) = @scip_ccall("storeSolutionGap", Void, (PtrSCIP,), scip)

################################################################################
# General SCIP methodds
################################################################################
create(scip)               = @scip_ccall_check("create", (PtrPtrSCIP,), scip)
free(scip)                 = @scip_ccall_check("free", (PtrPtrSCIP,), scip)
get_stage(scip)            = @scip_ccall("getStage", SCIP_Stage, (PtrSCIP,), scip)
# TODO: SCIPprintStage
get_status(scip)           = @scip_ccall("getStatus", SCIP_Status, (PtrSCIP,), scip)
# TODO: SCIPprintStatus
is_transformed(scip)       = @scip_ccall("isTransformed", SCIP_Bool, (PtrSCIP,), scip)
is_exact_solve(scip)       = @scip_ccall("isExactSolve", SCIP_Bool, (PtrSCIP,), scip)
is_presolve_finished(scip) = @scip_ccall("isPresolveFinished", SCIP_Bool, (PtrSCIP,), scip)
pressed_ctrl_c(scip)       = @scip_ccall("pressedCtrlC", SCIP_Bool, (PtrSCIP,), scip)
is_stopped(scip)           = @scip_ccall("isStopped", SCIP_Bool, (PtrSCIP,), scip)

################################################################################
# More methods to get a basic example working
################################################################################
presolve(scip) = @scip_ccall_check("presolve", (PtrSCIP,), scip)


################################################################################
# Basic SCIP example - this will be wrapped up in an API
################################################################################
function run_test() 
    a = Array(Ptr{Void}, 1)
    println("creating")
    create(a)
    println("STATUS:", SCIP_STATUS[get_status(a[1])])
    println("STAGE:", SCIP_STAGE[get_stage(a[1])])
    println("STAGE:", SCIP_STAGE[get_stage(a[1])])
    println("IS TRANSFORMED:", is_transformed(a[1]))
    free(a)
    println("done")
end

end