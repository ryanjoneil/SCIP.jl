# Containers for SCIP structures
import Base: pointer

type SCIP_t
    array_ptr_scip::Array{Ptr{SCIP}}
end
type SCIP_BDCHGIDX_t
    array_ptr_scip_bdchgidx::Array{Ptr{SCIP_BDCHGIDX}}
end
type SCIP_Bool_t
    array_ptr_scip_bool::Array{Ptr{SCIP_Bool}}
end
type SCIP_BOOLARRAY_t
    array_ptr_scip_boolarray::Array{Ptr{SCIP_BOOLARRAY}}
end
type SCIP_BOUNDTYPE_t
    array_ptr_scip_boundtype::Array{Ptr{SCIP_BOUNDTYPE}}
end
type SCIP_BRANCHRULE_t
    array_ptr_scip_branchrule::Array{Ptr{SCIP_BRANCHRULE}}
end
type SCIP_BRANCHRULEDATA_t
    array_ptr_scip_branchruledata::Array{Ptr{SCIP_BRANCHRULEDATA}}
end
type SCIP_CLOCK_t
    array_ptr_scip_clock::Array{Ptr{SCIP_CLOCK}}
end
type SCIP_COL_t
    array_ptr_scip_col::Array{Ptr{SCIP_COL}}
end
type SCIP_CONFLICTHDLR_t
    array_ptr_scip_conflicthdlr::Array{Ptr{SCIP_CONFLICTHDLR}}
end
type SCIP_CONS_t
    array_ptr_scip_cons::Array{Ptr{SCIP_CONS}}
end
type SCIP_CONSDATA_t
    array_ptr_scip_consdata::Array{Ptr{SCIP_CONSDATA}}
end
type SCIP_CONSHDLR_t
    array_ptr_scip_conshdlr::Array{Ptr{SCIP_CONSHDLR}}
end
type SCIP_CUTPOOL_t
    array_ptr_scip_cutpool::Array{Ptr{SCIP_CUTPOOL}}
end
type SCIP_DIALOG_t
    array_ptr_scip_dialog::Array{Ptr{SCIP_DIALOG}}
end
type SCIP_EVENTDATA_t
    array_ptr_scip_eventdata::Array{Ptr{SCIP_EVENTDATA}}
end
type SCIP_EVENTHDLR_t
    array_ptr_scip_eventhdlr::Array{Ptr{SCIP_EVENTHDLR}}
end
type SCIP_EXPR_t
    array_ptr_scip_expr::Array{Ptr{SCIP_EXPR}}
end
type SCIP_EXPRCURV_t
    array_ptr_scip_exprcurv::Array{Ptr{SCIP_EXPRCURV}}
end
type SCIP_EXPRDATA_MONOMIAL_t
    array_ptr_scip_exprdata_monomial::Array{Ptr{SCIP_EXPRDATA_MONOMIAL}}
end
type SCIP_EXPRGRAPH_t
    array_ptr_scip_exprgraph::Array{Ptr{SCIP_EXPRGRAPH}}
end
type SCIP_EXPRGRAPHNODE_t
    array_ptr_scip_exprgraphnode::Array{Ptr{SCIP_EXPRGRAPHNODE}}
end
type SCIP_EXPRINTDATA_t
    array_ptr_scip_exprintdata::Array{Ptr{SCIP_EXPRINTDATA}}
end
type SCIP_EXPRTREE_t
    array_ptr_scip_exprtree::Array{Ptr{SCIP_EXPRTREE}}
end
type SCIP_HASHMAP_t
    array_ptr_scip_hashmap::Array{Ptr{SCIP_HASHMAP}}
end
type SCIP_HEUR_t
    array_ptr_scip_heur::Array{Ptr{SCIP_HEUR}}
end
type SCIP_INTARRAY_t
    array_ptr_scip_intarray::Array{Ptr{SCIP_INTARRAY}}
end
type SCIP_INTERVAL_t
    array_ptr_scip_interval::Array{Ptr{SCIP_INTERVAL}}
end
type SCIP_LPI_t
    array_ptr_scip_lpi::Array{Ptr{SCIP_LPI}}
end
type SCIP_MESSAGEHDLR_t
    array_ptr_scip_messagehdlr::Array{Ptr{SCIP_MESSAGEHDLR}}
end
type SCIP_NLPI_t
    array_ptr_scip_nlpi::Array{Ptr{SCIP_NLPI}}
end
type SCIP_NLPIPROBLEM_t
    array_ptr_scip_nlpiproblem::Array{Ptr{SCIP_NLPIPROBLEM}}
