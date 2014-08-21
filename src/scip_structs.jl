# Containers for SCIP structures
import Base: pointer

type SCIP_t
    array_ptr_scip::Array{Ptr{SCIP}}
end
type SCIP_BDCHGIDX_t
    array_ptr_scip_bdchgidx::Array{Ptr{SCIP_BDCHGIDX}}
end
type SCIP_BDCHGINFO_t
    array_ptr_scip_bdchginfo::Array{Ptr{SCIP_BDCHGINFO}}
end
type SCIP_BILINTERM_t
    array_ptr_scip_bilinterm::Array{Ptr{SCIP_BILINTERM}}
end
type SCIP_Bool_t
    array_ptr_scip_bool::Array{Ptr{SCIP_Bool}}
end
type SCIP_BOOLARRAY_t
    array_ptr_scip_boolarray::Array{Ptr{SCIP_BOOLARRAY}}
end
type SCIP_BOUNDCHG_t
    array_ptr_scip_boundchg::Array{Ptr{SCIP_BOUNDCHG}}
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
type SCIP_BT_t
    array_ptr_scip_bt::Array{Ptr{SCIP_BT}}
end
type SCIP_BTNODE_t
    array_ptr_scip_btnode::Array{Ptr{SCIP_BTNODE}}
end
type SCIP_CLIQUE_t
    array_ptr_scip_clique::Array{Ptr{SCIP_CLIQUE}}
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
type SCIP_CONFLICTHDLRDATA_t
    array_ptr_scip_conflicthdlrdata::Array{Ptr{SCIP_CONFLICTHDLRDATA}}
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
type SCIP_CONSHDLRDATA_t
    array_ptr_scip_conshdlrdata::Array{Ptr{SCIP_CONSHDLRDATA}}
end
type SCIP_CUT_t
    array_ptr_scip_cut::Array{Ptr{SCIP_CUT}}
end
type SCIP_CUTPOOL_t
    array_ptr_scip_cutpool::Array{Ptr{SCIP_CUTPOOL}}
end
type SCIP_DIALOG_t
    array_ptr_scip_dialog::Array{Ptr{SCIP_DIALOG}}
end
type SCIP_DIALOGDATA_t
    array_ptr_scip_dialogdata::Array{Ptr{SCIP_DIALOGDATA}}
end
type SCIP_DIALOGHDLR_t
    array_ptr_scip_dialoghdlr::Array{Ptr{SCIP_DIALOGHDLR}}
end
type SCIP_DIGRAPH_t
    array_ptr_scip_digraph::Array{Ptr{SCIP_DIGRAPH}}
end
type SCIP_DISP_t
    array_ptr_scip_disp::Array{Ptr{SCIP_DISP}}
end
type SCIP_DISPDATA_t
    array_ptr_scip_dispdata::Array{Ptr{SCIP_DISPDATA}}
end
type SCIP_DOMCHG_t
    array_ptr_scip_domchg::Array{Ptr{SCIP_DOMCHG}}
end
type SCIP_EVENT_t
    array_ptr_scip_event::Array{Ptr{SCIP_EVENT}}
end
type SCIP_EVENTDATA_t
    array_ptr_scip_eventdata::Array{Ptr{SCIP_EVENTDATA}}
end
type SCIP_EVENTHDLR_t
    array_ptr_scip_eventhdlr::Array{Ptr{SCIP_EVENTHDLR}}
end
type SCIP_EVENTHDLRDATA_t
    array_ptr_scip_eventhdlrdata::Array{Ptr{SCIP_EVENTHDLRDATA}}
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
type SCIP_HASHMAPLIST_t
    array_ptr_scip_hashmaplist::Array{Ptr{SCIP_HASHMAPLIST}}
end
type SCIP_HASHTABLE_t
    array_ptr_scip_hashtable::Array{Ptr{SCIP_HASHTABLE}}
