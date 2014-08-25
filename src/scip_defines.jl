# SCIP defines for character, string, and numeric constants
const ARTIFICIALVARNAMEPREFIX = "andresultant_"
const TRUE = 1
const FALSE = 0
const _SCIP_VERSION = 310
const _SCIP_SUBVERSION = 0
const _SCIP_COPYRIGHT = "Copyright (c) 2002-2014 Konrad-Zuse-Zentrum fuer Informationstechnik Berlin (ZIB)"
const _SCIP_VARTYPE_BINARY_CHAR = 'B'
const _SCIP_VARTYPE_INTEGER_CHAR = 'I'
const _SCIP_VARTYPE_IMPLINT_CHAR = 'M'
const _SCIP_VARTYPE_CONTINUOUS_CHAR = 'C'
const _SCIP_LONGINT_FORMAT = "lld"
const _SCIP_REAL_FORMAT = "lf"
const _SCIP_MAXSTRLEN = 1024
const _SCIP_HASHSIZE_PARAMS = 4099
const _SCIP_HASHSIZE_NAMES = 131101
const _SCIP_HASHSIZE_CUTPOOLS = 131101
const _SCIP_HASHSIZE_CLIQUES = 131101
const _SCIP_HASHSIZE_NAMES_SMALL = 8011
const _SCIP_HASHSIZE_CUTPOOLS_SMALL = 8011
const _SCIP_HASHSIZE_CLIQUES_SMALL = 8011
const _SCIP_HASHSIZE_VBC = 131101
const _SCIP_EXPR_DEGREEINFINITY = 65535

# SCIP defines for known C types and pointers to SCIP structs.
typealias _SCIP Void
typealias _SCIP_CONS Void
typealias _SCIP_VAR Void
typealias _SCIP_Real Float64
typealias _SCIP_Bool Uint
typealias _SCIP_NLROW Void
typealias _SCIP_SOL Void
typealias _SCIP_EXPRTREE Void
typealias _SCIP_PROFILE Void
typealias _SCIP_CONSHDLR Void
typealias _SCIP_ROW Void
typealias _SCIP_SEPA Void
typealias _SCIP_HASHMAP Void
typealias _SCIP_EXPRGRAPHNODE Void
typealias _SCIP_EXPRGRAPH Void
typealias _SCIP_QUADVARTERM Void
typealias _SCIP_BILINTERM Void
typealias _SCIP_NLPI Void
typealias _SCIP_NLPIPROBLEM Void
typealias _SCIP_BRANCHRULEDATA Void
typealias _SCIP_BRANCHRULE Void
typealias _SCIP_CONFLICTHDLRDATA Void
typealias _SCIP_CONFLICTHDLR Void
typealias _SCIP_CONSHDLRDATA Void
typealias _SCIP_PROPTIMING Void
typealias _SCIP_CONSDATA Void
typealias _SCIP_CUT Void
typealias _SCIP_CUTPOOL Void
typealias _SCIP_DIALOG Void
typealias _SCIP_DIALOGHDLR Void
typealias _SCIP_DIALOGDATA Void
typealias _SCIP_DISPDATA Void
typealias _SCIP_DISP Void
typealias _SCIP_MESSAGEHDLR Void
typealias _SCIP_EVENTHDLR Void
typealias _SCIP_EVENTHDLRDATA Void
typealias _SCIP_EVENTTYPE Void
typealias _SCIP_EVENT Void
typealias _SCIP_NODE Void
typealias _SCIP_COL Void
typealias _SCIP_INTERVAL Void
typealias _SCIP_EXPR Void
typealias _SCIP_QUADELEM Void
typealias _SCIP_EXPRDATA_MONOMIAL Void
typealias _SCIP_EXPRINTDATA Void
typealias _SCIP_HEURDATA Void
typealias _SCIP_HEUR Void
typealias _SCIP_HEURTIMING Void
typealias _SCIP_HISTORY Void
typealias _SCIP_VALUEHISTORY Void
typealias _SCIP_CLIQUE Void
typealias _SCIP_BASESTAT Void
typealias _SCIP_MESSAGEHDLRDATA Void
typealias _SCIP_SPARSESOL Void
typealias _SCIP_QUEUE Void
typealias _SCIP_PQUEUE Void
typealias _SCIP_HASHTABLE Void
typealias _SCIP_HASHMAPLIST Void
typealias _SCIP_RESOURCEACTIVITY Void
typealias _SCIP_DIGRAPH Void
typealias _SCIP_BT Void
typealias _SCIP_BTNODE Void
typealias _SCIP_NODESEL Void
typealias _SCIP_NODESELDATA Void
typealias _SCIP_PARAM Void
typealias _SCIP_PARAMDATA Void
typealias _SCIP_PRESOLDATA Void
typealias _SCIP_PRESOL Void
typealias _SCIP_PRICERDATA Void
typealias _SCIP_PRICER Void
typealias _SCIP_PROPDATA Void
typealias _SCIP_PROP Void
typealias _SCIP_READERDATA Void
typealias _SCIP_READER Void
typealias _SCIP_RELAXDATA Void
typealias _SCIP_RELAX Void
typealias _SCIP_SEPADATA Void
typealias _SCIP_DOMCHG Void
typealias _SCIP_VARDATA Void
typealias _SCIP_HOLELIST Void
typealias _SCIP_BDCHGINFO Void
typealias _SCIP_BDCHGIDX Void
typealias _SCIP_BOUNDCHG Void
typealias _SCIP_PROBDATA Void
typealias _SCIP_REALARRAY Void
typealias _SCIP_LPI Void
typealias _SCIP_NLPSTATISTICS Void
typealias _SCIP_EVENTDATA Void
typealias _SCIP_CLOCK Void
typealias _SCIP_INTARRAY Void
typealias _SCIP_BOOLARRAY Void
typealias _SCIP_PTRARRAY Void
