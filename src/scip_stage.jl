typealias SCIP_Stage Int8

SCIP_STAGE_INIT         = int8(  0)
SCIP_STAGE_PROBLEM      = int8(  1)
SCIP_STAGE_TRANSFORMING = int8(  2)
SCIP_STAGE_TRANSFORMED  = int8(  3)
SCIP_STAGE_INITPRESOLVE = int8(  4)
SCIP_STAGE_PRESOLVING   = int8(  5)
SCIP_STAGE_EXITPRESOLVE = int8(  6)
SCIP_STAGE_PRESOLVED    = int8(  7)
SCIP_STAGE_INITSOLVE    = int8(  8)
SCIP_STAGE_SOLVING      = int8(  9)
SCIP_STAGE_SOLVED       = int8( 10)
SCIP_STAGE_EXITSOLVE    = int8( 11)
SCIP_STAGE_FREETRANS    = int8( 12)
SCIP_STAGE_FREE         = int8( 13)

SCIP_STAGE = Dict{SCIP_Stage, String}()
SCIP_STAGE[SCIP_STAGE_INIT]         = "SCIP data structures are initialized, no problem exists"
SCIP_STAGE[SCIP_STAGE_PROBLEM]      = "the problem is being created and modified"
SCIP_STAGE[SCIP_STAGE_TRANSFORMING] = "the problem is being transformed into solving data space"
SCIP_STAGE[SCIP_STAGE_TRANSFORMED]  = "the problem was transformed into solving data space"
SCIP_STAGE[SCIP_STAGE_INITPRESOLVE] = "presolving is initialized"
SCIP_STAGE[SCIP_STAGE_PRESOLVING]   = "the problem is being presolved"
SCIP_STAGE[SCIP_STAGE_EXITPRESOLVE] = "presolving is exited"
SCIP_STAGE[SCIP_STAGE_PRESOLVED]    = "the problem was presolved"
SCIP_STAGE[SCIP_STAGE_INITSOLVE]    = "the solving process data is being initialized"
SCIP_STAGE[SCIP_STAGE_SOLVING]      = "the problem is being solved"
SCIP_STAGE[SCIP_STAGE_SOLVED]       = "the problem was solved"
SCIP_STAGE[SCIP_STAGE_EXITSOLVE]    = "the solving process data is being freed"
SCIP_STAGE[SCIP_STAGE_FREETRANS]    = "the transformed problem is being freed"
SCIP_STAGE[SCIP_STAGE_FREE]         = "SCIP data structures are being freed"
