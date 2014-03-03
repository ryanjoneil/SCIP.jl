typealias SCIP_Status Int8

SCIP_STATUS_UNKNOWN        = int8(  0)
SCIP_STATUS_USERINTERRUPT  = int8(  1)
SCIP_STATUS_NODELIMIT      = int8(  2)
SCIP_STATUS_TOTALNODELIMIT = int8(  3)
SCIP_STATUS_STALLNODELIMIT = int8(  4)
SCIP_STATUS_TIMELIMIT      = int8(  5)
SCIP_STATUS_MEMLIMIT       = int8(  6)
SCIP_STATUS_GAPLIMIT       = int8(  7)
SCIP_STATUS_SOLLIMIT       = int8(  8)
SCIP_STATUS_BESTSOLLIMIT   = int8(  9)
SCIP_STATUS_OPTIMAL        = int8( 10)
SCIP_STATUS_INFEASIBLE     = int8( 11)
SCIP_STATUS_UNBOUNDED      = int8( 12)
SCIP_STATUS_INFORUNBD      = int8( 13)

SCIP_STATUS = Dict{SCIP_Status, String}()
SCIP_STATUS[SCIP_STATUS_UNKNOWN]        = "the solving status is not yet known"
SCIP_STATUS[SCIP_STATUS_USERINTERRUPT]  = "the user interrupted the solving process (by pressing CTRL-C)"
SCIP_STATUS[SCIP_STATUS_NODELIMIT]      = "the solving process was interrupted because the node limit was reached"
SCIP_STATUS[SCIP_STATUS_TOTALNODELIMIT] = "the solving process was interrupted because the total node limit was reached (incl. restarts)"
SCIP_STATUS[SCIP_STATUS_STALLNODELIMIT] = "the solving process was interrupted because the stalling node limit was reached (no inprovement w.r.t. primal bound)"
SCIP_STATUS[SCIP_STATUS_TIMELIMIT]      = "the solving process was interrupted because the time limit was reached"
SCIP_STATUS[SCIP_STATUS_MEMLIMIT]       = "the solving process was interrupted because the memory limit was reached"
SCIP_STATUS[SCIP_STATUS_GAPLIMIT]       = "the solving process was interrupted because the gap limit was reached"
SCIP_STATUS[SCIP_STATUS_SOLLIMIT]       = "the solving process was interrupted because the solution limit was reached"
SCIP_STATUS[SCIP_STATUS_BESTSOLLIMIT]   = "the solving process was interrupted because the solution improvement limit was reached"
SCIP_STATUS[SCIP_STATUS_OPTIMAL]        = "the problem was solved to optimality, an optimal solution is available"
SCIP_STATUS[SCIP_STATUS_INFEASIBLE]     = "the problem was proven to be infeasible"
SCIP_STATUS[SCIP_STATUS_UNBOUNDED]      = "the problem was proven to be unbounded"
SCIP_STATUS[SCIP_STATUS_INFORUNBD]      = "the problem was proven to be either infeasible or unbounded"