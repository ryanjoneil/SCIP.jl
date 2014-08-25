# Containers for SCIP structures
import Base: pointer

type _SCIP_t
    array_ptr_scip::Array{Ptr{_SCIP}}
end
type _SCIP_BDCHGIDX_t
    array_ptr_scip_bdchgidx::Array{Ptr{_SCIP_BDCHGIDX}}
end
type _SCIP_BDCHGINFO_t
    array_ptr_scip_bdchginfo::Array{Ptr{_SCIP_BDCHGINFO}}
end
type _SCIP_BILINTERM_t
    array_ptr_scip_bilinterm::Array{Ptr{_SCIP_BILINTERM}}
end
type _SCIP_Bool_t
    array_ptr_scip_bool::Array{Ptr{_SCIP_Bool}}
end
type _SCIP_BOOLARRAY_t
    array_ptr_scip_boolarray::Array{Ptr{_SCIP_BOOLARRAY}}
end
type _SCIP_BOUNDCHG_t
    array_ptr_scip_boundchg::Array{Ptr{_SCIP_BOUNDCHG}}
end
type _SCIP_BOUNDTYPE_t
    array_ptr_scip_boundtype::Array{Ptr{_SCIP_BOUNDTYPE}}
end
type _SCIP_BRANCHRULE_t
    array_ptr_scip_branchrule::Array{Ptr{_SCIP_BRANCHRULE}}
end
type _SCIP_BRANCHRULEDATA_t
    array_ptr_scip_branchruledata::Array{Ptr{_SCIP_BRANCHRULEDATA}}
end
type _SCIP_BT_t
    array_ptr_scip_bt::Array{Ptr{_SCIP_BT}}
end
type _SCIP_BTNODE_t
    array_ptr_scip_btnode::Array{Ptr{_SCIP_BTNODE}}
end
type _SCIP_CLIQUE_t
    array_ptr_scip_clique::Array{Ptr{_SCIP_CLIQUE}}
end
type _SCIP_CLOCK_t
    array_ptr_scip_clock::Array{Ptr{_SCIP_CLOCK}}
end
type _SCIP_COL_t
    array_ptr_scip_col::Array{Ptr{_SCIP_COL}}
end
type _SCIP_CONFLICTHDLR_t
    array_ptr_scip_conflicthdlr::Array{Ptr{_SCIP_CONFLICTHDLR}}
end
type _SCIP_CONFLICTHDLRDATA_t
    array_ptr_scip_conflicthdlrdata::Array{Ptr{_SCIP_CONFLICTHDLRDATA}}
end
type _SCIP_CONS_t
    array_ptr_scip_cons::Array{Ptr{_SCIP_CONS}}
end
type _SCIP_CONSDATA_t
    array_ptr_scip_consdata::Array{Ptr{_SCIP_CONSDATA}}
end
type _SCIP_CONSHDLR_t
    array_ptr_scip_conshdlr::Array{Ptr{_SCIP_CONSHDLR}}
end
type _SCIP_CONSHDLRDATA_t
    array_ptr_scip_conshdlrdata::Array{Ptr{_SCIP_CONSHDLRDATA}}
end
type _SCIP_CUT_t
    array_ptr_scip_cut::Array{Ptr{_SCIP_CUT}}
end
type _SCIP_CUTPOOL_t
    array_ptr_scip_cutpool::Array{Ptr{_SCIP_CUTPOOL}}
end
type _SCIP_DIALOG_t
    array_ptr_scip_dialog::Array{Ptr{_SCIP_DIALOG}}
end
type _SCIP_DIALOGDATA_t
    array_ptr_scip_dialogdata::Array{Ptr{_SCIP_DIALOGDATA}}
end
type _SCIP_DIALOGHDLR_t
    array_ptr_scip_dialoghdlr::Array{Ptr{_SCIP_DIALOGHDLR}}
end
type _SCIP_DIGRAPH_t
    array_ptr_scip_digraph::Array{Ptr{_SCIP_DIGRAPH}}
end
type _SCIP_DISP_t
    array_ptr_scip_disp::Array{Ptr{_SCIP_DISP}}