end
type SCIP_NLPSTATISTICS_t
    array_ptr_scip_nlpstatistics::Array{Ptr{SCIP_NLPSTATISTICS}}
end
type SCIP_NLROW_t
    array_ptr_scip_nlrow::Array{Ptr{SCIP_NLROW}}
end
type SCIP_NODE_t
    array_ptr_scip_node::Array{Ptr{SCIP_NODE}}
end
type SCIP_NODESEL_t
    array_ptr_scip_nodesel::Array{Ptr{SCIP_NODESEL}}
end
type SCIP_PARAM_t
    array_ptr_scip_param::Array{Ptr{SCIP_PARAM}}
end
type SCIP_PRESOL_t
    array_ptr_scip_presol::Array{Ptr{SCIP_PRESOL}}
end
type SCIP_PRICER_t
    array_ptr_scip_pricer::Array{Ptr{SCIP_PRICER}}
end
type SCIP_PROBDATA_t
    array_ptr_scip_probdata::Array{Ptr{SCIP_PROBDATA}}
end
type SCIP_PROP_t
    array_ptr_scip_prop::Array{Ptr{SCIP_PROP}}
end
type SCIP_PTRARRAY_t
    array_ptr_scip_ptrarray::Array{Ptr{SCIP_PTRARRAY}}
end
type SCIP_QUADELEM_t
    array_ptr_scip_quadelem::Array{Ptr{SCIP_QUADELEM}}
end
type SCIP_READER_t
    array_ptr_scip_reader::Array{Ptr{SCIP_READER}}
end
type SCIP_READERDATA_t
    array_ptr_scip_readerdata::Array{Ptr{SCIP_READERDATA}}
end
type SCIP_Real_t
    array_ptr_scip_real::Array{Ptr{SCIP_Real}}
end
type SCIP_REALARRAY_t
    array_ptr_scip_realarray::Array{Ptr{SCIP_REALARRAY}}
end
type SCIP_RELAX_t
    array_ptr_scip_relax::Array{Ptr{SCIP_RELAX}}
end
type SCIP_RESULT_t
    array_ptr_scip_result::Array{Ptr{SCIP_RESULT}}
end
type SCIP_ROW_t
    array_ptr_scip_row::Array{Ptr{SCIP_ROW}}
end
type SCIP_SEPA_t
    array_ptr_scip_sepa::Array{Ptr{SCIP_SEPA}}
end
type SCIP_SOL_t
    array_ptr_scip_sol::Array{Ptr{SCIP_SOL}}
end
type SCIP_VAR_t
    array_ptr_scip_var::Array{Ptr{SCIP_VAR}}
end