end
type SCIP_HEUR_t
    array_ptr_scip_heur::Array{Ptr{SCIP_HEUR}}
end
type SCIP_HEURDATA_t
    array_ptr_scip_heurdata::Array{Ptr{SCIP_HEURDATA}}
end
type SCIP_HISTORY_t
    array_ptr_scip_history::Array{Ptr{SCIP_HISTORY}}
end
type SCIP_HOLELIST_t
    array_ptr_scip_holelist::Array{Ptr{SCIP_HOLELIST}}
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
type SCIP_MESSAGEHDLRDATA_t
    array_ptr_scip_messagehdlrdata::Array{Ptr{SCIP_MESSAGEHDLRDATA}}
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
type SCIP_NODESELDATA_t
    array_ptr_scip_nodeseldata::Array{Ptr{SCIP_NODESELDATA}}
end
type SCIP_PARAM_t
    array_ptr_scip_param::Array{Ptr{SCIP_PARAM}}
end
type SCIP_PQUEUE_t
    array_ptr_scip_pqueue::Array{Ptr{SCIP_PQUEUE}}
end
type SCIP_PRESOL_t
    array_ptr_scip_presol::Array{Ptr{SCIP_PRESOL}}
end
type SCIP_PRESOLDATA_t
    array_ptr_scip_presoldata::Array{Ptr{SCIP_PRESOLDATA}}
end
type SCIP_PRICER_t
    array_ptr_scip_pricer::Array{Ptr{SCIP_PRICER}}
end
type SCIP_PRICERDATA_t
    array_ptr_scip_pricerdata::Array{Ptr{SCIP_PRICERDATA}}
end
type SCIP_PROBDATA_t
    array_ptr_scip_probdata::Array{Ptr{SCIP_PROBDATA}}
end
type SCIP_PROFILE_t
    array_ptr_scip_profile::Array{Ptr{SCIP_PROFILE}}
end
type SCIP_PROP_t
    array_ptr_scip_prop::Array{Ptr{SCIP_PROP}}
end
type SCIP_PROPDATA_t
    array_ptr_scip_propdata::Array{Ptr{SCIP_PROPDATA}}
end
type SCIP_PTRARRAY_t
    array_ptr_scip_ptrarray::Array{Ptr{SCIP_PTRARRAY}}
end
type SCIP_QUADELEM_t
    array_ptr_scip_quadelem::Array{Ptr{SCIP_QUADELEM}}
end
type SCIP_QUADVARTERM_t
    array_ptr_scip_quadvarterm::Array{Ptr{SCIP_QUADVARTERM}}
end
type SCIP_QUEUE_t
    array_ptr_scip_queue::Array{Ptr{SCIP_QUEUE}}
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
type SCIP_RELAXDATA_t
    array_ptr_scip_relaxdata::Array{Ptr{SCIP_RELAXDATA}}
end
type SCIP_RESOURCEACTIVITY_t
    array_ptr_scip_resourceactivity::Array{Ptr{SCIP_RESOURCEACTIVITY}}
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
type SCIP_SEPADATA_t
    array_ptr_scip_sepadata::Array{Ptr{SCIP_SEPADATA}}
end
type SCIP_SOL_t
    array_ptr_scip_sol::Array{Ptr{SCIP_SOL}}
end
type SCIP_SPARSESOL_t
    array_ptr_scip_sparsesol::Array{Ptr{SCIP_SPARSESOL}}
end
type SCIP_VALUEHISTORY_t
    array_ptr_scip_valuehistory::Array{Ptr{SCIP_VALUEHISTORY}}
end
type SCIP_VAR_t
    array_ptr_scip_var::Array{Ptr{SCIP_VAR}}
end
type SCIP_VARDATA_t
    array_ptr_scip_vardata::Array{Ptr{SCIP_VARDATA}}
end

