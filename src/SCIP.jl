module SCIP

include("scip_objsense.jl")
include("scip_retcode.jl")
include("scip_stage.jl")
include("scip_status.jl")
include("scip_vartype.jl")

export run_test

################################################################################
# Mappings to SCIP types
################################################################################
typealias SCIP_Real Float64
typealias SCIP_Bool Bool

typealias PtrSCIP Ptr{Void}
typealias PtrPtrSCIP Ptr{Ptr{Void}}

typealias PtrSCIP_Var Ptr{Void}
typealias PtrPtrSCIP_Var Ptr{Void}

typealias PtrSCIP_Cons Ptr{Void}
typealias PtrPtrSCIP_Cons Ptr{Void}

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
        ret = ccall(($f, "libscipopt"), Int8, $(args...))
        if ret != SCIP_OKAY
            error(SCIP_RETCODE[ret])
        end
    end
end

################################################################################
# Miscellaneous methods
################################################################################
version() = @scip_ccall("version", SCIP_Real, ())
major_version() = @scip_ccall("majorVersion", Int, ())
minor_version() = @scip_ccall("minorVersion", Int, ())
tech_version() = @scip_ccall("techVersion", Int, ())
subversion() = @scip_ccall("subversion", Int, ())
# TODO: SCIPprintVersion
print_error(e) = @scip_ccall("printError", Void, (SCIP_Retcode,), e)
store_solution_gap(scip) = @scip_ccall("storeSolutionGap", Void, (PtrSCIP,), scip)

################################################################################
# General SCIP methodds
################################################################################
create(scip) = @scip_ccall_check("create", (PtrPtrSCIP,), scip) # TODO: Add !?
free(scip) = @scip_ccall_check("free", (PtrPtrSCIP,), scip)     # TODO: Add !?
get_stage(scip) = @scip_ccall("getStage", SCIP_Stage, (PtrSCIP,), scip[1])
# TODO: SCIPprintStage
get_status(scip) = @scip_ccall("getStatus", SCIP_Status, (PtrSCIP,), scip[1])
# TODO: SCIPprintStatus
is_transformed(scip) = @scip_ccall("isTransformed", SCIP_Bool, (PtrSCIP,), scip[1])
is_exact_solve(scip) = @scip_ccall("isExactSolve", SCIP_Bool, (PtrSCIP,), scip[1])
is_presolve_finished(scip) = @scip_ccall("isPresolveFinished", SCIP_Bool, (PtrSCIP,), scip[1])
pressed_ctrl_c(scip) = @scip_ccall("pressedCtrlC", SCIP_Bool, (PtrSCIP,), scip[1])
is_stopped(scip) = @scip_ccall("isStopped", SCIP_Bool, (PtrSCIP,), scip[1])

################################################################################
# More methods to get a basic example working
################################################################################
include_default_plugins!(scip) = @scip_ccall_check("includeDefaultPlugins", (PtrSCIP,), scip[1])

create_prob_basic!(scip, name) = @scip_ccall_check("createProbBasic", (PtrSCIP, String), scip[1], name)
free_prob!(scip) = @scip_ccall_check("freeProb", (PtrSCIP,), scip[1])

create_var_basic!(scip, var, name, lb, ub, obj, vartype) = @scip_ccall_check(
    "createVarBasic", 
    (PtrSCIP, PtrPtrSCIP_Var, String, SCIP_Real, SCIP_Real, SCIP_Real, SCIP_Vartype), 
    scip[1], var, name, lb, ub, obj, vartype
)
add_var!(scip, var) = @scip_ccall_check("addVar", (PtrSCIP, PtrSCIP_Var), scip[1], var[1])
release_var!(scip, var) = @scip_ccall_check("releaseVar", (PtrSCIP, PtrPtrSCIP_Var), scip[1], var)

# TODO: handle vars & vals conversion
include_conshdlr_linear!(scip) = @scip_ccall_check("includeConshdlrLinear", (PtrSCIP,), scip[1])
create_cons_basic_linear!(scip, cons, name, nvars, vars, vals, lhs, rhs) = @scip_ccall_check(
    "createConsBasicLinear",
    (PtrSCIP, PtrPtrSCIP_Cons, String, Int, PtrPtrSCIP_Var, Ptr{SCIP_Real}, SCIP_Real, SCIP_Real),
    scip[1], cons, name, nvars, vars, vals, lhs, rhs
)
add_cons!(scip, cons) = @scip_ccall_check("addCons", (PtrSCIP, PtrSCIP_Cons), scip[1], cons[1])
del_cons!(scip, cons) = @scip_ccall_check("delCons", (PtrSCIP, PtrSCIP_Cons), scip[1], cons[1])
release_cons!(scip, cons) = @scip_ccall_check("releaseCons", (PtrSCIP, PtrPtrSCIP_Cons), scip[1], cons)

set_objsense!(scip, objsense) = @scip_ccall_check("setObjsense", (PtrSCIP, SCIP_Objsense), scip[1], objsense)

solve!(scip) = @scip_ccall_check("solve", (PtrSCIP,), scip[1])

presolve!(scip) = @scip_ccall_check("presolve", (PtrSCIP,), scip)

################################################################################
# Basic SCIP example - this will be wrapped up in an API
################################################################################
function run_test() 
    scip = Array(Ptr{Void}, 1)
    create(scip)
    include_default_plugins!(scip)

    # Create a problem
    create_prob_basic!(scip, "Test problem")
    
    # Create a couple binary variables.
    x1 = Array(Ptr{Void}, 1)
    create_var_basic!(scip, x1, "x1", 0, 1, 4, SCIP_VARTYPE_BINARY)
    add_var!(scip, x1)
    
    x2 = Array(Ptr{Void}, 1)
    create_var_basic!(scip, x2, "x2", 0, 1, 3, SCIP_VARTYPE_BINARY)
    add_var!(scip, x2)
 
    # Add a constraint: 0 <= x1 + x2 <= 1
    cons = Array(Ptr{Void}, 1)
    vars = Array(Ptr{Void}, 2)
    vars[1] = x1[1]
    vars[2] = x2[1]
    vals = Array(SCIP_Real, 2)
    vals[1] = 1
    vals[2] = 1
    #include_conshdlr_linear!(scip)
    create_cons_basic_linear!(scip, cons, "c1", 2, vars, vals, 0, 1)
    add_cons!(scip, cons)
    
    # Objective sense = maximize
    set_objsense!(scip, SCIP_OBJSENSE_MAXIMIZE)
    solve!(scip)

    # Cleaning up
    release_cons!(scip, cons)
    release_var!(scip, x1)
    release_var!(scip, x2)
    free_prob!(scip)
    free(scip)
end

end