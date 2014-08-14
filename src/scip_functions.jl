# Macro for calling SCIP functions that return misc. types
macro scip_ccall(func, args...)
    return quote
        ccall(($func, "libscipopt"), $(args...))
    end
end

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