# Pointer and array access functions
array(scip::SCIP_t) = scip.array_ptr_scip
pointer(scip::SCIP_t) = array(scip)[1]
array(scip_bdchgidx::SCIP_BDCHGIDX_t) = scip_bdchgidx.array_ptr_scip_bdchgidx
pointer(scip_bdchgidx::SCIP_BDCHGIDX_t) = array(scip_bdchgidx)[1]
array(scip_bool::SCIP_Bool_t) = scip_bool.array_ptr_scip_bool
pointer(scip_bool::SCIP_Bool_t) = array(scip_bool)[1]
array(scip_boolarray::SCIP_BOOLARRAY_t) = scip_boolarray.array_ptr_scip_boolarray
pointer(scip_boolarray::SCIP_BOOLARRAY_t) = array(scip_boolarray)[1]
array(scip_boundtype::SCIP_BOUNDTYPE_t) = scip_boundtype.array_ptr_scip_boundtype
pointer(scip_boundtype::SCIP_BOUNDTYPE_t) = array(scip_boundtype)[1]
array(scip_branchrule::SCIP_BRANCHRULE_t) = scip_branchrule.array_ptr_scip_branchrule
pointer(scip_branchrule::SCIP_BRANCHRULE_t) = array(scip_branchrule)[1]
array(scip_branchruledata::SCIP_BRANCHRULEDATA_t) = scip_branchruledata.array_ptr_scip_branchruledata
pointer(scip_branchruledata::SCIP_BRANCHRULEDATA_t) = array(scip_branchruledata)[1]
array(scip_clock::SCIP_CLOCK_t) = scip_clock.array_ptr_scip_clock
pointer(scip_clock::SCIP_CLOCK_t) = array(scip_clock)[1]
array(scip_col::SCIP_COL_t) = scip_col.array_ptr_scip_col
pointer(scip_col::SCIP_COL_t) = array(scip_col)[1]
array(scip_conflicthdlr::SCIP_CONFLICTHDLR_t) = scip_conflicthdlr.array_ptr_scip_conflicthdlr
pointer(scip_conflicthdlr::SCIP_CONFLICTHDLR_t) = array(scip_conflicthdlr)[1]
array(scip_cons::SCIP_CONS_t) = scip_cons.array_ptr_scip_cons
pointer(scip_cons::SCIP_CONS_t) = array(scip_cons)[1]
array(scip_consdata::SCIP_CONSDATA_t) = scip_consdata.array_ptr_scip_consdata
pointer(scip_consdata::SCIP_CONSDATA_t) = array(scip_consdata)[1]
array(scip_conshdlr::SCIP_CONSHDLR_t) = scip_conshdlr.array_ptr_scip_conshdlr
pointer(scip_conshdlr::SCIP_CONSHDLR_t) = array(scip_conshdlr)[1]
array(scip_cutpool::SCIP_CUTPOOL_t) = scip_cutpool.array_ptr_scip_cutpool
pointer(scip_cutpool::SCIP_CUTPOOL_t) = array(scip_cutpool)[1]
array(scip_dialog::SCIP_DIALOG_t) = scip_dialog.array_ptr_scip_dialog
pointer(scip_dialog::SCIP_DIALOG_t) = array(scip_dialog)[1]
array(scip_eventdata::SCIP_EVENTDATA_t) = scip_eventdata.array_ptr_scip_eventdata
pointer(scip_eventdata::SCIP_EVENTDATA_t) = array(scip_eventdata)[1]
array(scip_eventhdlr::SCIP_EVENTHDLR_t) = scip_eventhdlr.array_ptr_scip_eventhdlr
pointer(scip_eventhdlr::SCIP_EVENTHDLR_t) = array(scip_eventhdlr)[1]
array(scip_expr::SCIP_EXPR_t) = scip_expr.array_ptr_scip_expr
pointer(scip_expr::SCIP_EXPR_t) = array(scip_expr)[1]
array(scip_exprcurv::SCIP_EXPRCURV_t) = scip_exprcurv.array_ptr_scip_exprcurv
pointer(scip_exprcurv::SCIP_EXPRCURV_t) = array(scip_exprcurv)[1]
array(scip_exprdata_monomial::SCIP_EXPRDATA_MONOMIAL_t) = scip_exprdata_monomial.array_ptr_scip_exprdata_monomial
pointer(scip_exprdata_monomial::SCIP_EXPRDATA_MONOMIAL_t) = array(scip_exprdata_monomial)[1]
array(scip_exprgraph::SCIP_EXPRGRAPH_t) = scip_exprgraph.array_ptr_scip_exprgraph
pointer(scip_exprgraph::SCIP_EXPRGRAPH_t) = array(scip_exprgraph)[1]
array(scip_exprgraphnode::SCIP_EXPRGRAPHNODE_t) = scip_exprgraphnode.array_ptr_scip_exprgraphnode
pointer(scip_exprgraphnode::SCIP_EXPRGRAPHNODE_t) = array(scip_exprgraphnode)[1]
array(scip_exprintdata::SCIP_EXPRINTDATA_t) = scip_exprintdata.array_ptr_scip_exprintdata
pointer(scip_exprintdata::SCIP_EXPRINTDATA_t) = array(scip_exprintdata)[1]
array(scip_exprtree::SCIP_EXPRTREE_t) = scip_exprtree.array_ptr_scip_exprtree
pointer(scip_exprtree::SCIP_EXPRTREE_t) = array(scip_exprtree)[1]
array(scip_hashmap::SCIP_HASHMAP_t) = scip_hashmap.array_ptr_scip_hashmap
pointer(scip_hashmap::SCIP_HASHMAP_t) = array(scip_hashmap)[1]
array(scip_heur::SCIP_HEUR_t) = scip_heur.array_ptr_scip_heur
pointer(scip_heur::SCIP_HEUR_t) = array(scip_heur)[1]
array(scip_intarray::SCIP_INTARRAY_t) = scip_intarray.array_ptr_scip_intarray
pointer(scip_intarray::SCIP_INTARRAY_t) = array(scip_intarray)[1]
array(scip_interval::SCIP_INTERVAL_t) = scip_interval.array_ptr_scip_interval
pointer(scip_interval::SCIP_INTERVAL_t) = array(scip_interval)[1]
array(scip_lpi::SCIP_LPI_t) = scip_lpi.array_ptr_scip_lpi
pointer(scip_lpi::SCIP_LPI_t) = array(scip_lpi)[1]
array(scip_messagehdlr::SCIP_MESSAGEHDLR_t) = scip_messagehdlr.array_ptr_scip_messagehdlr
pointer(scip_messagehdlr::SCIP_MESSAGEHDLR_t) = array(scip_messagehdlr)[1]
array(scip_nlpi::SCIP_NLPI_t) = scip_nlpi.array_ptr_scip_nlpi
pointer(scip_nlpi::SCIP_NLPI_t) = array(scip_nlpi)[1]
array(scip_nlpiproblem::SCIP_NLPIPROBLEM_t) = scip_nlpiproblem.array_ptr_scip_nlpiproblem
pointer(scip_nlpiproblem::SCIP_NLPIPROBLEM_t) = array(scip_nlpiproblem)[1]
array(scip_nlpstatistics::SCIP_NLPSTATISTICS_t) = scip_nlpstatistics.array_ptr_scip_nlpstatistics
pointer(scip_nlpstatistics::SCIP_NLPSTATISTICS_t) = array(scip_nlpstatistics)[1]
array(scip_nlrow::SCIP_NLROW_t) = scip_nlrow.array_ptr_scip_nlrow
pointer(scip_nlrow::SCIP_NLROW_t) = array(scip_nlrow)[1]
array(scip_node::SCIP_NODE_t) = scip_node.array_ptr_scip_node
pointer(scip_node::SCIP_NODE_t) = array(scip_node)[1]
array(scip_nodesel::SCIP_NODESEL_t) = scip_nodesel.array_ptr_scip_nodesel
pointer(scip_nodesel::SCIP_NODESEL_t) = array(scip_nodesel)[1]
array(scip_param::SCIP_PARAM_t) = scip_param.array_ptr_scip_param
pointer(scip_param::SCIP_PARAM_t) = array(scip_param)[1]
array(scip_presol::SCIP_PRESOL_t) = scip_presol.array_ptr_scip_presol
pointer(scip_presol::SCIP_PRESOL_t) = array(scip_presol)[1]
array(scip_pricer::SCIP_PRICER_t) = scip_pricer.array_ptr_scip_pricer
pointer(scip_pricer::SCIP_PRICER_t) = array(scip_pricer)[1]
array(scip_probdata::SCIP_PROBDATA_t) = scip_probdata.array_ptr_scip_probdata
pointer(scip_probdata::SCIP_PROBDATA_t) = array(scip_probdata)[1]
array(scip_prop::SCIP_PROP_t) = scip_prop.array_ptr_scip_prop
pointer(scip_prop::SCIP_PROP_t) = array(scip_prop)[1]
array(scip_ptrarray::SCIP_PTRARRAY_t) = scip_ptrarray.array_ptr_scip_ptrarray
pointer(scip_ptrarray::SCIP_PTRARRAY_t) = array(scip_ptrarray)[1]
array(scip_quadelem::SCIP_QUADELEM_t) = scip_quadelem.array_ptr_scip_quadelem
pointer(scip_quadelem::SCIP_QUADELEM_t) = array(scip_quadelem)[1]
array(scip_reader::SCIP_READER_t) = scip_reader.array_ptr_scip_reader
pointer(scip_reader::SCIP_READER_t) = array(scip_reader)[1]
array(scip_readerdata::SCIP_READERDATA_t) = scip_readerdata.array_ptr_scip_readerdata
pointer(scip_readerdata::SCIP_READERDATA_t) = array(scip_readerdata)[1]
array(scip_real::SCIP_Real_t) = scip_real.array_ptr_scip_real
pointer(scip_real::SCIP_Real_t) = array(scip_real)[1]
array(scip_realarray::SCIP_REALARRAY_t) = scip_realarray.array_ptr_scip_realarray
pointer(scip_realarray::SCIP_REALARRAY_t) = array(scip_realarray)[1]
array(scip_relax::SCIP_RELAX_t) = scip_relax.array_ptr_scip_relax
pointer(scip_relax::SCIP_RELAX_t) = array(scip_relax)[1]
array(scip_result::SCIP_RESULT_t) = scip_result.array_ptr_scip_result
pointer(scip_result::SCIP_RESULT_t) = array(scip_result)[1]
array(scip_row::SCIP_ROW_t) = scip_row.array_ptr_scip_row
pointer(scip_row::SCIP_ROW_t) = array(scip_row)[1]
array(scip_sepa::SCIP_SEPA_t) = scip_sepa.array_ptr_scip_sepa
pointer(scip_sepa::SCIP_SEPA_t) = array(scip_sepa)[1]
array(scip_sol::SCIP_SOL_t) = scip_sol.array_ptr_scip_sol
pointer(scip_sol::SCIP_SOL_t) = array(scip_sol)[1]
array(scip_var::SCIP_VAR_t) = scip_var.array_ptr_scip_var
pointer(scip_var::SCIP_VAR_t) = array(scip_var)[1]
