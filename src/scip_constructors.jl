# # Convenience constructors/destructors
# function SCIPcreate()
#     scip = SCIP_t(Array(Ptr{SCIP}, 1))
#     SCIPcreate(scip)
#     finalizer(scip, scip->SCIPfree(scip))
#     return scip
# end
# function SCIPcreateNlRowFromRow(scip::SCIP_t, row::SCIP_ROW_t)
#     nlrow = SCIP_NLROW_t(Array(Ptr{SCIP_NLROW}, 1))
#     SCIPcreateNlRowFromRow(scip, nlrow, row)
#     finalizer(nlrow, nlrow->SCIPreleaseNlRow(scip, nlrow))
#     return scip_nlrow
# end
# function SCIPcreateCutpool(scip::SCIP_t, agelimit)
#     cutpool = SCIP_CUTPOOL_t(Array(Ptr{SCIP_CUTPOOL}, 1))
#     SCIPcreateCutpool(scip, cutpool, agelimit)
#     finalizer(cutpool, cutpool->SCIPfreeCutpool(scip, cutpool))
#     return scip_cutpool
# end
# function SCIPcreateSol(scip::SCIP_t, heur::SCIP_HEUR_t)
#     sol = SCIP_SOL_t(Array(Ptr{SCIP_SOL}, 1))
#     SCIPcreateSol(scip, sol, heur)
#     finalizer(sol, sol->SCIPfreeSol(scip, sol))
#     return scip_sol
# end
# function SCIPcreateLPSol(scip::SCIP_t, heur::SCIP_HEUR_t)
#     sol = SCIP_SOL_t(Array(Ptr{SCIP_SOL}, 1))
#     SCIPcreateLPSol(scip, sol, heur)
#     finalizer(sol, sol->SCIPfreeSol(scip, sol))
#     return scip_sol
# end
# function SCIPcreateNLPSol(scip::SCIP_t, heur::SCIP_HEUR_t)
#     sol = SCIP_SOL_t(Array(Ptr{SCIP_SOL}, 1))
#     SCIPcreateNLPSol(scip, sol, heur)
#     finalizer(sol, sol->SCIPfreeSol(scip, sol))
#     return scip_sol
# end
# function SCIPcreateRelaxSol(scip::SCIP_t, heur::SCIP_HEUR_t)
#     sol = SCIP_SOL_t(Array(Ptr{SCIP_SOL}, 1))
#     SCIPcreateRelaxSol(scip, sol, heur)
#     finalizer(sol, sol->SCIPfreeSol(scip, sol))
#     return scip_sol
# end
# function SCIPcreatePseudoSol(scip::SCIP_t, heur::SCIP_HEUR_t)
#     sol = SCIP_SOL_t(Array(Ptr{SCIP_SOL}, 1))
#     SCIPcreatePseudoSol(scip, sol, heur)
#     finalizer(sol, sol->SCIPfreeSol(scip, sol))
#     return scip_sol
# end
# function SCIPcreateCurrentSol(scip::SCIP_t, heur::SCIP_HEUR_t)
#     sol = SCIP_SOL_t(Array(Ptr{SCIP_SOL}, 1))
#     SCIPcreateCurrentSol(scip, sol, heur)
#     finalizer(sol, sol->SCIPfreeSol(scip, sol))
#     return scip_sol
# end
# function SCIPcreateUnknownSol(scip::SCIP_t, heur::SCIP_HEUR_t)
#     sol = SCIP_SOL_t(Array(Ptr{SCIP_SOL}, 1))
#     SCIPcreateUnknownSol(scip, sol, heur)
#     finalizer(sol, sol->SCIPfreeSol(scip, sol))
#     return scip_sol
# end
# function SCIPcreateOrigSol(scip::SCIP_t, heur::SCIP_HEUR_t)
#     sol = SCIP_SOL_t(Array(Ptr{SCIP_SOL}, 1))
#     SCIPcreateOrigSol(scip, sol, heur)
#     finalizer(sol, sol->SCIPfreeSol(scip, sol))
#     return scip_sol
# end
# function SCIPcreateSolCopy(scip::SCIP_t, sourcesol::SCIP_SOL_t)
#     sol = SCIP_SOL_t(Array(Ptr{SCIP_SOL}, 1))
#     SCIPcreateSolCopy(scip, sol, sourcesol)
#     finalizer(sol, sol->SCIPfreeSol(scip, sol))
#     return scip_sol
# end
# function SCIPcreateFiniteSolCopy(scip::SCIP_t, sourcesol::SCIP_SOL_t, success::SCIP_Bool_t)
#     sol = SCIP_SOL_t(Array(Ptr{SCIP_SOL}, 1))
#     SCIPcreateFiniteSolCopy(scip, sol, sourcesol, success)
#     finalizer(sol, sol->SCIPfreeSol(scip, sol))
#     return scip_sol
# end
# function SCIPcreateClock(scip::SCIP_t)
#     clck = SCIP_CLOCK_t(Array(Ptr{SCIP_CLOCK}, 1))
#     SCIPcreateClock(scip, clck)
#     finalizer(clck, clck->SCIPfreeClock(scip, clck))
#     return scip_clock
# end
# function SCIPcreateCPUClock(scip::SCIP_t)
#     clck = SCIP_CLOCK_t(Array(Ptr{SCIP_CLOCK}, 1))
#     SCIPcreateCPUClock(scip, clck)
#     finalizer(clck, clck->SCIPfreeClock(scip, clck))
#     return scip_clock
# end
# function SCIPcreateWallClock(scip::SCIP_t)
#     clck = SCIP_CLOCK_t(Array(Ptr{SCIP_CLOCK}, 1))
#     SCIPcreateWallClock(scip, clck)
#     finalizer(clck, clck->SCIPfreeClock(scip, clck))
#     return scip_clock
# end
# function SCIPcreateRealarray(scip::SCIP_t)
#     realarray = SCIP_REALARRAY_t(Array(Ptr{SCIP_REALARRAY}, 1))
#     SCIPcreateRealarray(scip, realarray)
#     finalizer(realarray, realarray->SCIPfreeRealarray(scip, realarray))
#     return scip_realarray
# end
# function SCIPcreateIntarray(scip::SCIP_t)
#     intarray = SCIP_INTARRAY_t(Array(Ptr{SCIP_INTARRAY}, 1))
#     SCIPcreateIntarray(scip, intarray)
#     finalizer(intarray, intarray->SCIPfreeIntarray(scip, intarray))
#     return scip_intarray
# end
# function SCIPcreateBoolarray(scip::SCIP_t)
#     boolarray = SCIP_BOOLARRAY_t(Array(Ptr{SCIP_BOOLARRAY}, 1))
#     SCIPcreateBoolarray(scip, boolarray)
#     finalizer(boolarray, boolarray->SCIPfreeBoolarray(scip, boolarray))
#     return scip_boolarray
# end
# function SCIPcreatePtrarray(scip::SCIP_t)
#     ptrarray = SCIP_PTRARRAY_t(Array(Ptr{SCIP_PTRARRAY}, 1))
#     SCIPcreatePtrarray(scip, ptrarray)
#     finalizer(ptrarray, ptrarray->SCIPfreePtrarray(scip, ptrarray))
#     return scip_ptrarray
# end
# 

# TODO: construction/destruction
function SCIPcreate()
    s = SCIP_t(Array(Ptr{SCIP}, 1))
    SCIPcreate(s)
    finalizer(s, s->SCIPfree(s))
    return s
end