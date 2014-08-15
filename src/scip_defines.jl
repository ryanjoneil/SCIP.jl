# SCIP defines for character, string, and numeric constants
const TRUE = 1
const FALSE = 0
const SCIP_VERSION = 310
const SCIP_SUBVERSION = 0
const SCIP_COPYRIGHT = "Copyright (c) 2002-2014 Konrad-Zuse-Zentrum fuer Informationstechnik Berlin (ZIB)"
const SCIP_VARTYPE_BINARY_CHAR = 'B'
const SCIP_VARTYPE_INTEGER_CHAR = 'I'
const SCIP_VARTYPE_IMPLINT_CHAR = 'M'
const SCIP_VARTYPE_CONTINUOUS_CHAR = 'C'
const SCIP_LONGINT_FORMAT = "lld"
const SCIP_REAL_FORMAT = "lf"
const SCIP_MAXSTRLEN = 1024
const SCIP_HASHSIZE_PARAMS = 4099
const SCIP_HASHSIZE_NAMES = 131101
const SCIP_HASHSIZE_CUTPOOLS = 131101
const SCIP_HASHSIZE_CLIQUES = 131101
const SCIP_HASHSIZE_NAMES_SMALL = 8011
const SCIP_HASHSIZE_CUTPOOLS_SMALL = 8011
const SCIP_HASHSIZE_CLIQUES_SMALL = 8011
const SCIP_HASHSIZE_VBC = 131101
const SCIP_EXPR_DEGREEINFINITY = 65535

# SCIP defines for known C types and pointers to SCIP structs.
typealias SCIP_Bool Uint
typealias SCIP_Real Float64
typealias Ptr_SCIP_Real Ptr{SCIP_Real}
typealias Ptr_SCIP_EXPRCURV Ptr{Void}
typealias Ptr_SCIP_INTERVAL Ptr{Void}
typealias Ptr_SCIP_EXPR Ptr{Void}
typealias Ptr_SCIP_QUADELEM Ptr{Void}
typealias Ptr_SCIP_EXPRDATA_MONOMIAL Ptr{Void}
typealias Ptr_SCIP_MESSAGEHDLR Ptr{Void}
typealias Ptr_SCIP_EXPRTREE Ptr{Void}
typealias Ptr_SCIP_EXPRINTDATA Ptr{Void}
typealias Ptr_SCIP_EXPRGRAPHNODE Ptr{Void}
typealias Ptr_SCIP_EXPRGRAPH Ptr{Void}
typealias Ptr_SCIP_Bool Ptr{SCIP_Bool}
typealias Ptr_SCIP_VAR Ptr{Void}
typealias Ptr_SCIP_NLROW Ptr{Void}
typealias Ptr_SCIP Ptr{Void}
typealias Ptr_SCIP_HASHMAP Ptr{Void}
typealias Ptr_SCIP_CONS Ptr{Void}
typealias Ptr_SCIP_CONSHDLR Ptr{Void}
typealias Ptr_SCIP_PARAMDATA Ptr{Void}
typealias Ptr_SCIP_Longint Ptr{Void}
typealias Ptr_SCIP_PARAM Ptr{Void}
typealias Ptr_SCIP_READERDATA Ptr{Void}
typealias Ptr_SCIP_READER Ptr{Void}
typealias Ptr_SCIP_PRICERDATA Ptr{Void}
typealias Ptr_SCIP_PRICER Ptr{Void}
typealias Ptr_SCIP_CONSHDLRDATA Ptr{Void}
typealias Ptr_SCIP_CONFLICTHDLRDATA Ptr{Void}
typealias Ptr_SCIP_CONFLICTHDLR Ptr{Void}
typealias Ptr_SCIP_PRESOLDATA Ptr{Void}
typealias Ptr_SCIP_PRESOL Ptr{Void}
typealias Ptr_SCIP_RELAXDATA Ptr{Void}
typealias Ptr_SCIP_RELAX Ptr{Void}
typealias Ptr_SCIP_SEPADATA Ptr{Void}
typealias Ptr_SCIP_SEPA Ptr{Void}
typealias Ptr_SCIP_PROPDATA Ptr{Void}
typealias Ptr_SCIP_PROP Ptr{Void}
typealias Ptr_SCIP_HEURDATA Ptr{Void}
typealias Ptr_SCIP_HEUR Ptr{Void}
typealias Ptr_SCIP_EVENTHDLRDATA Ptr{Void}
typealias Ptr_SCIP_EVENTHDLR Ptr{Void}
typealias Ptr_SCIP_NODESELDATA Ptr{Void}
typealias Ptr_SCIP_NODESEL Ptr{Void}
typealias Ptr_SCIP_BRANCHRULEDATA Ptr{Void}
typealias Ptr_SCIP_BRANCHRULE Ptr{Void}
typealias Ptr_SCIP_DISPDATA Ptr{Void}
typealias Ptr_SCIP_DISP Ptr{Void}
typealias Ptr_SCIP_NLPI Ptr{Void}
typealias Ptr_SCIP_DIALOG Ptr{Void}
typealias Ptr_SCIP_DIALOGDATA Ptr{Void}
typealias Ptr_SCIP_PROBDATA Ptr{Void}
typealias Ptr_SCIP_SOL Ptr{Void}
typealias Ptr_SCIP_NODE Ptr{Void}
typealias Ptr_SCIP_VARDATA Ptr{Void}
typealias Ptr_SCIP_CLIQUE Ptr{Void}
typealias Ptr_SCIP_BDCHGIDX Ptr{Void}
typealias Ptr_SCIP_CONSDATA Ptr{Void}
typealias Ptr_SCIP_RESULT Ptr{Void}
typealias Ptr_SCIP_COL Ptr{Void}
typealias Ptr_SCIP_ROW Ptr{Void}
typealias Ptr_SCIP_REALARRAY Ptr{Void}
typealias Ptr_SCIP_BOUNDTYPE Ptr{Void}
typealias Ptr_SCIP_LPI Ptr{Void}
typealias Ptr_SCIP_NLPSTATISTICS Ptr{Void}
typealias Ptr_SCIP_NLPIPROBLEM Ptr{Void}
typealias Ptr_SCIP_CUT Ptr{Void}
typealias Ptr_SCIP_CUTPOOL Ptr{Void}
typealias Ptr_SCIP_EVENTDATA Ptr{Void}
typealias Ptr_SCIP_CLOCK Ptr{Void}
typealias Ptr_SCIP_INTARRAY Ptr{Void}
typealias Ptr_SCIP_BOOLARRAY Ptr{Void}
typealias Ptr_SCIP_PTRARRAY Ptr{Void}
