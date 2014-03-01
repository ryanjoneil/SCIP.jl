typealias SCIP_Retcode Int

# Return codes of SCIP functions. We check these for errros.
SCIP_OKAY               =   1
SCIP_ERROR              =   0
SCIP_NOMEMORY           =  -1
SCIP_READERROR          =  -2
SCIP_WRITEERROR         =  -3
SCIP_NOFILE             =  -4
SCIP_FILECREATEERROR    =  -5
SCIP_LPERROR            =  -6
SCIP_NOPROBLEM          =  -7
SCIP_INVALIDCALL        =  -8
SCIP_INVALIDDATA        =  -9
SCIP_INVALIDRESULT      = -10
SCIP_PLUGINNOTFOUND     = -11
SCIP_PARAMETERUNKNOWN   = -12
SCIP_PARAMETERWRONGTYPE = -13
SCIP_PARAMETERWRONGVAL  = -14
SCIP_KEYALREADYEXISTING = -15
SCIP_MAXDEPTHLEVEL      = -16
SCIP_BRANCHERROR        = -17

SCIP_RETCODE = Dict{SCIP_Retcode, String}()
SCIP_RETCODE[SCIP_OKAY]               = "normal termination"
SCIP_RETCODE[SCIP_ERROR]              = "unspecified error"
SCIP_RETCODE[SCIP_NOMEMORY]           = "insufficient memory error"
SCIP_RETCODE[SCIP_READERROR]          = "read error"
SCIP_RETCODE[SCIP_WRITEERROR]         = "write error"
SCIP_RETCODE[SCIP_NOFILE]             = "file not found error"
SCIP_RETCODE[SCIP_FILECREATEERROR]    = "cannot create file"
SCIP_RETCODE[SCIP_LPERROR]            = "error in LP solver"
SCIP_RETCODE[SCIP_NOPROBLEM]          = "no problem exists"
SCIP_RETCODE[SCIP_INVALIDCALL]        = "method cannot be called at this time in the solution process"
SCIP_RETCODE[SCIP_INVALIDDATA]        = "error in input data"
SCIP_RETCODE[SCIP_INVALIDRESULT]      = "method returned an invalid result code"
SCIP_RETCODE[SCIP_PLUGINNOTFOUND]     = "a required plugin was not found"
SCIP_RETCODE[SCIP_PARAMETERUNKNOWN]   = "the parameter with the given name was not found"
SCIP_RETCODE[SCIP_PARAMETERWRONGTYPE] = "the parameter is not of the expected type"
SCIP_RETCODE[SCIP_PARAMETERWRONGVAL]  = "the value is invalid for the given parameter"
SCIP_RETCODE[SCIP_KEYALREADYEXISTING] = "the given key is already existing in table"
SCIP_RETCODE[SCIP_MAXDEPTHLEVEL]      = "maximal branching depth level exceeded"
SCIP_RETCODE[SCIP_BRANCHERROR]        = "no branching could be created"