# Pointer and array access functions
array(scip::SCIP_t) = scip.array_ptr_scip
pointer(scip::SCIP_t) = array(scip)[1]
array(scip_bdchgidx::SCIP_BDCHGIDX_t) = scip_bdchgidx.array_ptr_scip_bdchgidx
pointer(scip_bdchgidx::SCIP_BDCHGIDX_t) = array(scip_bdchgidx)[1]
array(scip_bdchginfo::SCIP_BDCHGINFO_t) = scip_bdchginfo.array_ptr_scip_bdchginfo
pointer(scip_bdchginfo::SCIP_BDCHGINFO_t) = array(scip_bdchginfo)[1]
array(scip_bilinterm::SCIP_BILINTERM_t) = scip_bilinterm.array_ptr_scip_bilinterm
pointer(scip_bilinterm::SCIP_BILINTERM_t) = array(scip_bilinterm)[1]
array(scip_bool::SCIP_Bool_t) = scip_bool.array_ptr_scip_bool
pointer(scip_bool::SCIP_Bool_t) = array(scip_bool)[1]
array(scip_boolarray::SCIP_BOOLARRAY_t) = scip_boolarray.array_ptr_scip_boolarray
pointer(scip_boolarray::SCIP_BOOLARRAY_t) = array(scip_boolarray)[1]
array(scip_boundchg::SCIP_BOUNDCHG_t) = scip_boundchg.array_ptr_scip_boundchg
pointer(scip_boundchg::SCIP_BOUNDCHG_t) = array(scip_boundchg)[1]
array(scip_boundtype::SCIP_BOUNDTYPE_t) = scip_boundtype.array_ptr_scip_boundtype
pointer(scip_boundtype::SCIP_BOUNDTYPE_t) = array(scip_boundtype)[1]
array(scip_branchrule::SCIP_BRANCHRULE_t) = scip_branchrule.array_ptr_scip_branchrule
pointer(scip_branchrule::SCIP_BRANCHRULE_t) = array(scip_branchrule)[1]
array(scip_branchruledata::SCIP_BRANCHRULEDATA_t) = scip_branchruledata.array_ptr_scip_branchruledata
pointer(scip_branchruledata::SCIP_BRANCHRULEDATA_t) = array(scip_branchruledata)[1]
array(scip_bt::SCIP_BT_t) = scip_bt.array_ptr_scip_bt
pointer(scip_bt::SCIP_BT_t) = array(scip_bt)[1]
array(scip_btnode::SCIP_BTNODE_t) = scip_btnode.array_ptr_scip_btnode
pointer(scip_btnode::SCIP_BTNODE_t) = array(scip_btnode)[1]
array(scip_clique::SCIP_CLIQUE_t) = scip_clique.array_ptr_scip_clique
pointer(scip_clique::SCIP_CLIQUE_t) = array(scip_clique)[1]
array(scip_clock::SCIP_CLOCK_t) = scip_clock.array_ptr_scip_clock
pointer(scip_clock::SCIP_CLOCK_t) = array(scip_clock)[1]
array(scip_col::SCIP_COL_t) = scip_col.array_ptr_scip_col
pointer(scip_col::SCIP_COL_t) = array(scip_col)[1]
array(scip_conflicthdlr::SCIP_CONFLICTHDLR_t) = scip_conflicthdlr.array_ptr_scip_conflicthdlr
pointer(scip_conflicthdlr::SCIP_CONFLICTHDLR_t) = array(scip_conflicthdlr)[1]
array(scip_conflicthdlrdata::SCIP_CONFLICTHDLRDATA_t) = scip_conflicthdlrdata.array_ptr_scip_conflicthdlrdata
pointer(scip_conflicthdlrdata::SCIP_CONFLICTHDLRDATA_t) = array(scip_conflicthdlrdata)[1]
array(scip_cons::SCIP_CONS_t) = scip_cons.array_ptr_scip_cons
pointer(scip_cons::SCIP_CONS_t) = array(scip_cons)[1]
array(scip_consdata::SCIP_CONSDATA_t) = scip_consdata.array_ptr_scip_consdata
pointer(scip_consdata::SCIP_CONSDATA_t) = array(scip_consdata)[1]
array(scip_conshdlr::SCIP_CONSHDLR_t) = scip_conshdlr.array_ptr_scip_conshdlr
pointer(scip_conshdlr::SCIP_CONSHDLR_t) = array(scip_conshdlr)[1]
array(scip_conshdlrdata::SCIP_CONSHDLRDATA_t) = scip_conshdlrdata.array_ptr_scip_conshdlrdata
pointer(scip_conshdlrdata::SCIP_CONSHDLRDATA_t) = array(scip_conshdlrdata)[1]
array(scip_cut::SCIP_CUT_t) = scip_cut.array_ptr_scip_cut
pointer(scip_cut::SCIP_CUT_t) = array(scip_cut)[1]
array(scip_cutpool::SCIP_CUTPOOL_t) = scip_cutpool.array_ptr_scip_cutpool
pointer(scip_cutpool::SCIP_CUTPOOL_t) = array(scip_cutpool)[1]
array(scip_dialog::SCIP_DIALOG_t) = scip_dialog.array_ptr_scip_dialog
pointer(scip_dialog::SCIP_DIALOG_t) = array(scip_dialog)[1]
array(scip_dialogdata::SCIP_DIALOGDATA_t) = scip_dialogdata.array_ptr_scip_dialogdata
pointer(scip_dialogdata::SCIP_DIALOGDATA_t) = array(scip_dialogdata)[1]
array(scip_dialoghdlr::SCIP_DIALOGHDLR_t) = scip_dialoghdlr.array_ptr_scip_dialoghdlr
pointer(scip_dialoghdlr::SCIP_DIALOGHDLR_t) = array(scip_dialoghdlr)[1]
array(scip_digraph::SCIP_DIGRAPH_t) = scip_digraph.array_ptr_scip_digraph
pointer(scip_digraph::SCIP_DIGRAPH_t) = array(scip_digraph)[1]
array(scip_disp::SCIP_DISP_t) = scip_disp.array_ptr_scip_disp
pointer(scip_disp::SCIP_DISP_t) = array(scip_disp)[1]
array(scip_dispdata::SCIP_DISPDATA_t) = scip_dispdata.array_ptr_scip_dispdata
pointer(scip_dispdata::SCIP_DISPDATA_t) = array(scip_dispdata)[1]
array(scip_domchg::SCIP_DOMCHG_t) = scip_domchg.array_ptr_scip_domchg
pointer(scip_domchg::SCIP_DOMCHG_t) = array(scip_domchg)[1]
array(scip_event::SCIP_EVENT_t) = scip_event.array_ptr_scip_event
pointer(scip_event::SCIP_EVENT_t) = array(scip_event)[1]
array(scip_eventdata::SCIP_EVENTDATA_t) = scip_eventdata.array_ptr_scip_eventdata
pointer(scip_eventdata::SCIP_EVENTDATA_t) = array(scip_eventdata)[1]
array(scip_eventhdlr::SCIP_EVENTHDLR_t) = scip_eventhdlr.array_ptr_scip_eventhdlr
pointer(scip_eventhdlr::SCIP_EVENTHDLR_t) = array(scip_eventhdlr)[1]
array(scip_eventhdlrdata::SCIP_EVENTHDLRDATA_t) = scip_eventhdlrdata.array_ptr_scip_eventhdlrdata
pointer(scip_eventhdlrdata::SCIP_EVENTHDLRDATA_t) = array(scip_eventhdlrdata)[1]
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
array(scip_hashmaplist::SCIP_HASHMAPLIST_t) = scip_hashmaplist.array_ptr_scip_hashmaplist
pointer(scip_hashmaplist::SCIP_HASHMAPLIST_t) = array(scip_hashmaplist)[1]
array(scip_hashtable::SCIP_HASHTABLE_t) = scip_hashtable.array_ptr_scip_hashtable
pointer(scip_hashtable::SCIP_HASHTABLE_t) = array(scip_hashtable)[1]
array(scip_heur::SCIP_HEUR_t) = scip_heur.array_ptr_scip_heur
pointer(scip_heur::SCIP_HEUR_t) = array(scip_heur)[1]
array(scip_heurdata::SCIP_HEURDATA_t) = scip_heurdata.array_ptr_scip_heurdata
pointer(scip_heurdata::SCIP_HEURDATA_t) = array(scip_heurdata)[1]
array(scip_history::SCIP_HISTORY_t) = scip_history.array_ptr_scip_history
pointer(scip_history::SCIP_HISTORY_t) = array(scip_history)[1]
array(scip_holelist::SCIP_HOLELIST_t) = scip_holelist.array_ptr_scip_holelist
pointer(scip_holelist::SCIP_HOLELIST_t) = array(scip_holelist)[1]
array(scip_intarray::SCIP_INTARRAY_t) = scip_intarray.array_ptr_scip_intarray
pointer(scip_intarray::SCIP_INTARRAY_t) = array(scip_intarray)[1]
array(scip_interval::SCIP_INTERVAL_t) = scip_interval.array_ptr_scip_interval
pointer(scip_interval::SCIP_INTERVAL_t) = array(scip_interval)[1]
array(scip_lpi::SCIP_LPI_t) = scip_lpi.array_ptr_scip_lpi
pointer(scip_lpi::SCIP_LPI_t) = array(scip_lpi)[1]
array(scip_messagehdlr::SCIP_MESSAGEHDLR_t) = scip_messagehdlr.array_ptr_scip_messagehdlr
pointer(scip_messagehdlr::SCIP_MESSAGEHDLR_t) = array(scip_messagehdlr)[1]
array(scip_messagehdlrdata::SCIP_MESSAGEHDLRDATA_t) = scip_messagehdlrdata.array_ptr_scip_messagehdlrdata
pointer(scip_messagehdlrdata::SCIP_MESSAGEHDLRDATA_t) = array(scip_messagehdlrdata)[1]
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
array(scip_nodeseldata::SCIP_NODESELDATA_t) = scip_nodeseldata.array_ptr_scip_nodeseldata
pointer(scip_nodeseldata::SCIP_NODESELDATA_t) = array(scip_nodeseldata)[1]
array(scip_param::SCIP_PARAM_t) = scip_param.array_ptr_scip_param
pointer(scip_param::SCIP_PARAM_t) = array(scip_param)[1]
array(scip_pqueue::SCIP_PQUEUE_t) = scip_pqueue.array_ptr_scip_pqueue
pointer(scip_pqueue::SCIP_PQUEUE_t) = array(scip_pqueue)[1]
array(scip_presol::SCIP_PRESOL_t) = scip_presol.array_ptr_scip_presol
pointer(scip_presol::SCIP_PRESOL_t) = array(scip_presol)[1]
array(scip_presoldata::SCIP_PRESOLDATA_t) = scip_presoldata.array_ptr_scip_presoldata
pointer(scip_presoldata::SCIP_PRESOLDATA_t) = array(scip_presoldata)[1]
array(scip_pricer::SCIP_PRICER_t) = scip_pricer.array_ptr_scip_pricer
pointer(scip_pricer::SCIP_PRICER_t) = array(scip_pricer)[1]
array(scip_pricerdata::SCIP_PRICERDATA_t) = scip_pricerdata.array_ptr_scip_pricerdata
pointer(scip_pricerdata::SCIP_PRICERDATA_t) = array(scip_pricerdata)[1]
array(scip_probdata::SCIP_PROBDATA_t) = scip_probdata.array_ptr_scip_probdata
pointer(scip_probdata::SCIP_PROBDATA_t) = array(scip_probdata)[1]
array(scip_profile::SCIP_PROFILE_t) = scip_profile.array_ptr_scip_profile
pointer(scip_profile::SCIP_PROFILE_t) = array(scip_profile)[1]
array(scip_prop::SCIP_PROP_t) = scip_prop.array_ptr_scip_prop
pointer(scip_prop::SCIP_PROP_t) = array(scip_prop)[1]
array(scip_propdata::SCIP_PROPDATA_t) = scip_propdata.array_ptr_scip_propdata
pointer(scip_propdata::SCIP_PROPDATA_t) = array(scip_propdata)[1]
array(scip_ptrarray::SCIP_PTRARRAY_t) = scip_ptrarray.array_ptr_scip_ptrarray
pointer(scip_ptrarray::SCIP_PTRARRAY_t) = array(scip_ptrarray)[1]
array(scip_quadelem::SCIP_QUADELEM_t) = scip_quadelem.array_ptr_scip_quadelem
pointer(scip_quadelem::SCIP_QUADELEM_t) = array(scip_quadelem)[1]
array(scip_quadvarterm::SCIP_QUADVARTERM_t) = scip_quadvarterm.array_ptr_scip_quadvarterm
pointer(scip_quadvarterm::SCIP_QUADVARTERM_t) = array(scip_quadvarterm)[1]
array(scip_queue::SCIP_QUEUE_t) = scip_queue.array_ptr_scip_queue
pointer(scip_queue::SCIP_QUEUE_t) = array(scip_queue)[1]
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
array(scip_relaxdata::SCIP_RELAXDATA_t) = scip_relaxdata.array_ptr_scip_relaxdata
pointer(scip_relaxdata::SCIP_RELAXDATA_t) = array(scip_relaxdata)[1]
array(scip_resourceactivity::SCIP_RESOURCEACTIVITY_t) = scip_resourceactivity.array_ptr_scip_resourceactivity
pointer(scip_resourceactivity::SCIP_RESOURCEACTIVITY_t) = array(scip_resourceactivity)[1]
array(scip_result::SCIP_RESULT_t) = scip_result.array_ptr_scip_result
pointer(scip_result::SCIP_RESULT_t) = array(scip_result)[1]
array(scip_row::SCIP_ROW_t) = scip_row.array_ptr_scip_row
pointer(scip_row::SCIP_ROW_t) = array(scip_row)[1]
array(scip_sepa::SCIP_SEPA_t) = scip_sepa.array_ptr_scip_sepa
pointer(scip_sepa::SCIP_SEPA_t) = array(scip_sepa)[1]
array(scip_sepadata::SCIP_SEPADATA_t) = scip_sepadata.array_ptr_scip_sepadata
pointer(scip_sepadata::SCIP_SEPADATA_t) = array(scip_sepadata)[1]
array(scip_sol::SCIP_SOL_t) = scip_sol.array_ptr_scip_sol
pointer(scip_sol::SCIP_SOL_t) = array(scip_sol)[1]
array(scip_sparsesol::SCIP_SPARSESOL_t) = scip_sparsesol.array_ptr_scip_sparsesol
pointer(scip_sparsesol::SCIP_SPARSESOL_t) = array(scip_sparsesol)[1]
array(scip_valuehistory::SCIP_VALUEHISTORY_t) = scip_valuehistory.array_ptr_scip_valuehistory
pointer(scip_valuehistory::SCIP_VALUEHISTORY_t) = array(scip_valuehistory)[1]
array(scip_var::SCIP_VAR_t) = scip_var.array_ptr_scip_var
pointer(scip_var::SCIP_VAR_t) = array(scip_var)[1]
array(scip_vardata::SCIP_VARDATA_t) = scip_vardata.array_ptr_scip_vardata
pointer(scip_vardata::SCIP_VARDATA_t) = array(scip_vardata)[1]
