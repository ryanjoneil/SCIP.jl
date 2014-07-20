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