end
type _SCIP_DISPDATA_t
    array_ptr_scip_dispdata::Array{Ptr{_SCIP_DISPDATA}}
end
type _SCIP_DOMCHG_t
    array_ptr_scip_domchg::Array{Ptr{_SCIP_DOMCHG}}
end
type _SCIP_EVENT_t
    array_ptr_scip_event::Array{Ptr{_SCIP_EVENT}}
end
type _SCIP_EVENTDATA_t
    array_ptr_scip_eventdata::Array{Ptr{_SCIP_EVENTDATA}}
end
type _SCIP_EVENTHDLR_t
    array_ptr_scip_eventhdlr::Array{Ptr{_SCIP_EVENTHDLR}}
end
type _SCIP_EVENTHDLRDATA_t
    array_ptr_scip_eventhdlrdata::Array{Ptr{_SCIP_EVENTHDLRDATA}}
end
type _SCIP_EXPR_t
    array_ptr_scip_expr::Array{Ptr{_SCIP_EXPR}}
end
type _SCIP_EXPRCURV_t
    array_ptr_scip_exprcurv::Array{Ptr{_SCIP_EXPRCURV}}
end
type _SCIP_EXPRDATA_MONOMIAL_t
    array_ptr_scip_exprdata_monomial::Array{Ptr{_SCIP_EXPRDATA_MONOMIAL}}
end
type _SCIP_EXPRGRAPH_t
    array_ptr_scip_exprgraph::Array{Ptr{_SCIP_EXPRGRAPH}}
end
type _SCIP_EXPRGRAPHNODE_t
    array_ptr_scip_exprgraphnode::Array{Ptr{_SCIP_EXPRGRAPHNODE}}
end
type _SCIP_EXPRINTDATA_t
    array_ptr_scip_exprintdata::Array{Ptr{_SCIP_EXPRINTDATA}}
end
type _SCIP_EXPRTREE_t
    array_ptr_scip_exprtree::Array{Ptr{_SCIP_EXPRTREE}}
end
type _SCIP_HASHMAP_t
    array_ptr_scip_hashmap::Array{Ptr{_SCIP_HASHMAP}}
end
type _SCIP_HASHMAPLIST_t
    array_ptr_scip_hashmaplist::Array{Ptr{_SCIP_HASHMAPLIST}}
end
type _SCIP_HASHTABLE_t
    array_ptr_scip_hashtable::Array{Ptr{_SCIP_HASHTABLE}}
end
type _SCIP_HEUR_t
    array_ptr_scip_heur::Array{Ptr{_SCIP_HEUR}}
end
type _SCIP_HEURDATA_t
    array_ptr_scip_heurdata::Array{Ptr{_SCIP_HEURDATA}}
end
type _SCIP_HISTORY_t
    array_ptr_scip_history::Array{Ptr{_SCIP_HISTORY}}
end
type _SCIP_HOLELIST_t
    array_ptr_scip_holelist::Array{Ptr{_SCIP_HOLELIST}}
end
type _SCIP_INTARRAY_t
    array_ptr_scip_intarray::Array{Ptr{_SCIP_INTARRAY}}
end
type _SCIP_INTERVAL_t
    array_ptr_scip_interval::Array{Ptr{_SCIP_INTERVAL}}
end
type _SCIP_LPI_t
    array_ptr_scip_lpi::Array{Ptr{_SCIP_LPI}}
end
type _SCIP_MESSAGEHDLR_t
    array_ptr_scip_messagehdlr::Array{Ptr{_SCIP_MESSAGEHDLR}}
end
type _SCIP_MESSAGEHDLRDATA_t
    array_ptr_scip_messagehdlrdata::Array{Ptr{_SCIP_MESSAGEHDLRDATA}}
end
type _SCIP_NLPI_t
    array_ptr_scip_nlpi::Array{Ptr{_SCIP_NLPI}}
end
type _SCIP_NLPIPROBLEM_t
    array_ptr_scip_nlpiproblem::Array{Ptr{_SCIP_NLPIPROBLEM}}
end
type _SCIP_NLPSTATISTICS_t
    array_ptr_scip_nlpstatistics::Array{Ptr{_SCIP_NLPSTATISTICS}}
