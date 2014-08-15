export SCIPcreate, SCIPgetStage, SCIPgetStatus

# Macro for calling SCIP functions that return misc. types
macro scip_ccall(func, args...)
    return quote
        ccall(($func, "libscipopt"), $(args...))
    end
end
import Base: pointer

# Macro for calling SCIP functions that have checked return codes
macro scip_ccall_check(func, args...)
    return quote
        ret = ccall(($func, "libscipopt"), Int8, $(args...))
        if ret != SCIP_OKAY
            error(SCIP_RETCODE[ret])
        end
    end
end

# SCIP function wrappers: unchecked functions
SCIPversion() = @scip_ccall("SCIPversion", SCIP_Real, ())
SCIPmajorVersion() = @scip_ccall("SCIPmajorVersion", Int, ())
SCIPminorVersion() = @scip_ccall("SCIPminorVersion", Int, ())
SCIPtechVersion() = @scip_ccall("SCIPtechVersion", Int, ())
SCIPsubversion() = @scip_ccall("SCIPsubversion", Int, ())

# SCIP function wrappers: unchecked functions


typealias PtrSCIP Ptr{Void}
type SCIP
    ptr_scip::PtrSCIP
end

function SCIPcreate()
    a = Array(Ptr{Void}, 1)
    @scip_ccall_check("SCIPcreate", (Ptr{PtrSCIP},), pointer(a))
    s = SCIP(a[1])
    finalizer(s, s->@scip_ccall_check("SCIPfree", (Ptr{PtrSCIP},), pointer(a)))
    return s
end

pointer(scip::SCIP) = scip.ptr_scip
SCIPgetStage(scip::SCIP) = @scip_ccall("SCIPgetStage", SCIP_Stage, (PtrSCIP,), pointer(scip))
SCIPgetStatus(scip::SCIP) = @scip_ccall("SCIPgetStatus", SCIP_Status, (PtrSCIP,), pointer(scip))