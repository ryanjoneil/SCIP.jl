typealias SCIP_Status Int

SCIP_STATUS_UNKNOWN        =  0
SCIP_STATUS_USERINTERRUPT  =  1
SCIP_STATUS_NODELIMIT      =  2
SCIP_STATUS_TOTALNODELIMIT =  3
SCIP_STATUS_STALLNODELIMIT =  4
SCIP_STATUS_TIMELIMIT      =  5
SCIP_STATUS_MEMLIMIT       =  6
SCIP_STATUS_GAPLIMIT       =  7
SCIP_STATUS_SOLLIMIT       =  8
SCIP_STATUS_BESTSOLLIMIT   =  9
SCIP_STATUS_OPTIMAL        = 10
SCIP_STATUS_INFEASIBLE     = 11
SCIP_STATUS_UNBOUNDED      = 12
SCIP_STATUS_INFORUNBD      = 13

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