end
type _SCIP_NLROW_t
    array_ptr_scip_nlrow::Array{Ptr{_SCIP_NLROW}}
end
type _SCIP_NODE_t
    array_ptr_scip_node::Array{Ptr{_SCIP_NODE}}
end
type _SCIP_NODESEL_t
    array_ptr_scip_nodesel::Array{Ptr{_SCIP_NODESEL}}
end
type _SCIP_NODESELDATA_t
    array_ptr_scip_nodeseldata::Array{Ptr{_SCIP_NODESELDATA}}
end
type _SCIP_PARAM_t
    array_ptr_scip_param::Array{Ptr{_SCIP_PARAM}}
end
type _SCIP_PQUEUE_t
    array_ptr_scip_pqueue::Array{Ptr{_SCIP_PQUEUE}}
end
type _SCIP_PRESOL_t
    array_ptr_scip_presol::Array{Ptr{_SCIP_PRESOL}}
end
type _SCIP_PRESOLDATA_t
    array_ptr_scip_presoldata::Array{Ptr{_SCIP_PRESOLDATA}}
end
type _SCIP_PRICER_t
    array_ptr_scip_pricer::Array{Ptr{_SCIP_PRICER}}
end
type _SCIP_PRICERDATA_t
    array_ptr_scip_pricerdata::Array{Ptr{_SCIP_PRICERDATA}}
end
type _SCIP_PROBDATA_t
    array_ptr_scip_probdata::Array{Ptr{_SCIP_PROBDATA}}
end
type _SCIP_PROFILE_t
    array_ptr_scip_profile::Array{Ptr{_SCIP_PROFILE}}
end
type _SCIP_PROP_t
    array_ptr_scip_prop::Array{Ptr{_SCIP_PROP}}
end
type _SCIP_PROPDATA_t
    array_ptr_scip_propdata::Array{Ptr{_SCIP_PROPDATA}}
end
type _SCIP_PTRARRAY_t
    array_ptr_scip_ptrarray::Array{Ptr{_SCIP_PTRARRAY}}
end
type _SCIP_QUADELEM_t
    array_ptr_scip_quadelem::Array{Ptr{_SCIP_QUADELEM}}
end
type _SCIP_QUADVARTERM_t
    array_ptr_scip_quadvarterm::Array{Ptr{_SCIP_QUADVARTERM}}
end
type _SCIP_QUEUE_t
    array_ptr_scip_queue::Array{Ptr{_SCIP_QUEUE}}
end
type _SCIP_READER_t
    array_ptr_scip_reader::Array{Ptr{_SCIP_READER}}
end
type _SCIP_READERDATA_t
    array_ptr_scip_readerdata::Array{Ptr{_SCIP_READERDATA}}
end
type _SCIP_Real_t
    array_ptr_scip_real::Array{Ptr{_SCIP_Real}}
end
type _SCIP_REALARRAY_t
    array_ptr_scip_realarray::Array{Ptr{_SCIP_REALARRAY}}
end
type _SCIP_RELAX_t
    array_ptr_scip_relax::Array{Ptr{_SCIP_RELAX}}
end
type _SCIP_RELAXDATA_t
    array_ptr_scip_relaxdata::Array{Ptr{_SCIP_RELAXDATA}}
end
type _SCIP_RESOURCEACTIVITY_t
    array_ptr_scip_resourceactivity::Array{Ptr{_SCIP_RESOURCEACTIVITY}}
end
type _SCIP_RESULT_t
    array_ptr_scip_result::Array{Ptr{_SCIP_RESULT}}
end
type _SCIP_ROW_t
    array_ptr_scip_row::Array{Ptr{_SCIP_ROW}}
end
type _SCIP_SEPA_t
    array_ptr_scip_sepa::Array{Ptr{_SCIP_SEPA}}
end
type _SCIP_SEPADATA_t
    array_ptr_scip_sepadata::Array{Ptr{_SCIP_SEPADATA}}
end
type _SCIP_SOL_t
    array_ptr_scip_sol::Array{Ptr{_SCIP_SOL}}
end
type _SCIP_SPARSESOL_t
    array_ptr_scip_sparsesol::Array{Ptr{_SCIP_SPARSESOL}}
