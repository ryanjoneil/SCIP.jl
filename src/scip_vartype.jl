typealias SCIP_Vartype Int

SCIP_VARTYPE_BINARY     = 0
SCIP_VARTYPE_INTEGER    = 1
SCIP_VARTYPE_IMPLINT    = 2
SCIP_VARTYPE_CONTINUOUS = 3

SCIP_VARTYPE = Dict{SCIP_Vartype, String}()
SCIP_VARTYPE[SCIP_VARTYPE_BINARY]     = "binary variable: x in {0,1}"
SCIP_VARTYPE[SCIP_VARTYPE_INTEGER]    = "integer variable: x in {lb, ..., ub}"
SCIP_VARTYPE[SCIP_VARTYPE_IMPLINT]    = "implicit integer variable: continuous variable, that is always integral"
SCIP_VARTYPE[SCIP_VARTYPE_CONTINUOUS] = "continuous variable: x in [lb,ub]"