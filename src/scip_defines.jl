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
typealias SCIP_INTERVAL Void
typealias SCIP_EXPR Void
typealias SCIP_QUADELEM Void
typealias SCIP_EXPRDATA_MONOMIAL Void
typealias SCIP_EXPRTREE Void
typealias SCIP_EXPRINTDATA Void
typealias SCIP_MESSAGEHDLR Void
typealias SCIP_EXPRGRAPHNODE Void
typealias SCIP_EXPRGRAPH Void
typealias SCIP_VAR Void
typealias SCIP_NLROW Void
typealias SCIP Void
typealias SCIP_HASHMAP Void
typealias SCIP_PARAM Void
typealias SCIP_READER Void
typealias SCIP_PRICER Void
typealias SCIP_CONSHDLR Void
typealias SCIP_CONFLICTHDLR Void
typealias SCIP_PRESOL Void
typealias SCIP_RELAX Void
typealias SCIP_SEPA Void
typealias SCIP_PROP Void
typealias SCIP_HEUR Void
typealias SCIP_EVENTHDLR Void
typealias SCIP_NODESEL Void
typealias SCIP_BRANCHRULE Void
typealias SCIP_DISP Void
typealias SCIP_NLPI Void
typealias SCIP_DIALOG Void
typealias SCIP_PROBDATA Void
typealias SCIP_SOL Void
typealias SCIP_CONS Void
typealias SCIP_NODE Void
typealias SCIP_CLIQUE Void
typealias SCIP_BDCHGIDX Void
typealias SCIP_PROPTIMING Void
typealias SCIP_COL Void
typealias SCIP_ROW Void
typealias SCIP_REALARRAY Void
typealias SCIP_LPI Void
typealias SCIP_NLPSTATISTICS Void
typealias SCIP_NLPIPROBLEM Void
typealias SCIP_CUT Void
typealias SCIP_CUTPOOL Void
typealias SCIP_EVENTTYPE Void
typealias SCIP_EVENTDATA Void
typealias SCIP_CLOCK Void
typealias SCIP_INTARRAY Void
typealias SCIP_BOOLARRAY Void
typealias SCIP_PTRARRAY Void
