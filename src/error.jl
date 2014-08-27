const error_map = [
    _SCIP_OKAY => "normal termination",
    _SCIP_ERROR => "unspecified error",
    _SCIP_NOMEMORY => "insufficient memory error",
    _SCIP_READERROR => "read error",
    _SCIP_WRITEERROR => "write error",
    _SCIP_NOFILE => "file not found error",
    _SCIP_FILECREATEERROR => "cannot create file",
    _SCIP_LPERROR => "error in LP solver",
    _SCIP_NOPROBLEM => "no problem exists",
    _SCIP_INVALIDCALL => "method cannot be called at this time in solution process",
    _SCIP_INVALIDDATA => "error in input data",
    _SCIP_INVALIDRESULT => "method returned an invalid result code",
    _SCIP_PLUGINNOTFOUND => "a required plugin was not found",
    _SCIP_PARAMETERUNKNOWN => "the parameter with the given name was not found",
    _SCIP_PARAMETERWRONGTYPE => "the parameter is not of the expected type",
    _SCIP_PARAMETERWRONGVAL => "the value is invalid for the given parameter",
    _SCIP_KEYALREADYEXISTING => "the given key is already existing in table",
    _SCIP_MAXDEPTHLEVEL => "maximal branching depth level exceeded"
]

type SCIPError# <: Exception
    msg::ASCIIString
    SCIPError(code::_SCIP_RETCODE) = new(error_map[code])
end

