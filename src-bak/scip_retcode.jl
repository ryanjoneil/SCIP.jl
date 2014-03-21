typealias SCIP_Retcode Int8

# Return codes of SCIP functions. We check these for errros.
SCIP_OKAY               = int8(  1)    
SCIP_ERROR              = int8(  0)    
SCIP_NOMEMORY           = int8( -1)    
SCIP_READERROR          = int8( -2)    
SCIP_WRITEERROR         = int8( -3)    
SCIP_NOFILE             = int8( -4)    
SCIP_FILECREATEERROR    = int8( -5)    
SCIP_LPERROR            = int8( -6)    
SCIP_NOPROBLEM          = int8( -7)    
SCIP_INVALIDCALL        = int8( -8)    
SCIP_INVALIDDATA        = int8( -9)    
SCIP_INVALIDRESULT      = int8(-10)    
SCIP_PLUGINNOTFOUND     = int8(-11)    
SCIP_PARAMETERUNKNOWN   = int8(-12)    
SCIP_PARAMETERWRONGTYPE = int8(-13)    
SCIP_PARAMETERWRONGVAL  = int8(-14)    
SCIP_KEYALREADYEXISTING = int8(-15)    
SCIP_MAXDEPTHLEVEL      = int8(-16)    
SCIP_BRANCHERROR        = int8(-17)    

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