end
type _SCIP_VALUEHISTORY_t
    array_ptr_scip_valuehistory::Array{Ptr{_SCIP_VALUEHISTORY}}
end
type _SCIP_VAR_t
    array_ptr_scip_var::Array{Ptr{_SCIP_VAR}}
end
type _SCIP_VARDATA_t
    array_ptr_scip_vardata::Array{Ptr{_SCIP_VARDATA}}
end

# Pointer and array access functions
array(scip::_SCIP_t) = scip.array_ptr_scip
pointer(scip::_SCIP_t) = array(scip)[1]
array(scip_bdchgidx::_SCIP_BDCHGIDX_t) = scip_bdchgidx.array_ptr_scip_bdchgidx
pointer(scip_bdchgidx::_SCIP_BDCHGIDX_t) = array(scip_bdchgidx)[1]
array(scip_bdchginfo::_SCIP_BDCHGINFO_t) = scip_bdchginfo.array_ptr_scip_bdchginfo
pointer(scip_bdchginfo::_SCIP_BDCHGINFO_t) = array(scip_bdchginfo)[1]
array(scip_bilinterm::_SCIP_BILINTERM_t) = scip_bilinterm.array_ptr_scip_bilinterm
pointer(scip_bilinterm::_SCIP_BILINTERM_t) = array(scip_bilinterm)[1]
array(scip_bool::_SCIP_Bool_t) = scip_bool.array_ptr_scip_bool
pointer(scip_bool::_SCIP_Bool_t) = array(scip_bool)[1]
array(scip_boolarray::_SCIP_BOOLARRAY_t) = scip_boolarray.array_ptr_scip_boolarray
pointer(scip_boolarray::_SCIP_BOOLARRAY_t) = array(scip_boolarray)[1]
array(scip_boundchg::_SCIP_BOUNDCHG_t) = scip_boundchg.array_ptr_scip_boundchg
pointer(scip_boundchg::_SCIP_BOUNDCHG_t) = array(scip_boundchg)[1]
array(scip_boundtype::_SCIP_BOUNDTYPE_t) = scip_boundtype.array_ptr_scip_boundtype
pointer(scip_boundtype::_SCIP_BOUNDTYPE_t) = array(scip_boundtype)[1]
array(scip_branchrule::_SCIP_BRANCHRULE_t) = scip_branchrule.array_ptr_scip_branchrule
pointer(scip_branchrule::_SCIP_BRANCHRULE_t) = array(scip_branchrule)[1]
array(scip_branchruledata::_SCIP_BRANCHRULEDATA_t) = scip_branchruledata.array_ptr_scip_branchruledata
pointer(scip_branchruledata::_SCIP_BRANCHRULEDATA_t) = array(scip_branchruledata)[1]
array(scip_bt::_SCIP_BT_t) = scip_bt.array_ptr_scip_bt
pointer(scip_bt::_SCIP_BT_t) = array(scip_bt)[1]
array(scip_btnode::_SCIP_BTNODE_t) = scip_btnode.array_ptr_scip_btnode
pointer(scip_btnode::_SCIP_BTNODE_t) = array(scip_btnode)[1]
array(scip_clique::_SCIP_CLIQUE_t) = scip_clique.array_ptr_scip_clique
pointer(scip_clique::_SCIP_CLIQUE_t) = array(scip_clique)[1]
array(scip_clock::_SCIP_CLOCK_t) = scip_clock.array_ptr_scip_clock
pointer(scip_clock::_SCIP_CLOCK_t) = array(scip_clock)[1]
array(scip_col::_SCIP_COL_t) = scip_col.array_ptr_scip_col
pointer(scip_col::_SCIP_COL_t) = array(scip_col)[1]
array(scip_conflicthdlr::_SCIP_CONFLICTHDLR_t) = scip_conflicthdlr.array_ptr_scip_conflicthdlr
pointer(scip_conflicthdlr::_SCIP_CONFLICTHDLR_t) = array(scip_conflicthdlr)[1]
array(scip_conflicthdlrdata::_SCIP_CONFLICTHDLRDATA_t) = scip_conflicthdlrdata.array_ptr_scip_conflicthdlrdata
pointer(scip_conflicthdlrdata::_SCIP_CONFLICTHDLRDATA_t) = array(scip_conflicthdlrdata)[1]
array(scip_cons::_SCIP_CONS_t) = scip_cons.array_ptr_scip_cons
pointer(scip_cons::_SCIP_CONS_t) = array(scip_cons)[1]
array(scip_consdata::_SCIP_CONSDATA_t) = scip_consdata.array_ptr_scip_consdata
pointer(scip_consdata::_SCIP_CONSDATA_t) = array(scip_consdata)[1]
array(scip_conshdlr::_SCIP_CONSHDLR_t) = scip_conshdlr.array_ptr_scip_conshdlr
pointer(scip_conshdlr::_SCIP_CONSHDLR_t) = array(scip_conshdlr)[1]
array(scip_conshdlrdata::_SCIP_CONSHDLRDATA_t) = scip_conshdlrdata.array_ptr_scip_conshdlrdata
pointer(scip_conshdlrdata::_SCIP_CONSHDLRDATA_t) = array(scip_conshdlrdata)[1]
array(scip_cut::_SCIP_CUT_t) = scip_cut.array_ptr_scip_cut
pointer(scip_cut::_SCIP_CUT_t) = array(scip_cut)[1]
array(scip_cutpool::_SCIP_CUTPOOL_t) = scip_cutpool.array_ptr_scip_cutpool
pointer(scip_cutpool::_SCIP_CUTPOOL_t) = array(scip_cutpool)[1]
array(scip_dialog::_SCIP_DIALOG_t) = scip_dialog.array_ptr_scip_dialog
pointer(scip_dialog::_SCIP_DIALOG_t) = array(scip_dialog)[1]
array(scip_dialogdata::_SCIP_DIALOGDATA_t) = scip_dialogdata.array_ptr_scip_dialogdata
pointer(scip_dialogdata::_SCIP_DIALOGDATA_t) = array(scip_dialogdata)[1]
array(scip_dialoghdlr::_SCIP_DIALOGHDLR_t) = scip_dialoghdlr.array_ptr_scip_dialoghdlr
pointer(scip_dialoghdlr::_SCIP_DIALOGHDLR_t) = array(scip_dialoghdlr)[1]
array(scip_digraph::_SCIP_DIGRAPH_t) = scip_digraph.array_ptr_scip_digraph
pointer(scip_digraph::_SCIP_DIGRAPH_t) = array(scip_digraph)[1]
array(scip_disp::_SCIP_DISP_t) = scip_disp.array_ptr_scip_disp
pointer(scip_disp::_SCIP_DISP_t) = array(scip_disp)[1]
array(scip_dispdata::_SCIP_DISPDATA_t) = scip_dispdata.array_ptr_scip_dispdata
pointer(scip_dispdata::_SCIP_DISPDATA_t) = array(scip_dispdata)[1]
array(scip_domchg::_SCIP_DOMCHG_t) = scip_domchg.array_ptr_scip_domchg
pointer(scip_domchg::_SCIP_DOMCHG_t) = array(scip_domchg)[1]
array(scip_event::_SCIP_EVENT_t) = scip_event.array_ptr_scip_event
pointer(scip_event::_SCIP_EVENT_t) = array(scip_event)[1]
array(scip_eventdata::_SCIP_EVENTDATA_t) = scip_eventdata.array_ptr_scip_eventdata
pointer(scip_eventdata::_SCIP_EVENTDATA_t) = array(scip_eventdata)[1]
array(scip_eventhdlr::_SCIP_EVENTHDLR_t) = scip_eventhdlr.array_ptr_scip_eventhdlr
pointer(scip_eventhdlr::_SCIP_EVENTHDLR_t) = array(scip_eventhdlr)[1]
array(scip_eventhdlrdata::_SCIP_EVENTHDLRDATA_t) = scip_eventhdlrdata.array_ptr_scip_eventhdlrdata
pointer(scip_eventhdlrdata::_SCIP_EVENTHDLRDATA_t) = array(scip_eventhdlrdata)[1]
array(scip_expr::_SCIP_EXPR_t) = scip_expr.array_ptr_scip_expr
pointer(scip_expr::_SCIP_EXPR_t) = array(scip_expr)[1]
array(scip_exprcurv::_SCIP_EXPRCURV_t) = scip_exprcurv.array_ptr_scip_exprcurv
pointer(scip_exprcurv::_SCIP_EXPRCURV_t) = array(scip_exprcurv)[1]
array(scip_exprdata_monomial::_SCIP_EXPRDATA_MONOMIAL_t) = scip_exprdata_monomial.array_ptr_scip_exprdata_monomial
pointer(scip_exprdata_monomial::_SCIP_EXPRDATA_MONOMIAL_t) = array(scip_exprdata_monomial)[1]
array(scip_exprgraph::_SCIP_EXPRGRAPH_t) = scip_exprgraph.array_ptr_scip_exprgraph
pointer(scip_exprgraph::_SCIP_EXPRGRAPH_t) = array(scip_exprgraph)[1]
array(scip_exprgraphnode::_SCIP_EXPRGRAPHNODE_t) = scip_exprgraphnode.array_ptr_scip_exprgraphnode
pointer(scip_exprgraphnode::_SCIP_EXPRGRAPHNODE_t) = array(scip_exprgraphnode)[1]
array(scip_exprintdata::_SCIP_EXPRINTDATA_t) = scip_exprintdata.array_ptr_scip_exprintdata
pointer(scip_exprintdata::_SCIP_EXPRINTDATA_t) = array(scip_exprintdata)[1]
array(scip_exprtree::_SCIP_EXPRTREE_t) = scip_exprtree.array_ptr_scip_exprtree
pointer(scip_exprtree::_SCIP_EXPRTREE_t) = array(scip_exprtree)[1]
array(scip_hashmap::_SCIP_HASHMAP_t) = scip_hashmap.array_ptr_scip_hashmap
pointer(scip_hashmap::_SCIP_HASHMAP_t) = array(scip_hashmap)[1]
array(scip_hashmaplist::_SCIP_HASHMAPLIST_t) = scip_hashmaplist.array_ptr_scip_hashmaplist
pointer(scip_hashmaplist::_SCIP_HASHMAPLIST_t) = array(scip_hashmaplist)[1]
array(scip_hashtable::_SCIP_HASHTABLE_t) = scip_hashtable.array_ptr_scip_hashtable
pointer(scip_hashtable::_SCIP_HASHTABLE_t) = array(scip_hashtable)[1]
array(scip_heur::_SCIP_HEUR_t) = scip_heur.array_ptr_scip_heur
pointer(scip_heur::_SCIP_HEUR_t) = array(scip_heur)[1]
array(scip_heurdata::_SCIP_HEURDATA_t) = scip_heurdata.array_ptr_scip_heurdata
pointer(scip_heurdata::_SCIP_HEURDATA_t) = array(scip_heurdata)[1]
array(scip_history::_SCIP_HISTORY_t) = scip_history.array_ptr_scip_history
pointer(scip_history::_SCIP_HISTORY_t) = array(scip_history)[1]
array(scip_holelist::_SCIP_HOLELIST_t) = scip_holelist.array_ptr_scip_holelist
pointer(scip_holelist::_SCIP_HOLELIST_t) = array(scip_holelist)[1]
array(scip_intarray::_SCIP_INTARRAY_t) = scip_intarray.array_ptr_scip_intarray
pointer(scip_intarray::_SCIP_INTARRAY_t) = array(scip_intarray)[1]
array(scip_interval::_SCIP_INTERVAL_t) = scip_interval.array_ptr_scip_interval
pointer(scip_interval::_SCIP_INTERVAL_t) = array(scip_interval)[1]
array(scip_lpi::_SCIP_LPI_t) = scip_lpi.array_ptr_scip_lpi
pointer(scip_lpi::_SCIP_LPI_t) = array(scip_lpi)[1]
array(scip_messagehdlr::_SCIP_MESSAGEHDLR_t) = scip_messagehdlr.array_ptr_scip_messagehdlr
pointer(scip_messagehdlr::_SCIP_MESSAGEHDLR_t) = array(scip_messagehdlr)[1]
array(scip_messagehdlrdata::_SCIP_MESSAGEHDLRDATA_t) = scip_messagehdlrdata.array_ptr_scip_messagehdlrdata
pointer(scip_messagehdlrdata::_SCIP_MESSAGEHDLRDATA_t) = array(scip_messagehdlrdata)[1]
array(scip_nlpi::_SCIP_NLPI_t) = scip_nlpi.array_ptr_scip_nlpi
pointer(scip_nlpi::_SCIP_NLPI_t) = array(scip_nlpi)[1]
array(scip_nlpiproblem::_SCIP_NLPIPROBLEM_t) = scip_nlpiproblem.array_ptr_scip_nlpiproblem
pointer(scip_nlpiproblem::_SCIP_NLPIPROBLEM_t) = array(scip_nlpiproblem)[1]
array(scip_nlpstatistics::_SCIP_NLPSTATISTICS_t) = scip_nlpstatistics.array_ptr_scip_nlpstatistics
pointer(scip_nlpstatistics::_SCIP_NLPSTATISTICS_t) = array(scip_nlpstatistics)[1]
array(scip_nlrow::_SCIP_NLROW_t) = scip_nlrow.array_ptr_scip_nlrow
pointer(scip_nlrow::_SCIP_NLROW_t) = array(scip_nlrow)[1]
array(scip_node::_SCIP_NODE_t) = scip_node.array_ptr_scip_node
pointer(scip_node::_SCIP_NODE_t) = array(scip_node)[1]
array(scip_nodesel::_SCIP_NODESEL_t) = scip_nodesel.array_ptr_scip_nodesel
pointer(scip_nodesel::_SCIP_NODESEL_t) = array(scip_nodesel)[1]
array(scip_nodeseldata::_SCIP_NODESELDATA_t) = scip_nodeseldata.array_ptr_scip_nodeseldata
pointer(scip_nodeseldata::_SCIP_NODESELDATA_t) = array(scip_nodeseldata)[1]
array(scip_param::_SCIP_PARAM_t) = scip_param.array_ptr_scip_param
pointer(scip_param::_SCIP_PARAM_t) = array(scip_param)[1]
array(scip_pqueue::_SCIP_PQUEUE_t) = scip_pqueue.array_ptr_scip_pqueue
pointer(scip_pqueue::_SCIP_PQUEUE_t) = array(scip_pqueue)[1]
array(scip_presol::_SCIP_PRESOL_t) = scip_presol.array_ptr_scip_presol
pointer(scip_presol::_SCIP_PRESOL_t) = array(scip_presol)[1]
array(scip_presoldata::_SCIP_PRESOLDATA_t) = scip_presoldata.array_ptr_scip_presoldata
pointer(scip_presoldata::_SCIP_PRESOLDATA_t) = array(scip_presoldata)[1]
array(scip_pricer::_SCIP_PRICER_t) = scip_pricer.array_ptr_scip_pricer
pointer(scip_pricer::_SCIP_PRICER_t) = array(scip_pricer)[1]
array(scip_pricerdata::_SCIP_PRICERDATA_t) = scip_pricerdata.array_ptr_scip_pricerdata
pointer(scip_pricerdata::_SCIP_PRICERDATA_t) = array(scip_pricerdata)[1]
array(scip_probdata::_SCIP_PROBDATA_t) = scip_probdata.array_ptr_scip_probdata
pointer(scip_probdata::_SCIP_PROBDATA_t) = array(scip_probdata)[1]
array(scip_profile::_SCIP_PROFILE_t) = scip_profile.array_ptr_scip_profile
pointer(scip_profile::_SCIP_PROFILE_t) = array(scip_profile)[1]
array(scip_prop::_SCIP_PROP_t) = scip_prop.array_ptr_scip_prop
pointer(scip_prop::_SCIP_PROP_t) = array(scip_prop)[1]
array(scip_propdata::_SCIP_PROPDATA_t) = scip_propdata.array_ptr_scip_propdata
pointer(scip_propdata::_SCIP_PROPDATA_t) = array(scip_propdata)[1]
array(scip_ptrarray::_SCIP_PTRARRAY_t) = scip_ptrarray.array_ptr_scip_ptrarray
pointer(scip_ptrarray::_SCIP_PTRARRAY_t) = array(scip_ptrarray)[1]
array(scip_quadelem::_SCIP_QUADELEM_t) = scip_quadelem.array_ptr_scip_quadelem
pointer(scip_quadelem::_SCIP_QUADELEM_t) = array(scip_quadelem)[1]
array(scip_quadvarterm::_SCIP_QUADVARTERM_t) = scip_quadvarterm.array_ptr_scip_quadvarterm
pointer(scip_quadvarterm::_SCIP_QUADVARTERM_t) = array(scip_quadvarterm)[1]
array(scip_queue::_SCIP_QUEUE_t) = scip_queue.array_ptr_scip_queue
pointer(scip_queue::_SCIP_QUEUE_t) = array(scip_queue)[1]
array(scip_reader::_SCIP_READER_t) = scip_reader.array_ptr_scip_reader
pointer(scip_reader::_SCIP_READER_t) = array(scip_reader)[1]
array(scip_readerdata::_SCIP_READERDATA_t) = scip_readerdata.array_ptr_scip_readerdata
pointer(scip_readerdata::_SCIP_READERDATA_t) = array(scip_readerdata)[1]
array(scip_real::_SCIP_Real_t) = scip_real.array_ptr_scip_real
pointer(scip_real::_SCIP_Real_t) = array(scip_real)[1]
array(scip_realarray::_SCIP_REALARRAY_t) = scip_realarray.array_ptr_scip_realarray
pointer(scip_realarray::_SCIP_REALARRAY_t) = array(scip_realarray)[1]
array(scip_relax::_SCIP_RELAX_t) = scip_relax.array_ptr_scip_relax
pointer(scip_relax::_SCIP_RELAX_t) = array(scip_relax)[1]
array(scip_relaxdata::_SCIP_RELAXDATA_t) = scip_relaxdata.array_ptr_scip_relaxdata
pointer(scip_relaxdata::_SCIP_RELAXDATA_t) = array(scip_relaxdata)[1]
array(scip_resourceactivity::_SCIP_RESOURCEACTIVITY_t) = scip_resourceactivity.array_ptr_scip_resourceactivity
pointer(scip_resourceactivity::_SCIP_RESOURCEACTIVITY_t) = array(scip_resourceactivity)[1]
array(scip_result::_SCIP_RESULT_t) = scip_result.array_ptr_scip_result
pointer(scip_result::_SCIP_RESULT_t) = array(scip_result)[1]
array(scip_row::_SCIP_ROW_t) = scip_row.array_ptr_scip_row
pointer(scip_row::_SCIP_ROW_t) = array(scip_row)[1]
array(scip_sepa::_SCIP_SEPA_t) = scip_sepa.array_ptr_scip_sepa
pointer(scip_sepa::_SCIP_SEPA_t) = array(scip_sepa)[1]
array(scip_sepadata::_SCIP_SEPADATA_t) = scip_sepadata.array_ptr_scip_sepadata
pointer(scip_sepadata::_SCIP_SEPADATA_t) = array(scip_sepadata)[1]
array(scip_sol::_SCIP_SOL_t) = scip_sol.array_ptr_scip_sol
pointer(scip_sol::_SCIP_SOL_t) = array(scip_sol)[1]
array(scip_sparsesol::_SCIP_SPARSESOL_t) = scip_sparsesol.array_ptr_scip_sparsesol
pointer(scip_sparsesol::_SCIP_SPARSESOL_t) = array(scip_sparsesol)[1]
array(scip_valuehistory::_SCIP_VALUEHISTORY_t) = scip_valuehistory.array_ptr_scip_valuehistory
pointer(scip_valuehistory::_SCIP_VALUEHISTORY_t) = array(scip_valuehistory)[1]
array(scip_var::_SCIP_VAR_t) = scip_var.array_ptr_scip_var
pointer(scip_var::_SCIP_VAR_t) = array(scip_var)[1]
array(scip_vardata::_SCIP_VARDATA_t) = scip_vardata.array_ptr_scip_vardata
pointer(scip_vardata::_SCIP_VARDATA_t) = array(scip_vardata)[1]
