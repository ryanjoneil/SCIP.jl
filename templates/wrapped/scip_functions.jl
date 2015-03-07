export SCIPError

type SCIPError <: Exception
    msg::ASCIIString
    SCIPError(code::_SCIP_RETCODE) = new(SCIP_Retcode_MAP[code])
end

# Macro for calling SCIP functions that return misc. types
macro scip_ccall(func, args...)
    return quote
        ccall(($func, "libscipopt"), $(args...))
    end
end

# Macro for calling SCIP functions that have checked return codes
macro scip_ccall_check(func, args...)
    return quote
        ret = ccall(($func, "libscipopt"), _SCIP_RETCODE, $(args...))
        ret == _SCIP_OKAY || throw(SCIPError(ret))
    end
end

# SCIP function wrappers: unchecked functions
export {{ exportFunctions .UncheckedFunctions }}{{ range .UncheckedFunctions }}
{{ .FinalName }}({{ functionArgNames . }}) = @scip_ccall("{{ .OrigName }}", 
    {{ .ReturnType.FinalType }}, {{ functionArgs . }}){{ end }}

# SCIP function wrappers: checked functions
export {{ exportFunctions .CheckedFunctions }}{{ range .CheckedFunctions }}
{{ .FinalName }}({{ functionArgNames . }}) = @scip_ccall_check("{{ .OrigName }}", 
    {{ functionArgs . }}){{ end }}
