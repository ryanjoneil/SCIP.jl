# SCIP enums
typealias _SCIP_LPSolStat Int8
const _SCIP_LPSOLSTAT_NOTSOLVED = int8(0)
const _SCIP_LPSOLSTAT_OPTIMAL = int8(1)
const _SCIP_LPSOLSTAT_INFEASIBLE = int8(2)
const _SCIP_LPSOLSTAT_UNBOUNDEDRAY = int8(3)
const _SCIP_LPSOLSTAT_OBJLIMIT = int8(4)
const _SCIP_LPSOLSTAT_ITERLIMIT = int8(5)
const _SCIP_LPSOLSTAT_TIMELIMIT = int8(6)
const _SCIP_LPSOLSTAT_ERROR = int8(7)

const SCIP_LPSolStat_MAP = [
    _SCIP_LPSOLSTAT_NOTSOLVED => "LP was not solved, no solution exists",
    _SCIP_LPSOLSTAT_OPTIMAL => "LP was solved to optimality",
    _SCIP_LPSOLSTAT_INFEASIBLE => "LP is primal infeasible",
    _SCIP_LPSOLSTAT_UNBOUNDEDRAY => "LP has a primal unbounded ray",
    _SCIP_LPSOLSTAT_OBJLIMIT => "objective limit was reached during optimization",
    _SCIP_LPSOLSTAT_ITERLIMIT => "iteration limit was reached during optimization",
    _SCIP_LPSOLSTAT_TIMELIMIT => "time limit was reached during optimization",
    _SCIP_LPSOLSTAT_ERROR => "an error occured during optimization",
]

typealias _SCIP_BoundType Int8
const _SCIP_BOUNDTYPE_LOWER = int8(0)
const _SCIP_BOUNDTYPE_UPPER = int8(1)

const SCIP_BoundType_MAP = [
    _SCIP_BOUNDTYPE_LOWER => "lower bound",
    _SCIP_BOUNDTYPE_UPPER => "upper bound",
]

typealias _SCIP_SideType Int8
const _SCIP_SIDETYPE_LEFT = int8(0)
const _SCIP_SIDETYPE_RIGHT = int8(1)

const SCIP_SideType_MAP = [
    _SCIP_SIDETYPE_LEFT => "left hand side",
    _SCIP_SIDETYPE_RIGHT => "right hand side",
]

typealias _SCIP_RowOriginType Int8
const _SCIP_ROWORIGINTYPE_UNSPEC = int8(0)
const _SCIP_ROWORIGINTYPE_CONS = int8(1)
const _SCIP_ROWORIGINTYPE_SEPA = int8(2)

const SCIP_RowOriginType_MAP = [
    _SCIP_ROWORIGINTYPE_UNSPEC => "unspecified origin of row",
    _SCIP_ROWORIGINTYPE_CONS => "row created by constraint handler",
    _SCIP_ROWORIGINTYPE_SEPA => "row created by separator",
]

typealias _SCIP_LPAlgo Int8
const _SCIP_LPALGO_PRIMALSIMPLEX = int8(0)
const _SCIP_LPALGO_DUALSIMPLEX = int8(1)
const _SCIP_LPALGO_BARRIER = int8(2)
const _SCIP_LPALGO_BARRIERCROSSOVER = int8(3)

const SCIP_LPAlgo_MAP = [
    _SCIP_LPALGO_PRIMALSIMPLEX => "primal simplex",
    _SCIP_LPALGO_DUALSIMPLEX => "dual simplex",
    _SCIP_LPALGO_BARRIER => "barrier algorithm",
    _SCIP_LPALGO_BARRIERCROSSOVER => "barrier algorithm with crossover",
]

typealias _SCIP_DispStatus Int8
const _SCIP_DISPSTATUS_OFF = int8(0)
const _SCIP_DISPSTATUS_AUTO = int8(1)
const _SCIP_DISPSTATUS_ON = int8(2)

const SCIP_DispStatus_MAP = [
    _SCIP_DISPSTATUS_OFF => "display column is not displayed",
    _SCIP_DISPSTATUS_AUTO => "display column is switched on and off automatically",
    _SCIP_DISPSTATUS_ON => "display column is displayed",
]

typealias _SCIP_Result Int8
const _SCIP_DIDNOTRUN = int8(1)
const _SCIP_DELAYED = int8(2)
const _SCIP_DIDNOTFIND = int8(3)
const _SCIP_FEASIBLE = int8(4)
const _SCIP_INFEASIBLE = int8(5)
const _SCIP_UNBOUNDED = int8(6)
const _SCIP_CUTOFF = int8(7)
const _SCIP_SEPARATED = int8(8)
const _SCIP_NEWROUND = int8(9)
const _SCIP_REDUCEDDOM = int8(10)
const _SCIP_CONSADDED = int8(11)
const _SCIP_CONSCHANGED = int8(12)
const _SCIP_BRANCHED = int8(13)
const _SCIP_SOLVELP = int8(14)
const _SCIP_FOUNDSOL = int8(15)
const _SCIP_SUSPENDED = int8(16)
const _SCIP_SUCCESS = int8(17)

const SCIP_Result_MAP = [
    _SCIP_DIDNOTRUN => "the method was not executed",
    _SCIP_DELAYED => "the method was not executed, but should be called again later",
    _SCIP_DIDNOTFIND => "the method was executed, but failed finding anything",
    _SCIP_FEASIBLE => "no infeasibility could be found",
    _SCIP_INFEASIBLE => "an infeasibility was detected",
    _SCIP_UNBOUNDED => "an unboundedness was detected",
    _SCIP_CUTOFF => "the current node is infeasible and can be cut off",
    _SCIP_SEPARATED => "the method added a cutting plane",
    _SCIP_NEWROUND => "the method added a cutting plane and a new separation round should immediately start",
    _SCIP_REDUCEDDOM => "the method reduced the domain of a variable",
    _SCIP_CONSADDED => "the method added a constraint",
    _SCIP_CONSCHANGED => "the method changed a constraint",
    _SCIP_BRANCHED => "the method created a branching",
    _SCIP_SOLVELP => "the current node's LP must be solved",
    _SCIP_FOUNDSOL => "the method found a feasible primal solution",
    _SCIP_SUSPENDED => "the method interrupted its execution, but can continue if needed",
    _SCIP_SUCCESS => "the method was successfully executed",
]

typealias _SCIP_BranchDir Int8
const _SCIP_BRANCHDIR_DOWNWARDS = int8(0)
const _SCIP_BRANCHDIR_UPWARDS = int8(1)
const _SCIP_BRANCHDIR_FIXED = int8(2)
const _SCIP_BRANCHDIR_AUTO = int8(3)

const SCIP_BranchDir_MAP = [
    _SCIP_BRANCHDIR_DOWNWARDS => "downwards branching: decreasing upper bound",
    _SCIP_BRANCHDIR_UPWARDS => "upwards branching: increasing lower bound",
    _SCIP_BRANCHDIR_FIXED => "fixed branching: both bounds changed",
    _SCIP_BRANCHDIR_AUTO => "automatic setting for choosing bound changes",
]

typealias _SCIP_LinearConsType Int8
const _SCIP_LINEARCONSTYPE_INVALIDCONS = int8(-1)
const _SCIP_LINEARCONSTYPE_LINEAR = int8(0)
const _SCIP_LINEARCONSTYPE_LOGICOR = int8(1)
const _SCIP_LINEARCONSTYPE_KNAPSACK = int8(2)
const _SCIP_LINEARCONSTYPE_SETPPC = int8(3)

const SCIP_LinearConsType_MAP = [
    _SCIP_LINEARCONSTYPE_INVALIDCONS => "this is no valid linear constraint type",
    _SCIP_LINEARCONSTYPE_LINEAR => "this is the common linear constraint",
    _SCIP_LINEARCONSTYPE_LOGICOR => "this is a logicor constraint",
    _SCIP_LINEARCONSTYPE_KNAPSACK => "this is a knapsack constraint",
    _SCIP_LINEARCONSTYPE_SETPPC => "this is a setppc constraint",
]

typealias _SCIP_VBCColor Int8
const _SCIP_VBCCOLOR_UNSOLVED = int8(3)
const _SCIP_VBCCOLOR_SOLVED = int8(2)
const _SCIP_VBCCOLOR_CUTOFF = int8(4)
const _SCIP_VBCCOLOR_CONFLICT = int8(15)
const _SCIP_VBCCOLOR_MARKREPROP = int8(11)
const _SCIP_VBCCOLOR_REPROP = int8(12)
const _SCIP_VBCCOLOR_SOLUTION = int8(14)
const _SCIP_VBCCOLOR_NONE = int8(-1)

const SCIP_VBCColor_MAP = [
    _SCIP_VBCCOLOR_UNSOLVED => "color for newly created, unsolved nodes",
    _SCIP_VBCCOLOR_SOLVED => "color for solved nodes",
    _SCIP_VBCCOLOR_CUTOFF => "color for nodes that were cut off",
    _SCIP_VBCCOLOR_CONFLICT => "color for nodes where a conflict constraint was found",
    _SCIP_VBCCOLOR_MARKREPROP => "color for nodes that were marked to be repropagated",
    _SCIP_VBCCOLOR_REPROP => "color for repropagated nodes",
    _SCIP_VBCCOLOR_SOLUTION => "color for solved nodes, where a solution has been found",
    _SCIP_VBCCOLOR_NONE => "color should not be changed",
]

typealias _SCIP_Varstatus Int8
const _SCIP_VARSTATUS_ORIGINAL = int8(0)
const _SCIP_VARSTATUS_LOOSE = int8(1)
const _SCIP_VARSTATUS_COLUMN = int8(2)
const _SCIP_VARSTATUS_FIXED = int8(3)
const _SCIP_VARSTATUS_AGGREGATED = int8(4)
const _SCIP_VARSTATUS_MULTAGGR = int8(5)
const _SCIP_VARSTATUS_NEGATED = int8(6)

const SCIP_Varstatus_MAP = [
    _SCIP_VARSTATUS_ORIGINAL => "variable belongs to original problem",
    _SCIP_VARSTATUS_LOOSE => "variable is a loose variable of the transformed problem",
    _SCIP_VARSTATUS_COLUMN => "variable is a column of the transformed problem",
    _SCIP_VARSTATUS_FIXED => "variable is fixed to specific value in the transformed problem",
    _SCIP_VARSTATUS_AGGREGATED => "variable is aggregated to x = a*y + c in the transformed problem",
    _SCIP_VARSTATUS_MULTAGGR => "variable is aggregated to x = a_1*y_1 + ... + a_k*y_k + c",
    _SCIP_VARSTATUS_NEGATED => "variable is the negation of an original or transformed variable",
]

typealias _SCIP_Vartype Int8
const _SCIP_VARTYPE_BINARY = int8(0)
const _SCIP_VARTYPE_INTEGER = int8(1)
const _SCIP_VARTYPE_IMPLINT = int8(2)
const _SCIP_VARTYPE_CONTINUOUS = int8(3)

const SCIP_Vartype_MAP = [
    _SCIP_VARTYPE_BINARY => "binary variable: x in {0,1}",
    _SCIP_VARTYPE_INTEGER => "integer variable: x in {lb, ..., ub}",
    _SCIP_VARTYPE_IMPLINT => "implicit integer variable: continuous variable, that is always integral",
    _SCIP_VARTYPE_CONTINUOUS => "continuous variable: x in [lb,ub]",
]

typealias _SCIP_DomchgType Int8
const _SCIP_DOMCHGTYPE_DYNAMIC = int8(0)
const _SCIP_DOMCHGTYPE_BOTH = int8(1)
const _SCIP_DOMCHGTYPE_BOUND = int8(2)

const SCIP_DomchgType_MAP = [
    _SCIP_DOMCHGTYPE_DYNAMIC => "dynamic bound changes with size information of arrays",
    _SCIP_DOMCHGTYPE_BOTH => "static domain changes: number of entries equals size of arrays",
    _SCIP_DOMCHGTYPE_BOUND => "static domain changes without any hole changes",
]

typealias _SCIP_BoundchgType Int8
const _SCIP_BOUNDCHGTYPE_BRANCHING = int8(0)
const _SCIP_BOUNDCHGTYPE_CONSINFER = int8(1)
const _SCIP_BOUNDCHGTYPE_PROPINFER = int8(2)

const SCIP_BoundchgType_MAP = [
    _SCIP_BOUNDCHGTYPE_BRANCHING => "bound change was due to a branching decision",
    _SCIP_BOUNDCHGTYPE_CONSINFER => "bound change was due to an inference of a constraint (domain propagation)",
    _SCIP_BOUNDCHGTYPE_PROPINFER => "bound change was due to an inference of a domain propagator",
]

typealias _SCIP_Status Int8
const _SCIP_STATUS_UNKNOWN = int8(0)
const _SCIP_STATUS_USERINTERRUPT = int8(1)
const _SCIP_STATUS_NODELIMIT = int8(2)
const _SCIP_STATUS_TOTALNODELIMIT = int8(3)
const _SCIP_STATUS_STALLNODELIMIT = int8(4)
const _SCIP_STATUS_TIMELIMIT = int8(5)
const _SCIP_STATUS_MEMLIMIT = int8(6)
const _SCIP_STATUS_GAPLIMIT = int8(7)
const _SCIP_STATUS_SOLLIMIT = int8(8)
const _SCIP_STATUS_BESTSOLLIMIT = int8(9)
const _SCIP_STATUS_OPTIMAL = int8(10)
const _SCIP_STATUS_INFEASIBLE = int8(11)
const _SCIP_STATUS_UNBOUNDED = int8(12)
const _SCIP_STATUS_INFORUNBD = int8(13)

const SCIP_Status_MAP = [
    _SCIP_STATUS_UNKNOWN => "the solving status is not yet known",
    _SCIP_STATUS_USERINTERRUPT => "the user interrupted the solving process (by pressing CTRL-C)",
    _SCIP_STATUS_NODELIMIT => "the solving process was interrupted because the node limit was reached",
    _SCIP_STATUS_TOTALNODELIMIT => "the solving process was interrupted because the total node limit was reached (incl. restarts)",
    _SCIP_STATUS_STALLNODELIMIT => "the solving process was interrupted because the stalling node limit was reached (no inprovement w.r.t. primal bound)",
    _SCIP_STATUS_TIMELIMIT => "the solving process was interrupted because the time limit was reached",
    _SCIP_STATUS_MEMLIMIT => "the solving process was interrupted because the memory limit was reached",
    _SCIP_STATUS_GAPLIMIT => "the solving process was interrupted because the gap limit was reached",
    _SCIP_STATUS_SOLLIMIT => "the solving process was interrupted because the solution limit was reached",
    _SCIP_STATUS_BESTSOLLIMIT => "the solving process was interrupted because the solution improvement limit was reached",
    _SCIP_STATUS_OPTIMAL => "the problem was solved to optimality, an optimal solution is available",
    _SCIP_STATUS_INFEASIBLE => "the problem was proven to be infeasible",
    _SCIP_STATUS_UNBOUNDED => "the problem was proven to be unbounded",
    _SCIP_STATUS_INFORUNBD => "the problem was proven to be either infeasible or unbounded",
]

typealias _SCIP_VerbLevel Int8
const _SCIP_VERBLEVEL_NONE = int8(0)
const _SCIP_VERBLEVEL_DIALOG = int8(1)
const _SCIP_VERBLEVEL_MINIMAL = int8(2)
const _SCIP_VERBLEVEL_NORMAL = int8(3)
const _SCIP_VERBLEVEL_HIGH = int8(4)
const _SCIP_VERBLEVEL_FULL = int8(5)

const SCIP_VerbLevel_MAP = [
    _SCIP_VERBLEVEL_NONE => "only error and warning messages are displayed",
    _SCIP_VERBLEVEL_DIALOG => "only interactive dialogs, errors, and warnings are displayed",
    _SCIP_VERBLEVEL_MINIMAL => "only important messages are displayed",
    _SCIP_VERBLEVEL_NORMAL => "standard messages are displayed",
    _SCIP_VERBLEVEL_HIGH => "a lot of information is displayed",
    _SCIP_VERBLEVEL_FULL => "all messages are displayed",
]

typealias _SCIP_SolOrigin Int8
const _SCIP_SOLORIGIN_ORIGINAL = int8(0)
const _SCIP_SOLORIGIN_ZERO = int8(1)
const _SCIP_SOLORIGIN_LPSOL = int8(2)
const _SCIP_SOLORIGIN_NLPSOL = int8(3)
const _SCIP_SOLORIGIN_RELAXSOL = int8(4)
const _SCIP_SOLORIGIN_PSEUDOSOL = int8(5)
const _SCIP_SOLORIGIN_UNKNOWN = int8(6)

const SCIP_SolOrigin_MAP = [
    _SCIP_SOLORIGIN_ORIGINAL => "solution describes original variables; non-cached elements are zero",
    _SCIP_SOLORIGIN_ZERO => "all non-cached elements in solution are equal to zero",
    _SCIP_SOLORIGIN_LPSOL => "all non-cached elements in solution are equal to current LP solution",
    _SCIP_SOLORIGIN_NLPSOL => "all non-cached elements in solution are equal to current NLP solution",
    _SCIP_SOLORIGIN_RELAXSOL => "all non-cached elements in solution are equal to current relaxation solution",
    _SCIP_SOLORIGIN_PSEUDOSOL => "all non-cached elements in solution are equal to current pseudo solution",
    _SCIP_SOLORIGIN_UNKNOWN => "all non-cached elements in solution are unknown; they have to be treated as being an arbitrary value in the variable's bounds",
]

typealias _SCIP_Efficiacychoice Int8
const _SCIP_EFFICIACYCHOICE_LP = int8(0)
const _SCIP_EFFICIACYCHOICE_RELAX = int8(1)
const _SCIP_EFFICIACYCHOICE_NLP = int8(2)

const SCIP_Efficiacychoice_MAP = [
    _SCIP_EFFICIACYCHOICE_LP => "use LP solution to base efficacy on",
    _SCIP_EFFICIACYCHOICE_RELAX => "use relaxation solution to base efficacy on",
    _SCIP_EFFICIACYCHOICE_NLP => "use NLP solution to base efficacy on",
]

typealias _SCIP_Objsense Int8
const _SCIP_OBJSENSE_MAXIMIZE = int8(-1)
const _SCIP_OBJSENSE_MINIMIZE = int8(+1)

const SCIP_Objsense_MAP = [
    _SCIP_OBJSENSE_MAXIMIZE => "maximization of objective function",
    _SCIP_OBJSENSE_MINIMIZE => "minimization of objective function (the default)",
]

typealias _SCIP_ExprOp Int8
const _SCIP_EXPR_VARIDX = int8(1)
const _SCIP_EXPR_CONST = int8(2)
const _SCIP_EXPR_PARAM = int8(3)
const _SCIP_EXPR_PLUS = int8(8)
const _SCIP_EXPR_MINUS = int8(9)
const _SCIP_EXPR_MUL = int8(10)
const _SCIP_EXPR_DIV = int8(11)
const _SCIP_EXPR_SQUARE = int8(12)
const _SCIP_EXPR_SQRT = int8(13)
const _SCIP_EXPR_REALPOWER = int8(14)
const _SCIP_EXPR_INTPOWER = int8(15)
const _SCIP_EXPR_SIGNPOWER = int8(16)
const _SCIP_EXPR_EXP = int8(17)
const _SCIP_EXPR_LOG = int8(18)
const _SCIP_EXPR_SIN = int8(19)
const _SCIP_EXPR_COS = int8(20)
const _SCIP_EXPR_TAN = int8(21)
const _SCIP_EXPR_MIN = int8(24)
const _SCIP_EXPR_MAX = int8(25)
const _SCIP_EXPR_ABS = int8(26)
const _SCIP_EXPR_SIGN = int8(27)
const _SCIP_EXPR_SUM = int8(64)
const _SCIP_EXPR_PRODUCT = int8(65)
const _SCIP_EXPR_LINEAR = int8(66)
const _SCIP_EXPR_QUADRATIC = int8(67)
const _SCIP_EXPR_POLYNOMIAL = int8(68)
const _SCIP_EXPR_LAST = int8(69)

const SCIP_ExprOp_MAP = [
    _SCIP_EXPR_VARIDX => "variable given by index (stored in data.idx)",
    _SCIP_EXPR_CONST => "constant (value stored in data.dbl)",
    _SCIP_EXPR_PARAM => "parameter = a constant that can be modified (should not be simplified away)",
    _SCIP_EXPR_PLUS => "addition (2 operands)",
    _SCIP_EXPR_MINUS => "substraction (2 operands)",
    _SCIP_EXPR_MUL => "multiplication (2 operands)",
    _SCIP_EXPR_DIV => "division (2 operands)",
    _SCIP_EXPR_SQUARE => "square (1 operand)",
    _SCIP_EXPR_SQRT => "square root (1 operand)",
    _SCIP_EXPR_REALPOWER => "power with real exponent (1 operand!, assumed to be nonnegative, exponent is stored in expression data)",
    _SCIP_EXPR_INTPOWER => "power with integer exponent (1 operand!, exponent stored in expression data)",
    _SCIP_EXPR_SIGNPOWER => "signed power (sign(x)|x|^a, 1 operand!, exponent is stored in expression data)",
    _SCIP_EXPR_EXP => "exponential (e^x, 1 operand)",
    _SCIP_EXPR_LOG => "natural logarithm (ln(x), 1 operand)",
    _SCIP_EXPR_SIN => "sinus (1 operand)",
    _SCIP_EXPR_COS => "cosinus (1 operand)",
    _SCIP_EXPR_TAN => "tangent (1 operand)",
    _SCIP_EXPR_MIN => "gaussian error function (1 operand) imaginary part of gaussian error function (1 operand) minimum (2 operands)",
    _SCIP_EXPR_MAX => "maximum (2 operands)",
    _SCIP_EXPR_ABS => "absolute value (1 operand)",
    _SCIP_EXPR_SIGN => "sign of value (1 operand)",
    _SCIP_EXPR_SUM => "summation sum_{i=1}^n op_i (n operands)",
    _SCIP_EXPR_PRODUCT => "product prod_{i=1}^n op_i (n operands)",
    _SCIP_EXPR_LINEAR => "linear term sum_{i=1}^n a_i op_i (n operands)",
    _SCIP_EXPR_QUADRATIC => "quadratic term sum_{i,j=1}^n a_{i,j} op_i op_j (n operands)",
    _SCIP_EXPR_POLYNOMIAL => "polynomial term sum_{I} a_{I}ops^I (I a multiindex, n operands)",
    _SCIP_EXPR_LAST => "no expression, used for counting reasons",
]

typealias _SCIP_ExprCurv Int8
const _SCIP_EXPRCURV_UNKNOWN = int8(0)
const _SCIP_EXPRCURV_CONVEX = int8(1)
const _SCIP_EXPRCURV_CONCAVE = int8(2)
const _SCIP_EXPRCURV_LINEAR = int8(_SCIP_EXPRCURV_CONVEX | _SCIP_EXPRCURV_CONCAVE)

const SCIP_ExprCurv_MAP = [
    _SCIP_EXPRCURV_UNKNOWN => "unknown curvature (or indefinite)",
    _SCIP_EXPRCURV_CONVEX => "convex",
    _SCIP_EXPRCURV_CONCAVE => "concave",
    _SCIP_EXPRCURV_LINEAR => "linear = convex and concave",
]

typealias _SCIP_Stage Int8
const _SCIP_STAGE_INIT = int8(0)
const _SCIP_STAGE_PROBLEM = int8(1)
const _SCIP_STAGE_TRANSFORMING = int8(2)
const _SCIP_STAGE_TRANSFORMED = int8(3)
const _SCIP_STAGE_INITPRESOLVE = int8(4)
const _SCIP_STAGE_PRESOLVING = int8(5)
const _SCIP_STAGE_EXITPRESOLVE = int8(6)
const _SCIP_STAGE_PRESOLVED = int8(7)
const _SCIP_STAGE_INITSOLVE = int8(8)
const _SCIP_STAGE_SOLVING = int8(9)
const _SCIP_STAGE_SOLVED = int8(10)
const _SCIP_STAGE_EXITSOLVE = int8(11)
const _SCIP_STAGE_FREETRANS = int8(12)
const _SCIP_STAGE_FREE = int8(13)

const SCIP_Stage_MAP = [
    _SCIP_STAGE_INIT => "SCIP data structures are initialized, no problem exists",
    _SCIP_STAGE_PROBLEM => "the problem is being created and modified",
    _SCIP_STAGE_TRANSFORMING => "the problem is being transformed into solving data space",
    _SCIP_STAGE_TRANSFORMED => "the problem was transformed into solving data space",
    _SCIP_STAGE_INITPRESOLVE => "presolving is initialized",
    _SCIP_STAGE_PRESOLVING => "the problem is being presolved",
    _SCIP_STAGE_EXITPRESOLVE => "presolving is exited",
    _SCIP_STAGE_PRESOLVED => "the problem was presolved",
    _SCIP_STAGE_INITSOLVE => "the solving process data is being initialized",
    _SCIP_STAGE_SOLVING => "the problem is being solved",
    _SCIP_STAGE_SOLVED => "the problem was solved",
    _SCIP_STAGE_EXITSOLVE => "the solving process data is being freed",
    _SCIP_STAGE_FREETRANS => "the transformed problem is being freed",
    _SCIP_STAGE_FREE => "SCIP data structures are being freed",
]

typealias _SCIP_Setting Int8
const _SCIP_UNDEFINED = int8(0)
const _SCIP_DISABLED = int8(1)
const _SCIP_AUTO = int8(2)
const _SCIP_ENABLED = int8(3)

const SCIP_Setting_MAP = [
    _SCIP_UNDEFINED => "undefined setting",
    _SCIP_DISABLED => "feature is disabled",
    _SCIP_AUTO => "feature is set to automatic mode",
    _SCIP_ENABLED => "feature is enabled",
]

typealias _SCIP_NodeType Int8
const _SCIP_NODETYPE_FOCUSNODE = int8(0)
const _SCIP_NODETYPE_PROBINGNODE = int8(1)
const _SCIP_NODETYPE_SIBLING = int8(2)
const _SCIP_NODETYPE_CHILD = int8(3)
const _SCIP_NODETYPE_LEAF = int8(4)
const _SCIP_NODETYPE_DEADEND = int8(5)
const _SCIP_NODETYPE_JUNCTION = int8(6)
const _SCIP_NODETYPE_PSEUDOFORK = int8(7)
const _SCIP_NODETYPE_FORK = int8(8)
const _SCIP_NODETYPE_SUBROOT = int8(9)
const _SCIP_NODETYPE_REFOCUSNODE = int8(10)

const SCIP_NodeType_MAP = [
    _SCIP_NODETYPE_FOCUSNODE => "the focus node, whose data is stored in the tree data structure",
    _SCIP_NODETYPE_PROBINGNODE => "temporary child node of the focus or refocused node used for probing",
    _SCIP_NODETYPE_SIBLING => "unsolved sibling of the focus node",
    _SCIP_NODETYPE_CHILD => "unsolved child of the focus node",
    _SCIP_NODETYPE_LEAF => "unsolved leaf of the tree, stored in the tree's queue",
    _SCIP_NODETYPE_DEADEND => "temporary type of focus node, if it was solved completely",
    _SCIP_NODETYPE_JUNCTION => "fork without LP solution",
    _SCIP_NODETYPE_PSEUDOFORK => "fork without LP solution and added rows and columns",
    _SCIP_NODETYPE_FORK => "fork with solved LP and added rows and columns",
    _SCIP_NODETYPE_SUBROOT => "fork with solved LP and arbitrarily changed rows and columns",
    _SCIP_NODETYPE_REFOCUSNODE => "junction, fork, or subroot that was refocused for domain propagation",
]

typealias _SCIP_ParamType Int8
const _SCIP_PARAMTYPE_BOOL = int8(0)
const _SCIP_PARAMTYPE_INT = int8(1)
const _SCIP_PARAMTYPE_LONGINT = int8(2)
const _SCIP_PARAMTYPE_REAL = int8(3)
const _SCIP_PARAMTYPE_CHAR = int8(4)
const _SCIP_PARAMTYPE_STRING = int8(5)

const SCIP_ParamType_MAP = [
    _SCIP_PARAMTYPE_BOOL => "bool values: TRUE or FALSE",
    _SCIP_PARAMTYPE_INT => "integer values",
    _SCIP_PARAMTYPE_LONGINT => "long integer values",
    _SCIP_PARAMTYPE_REAL => "real values",
    _SCIP_PARAMTYPE_CHAR => "characters",
    _SCIP_PARAMTYPE_STRING => "strings: arrays of characters",
]

typealias _SCIP_ParamSetting Int8
const _SCIP_PARAMSETTING_DEFAULT = int8(0)
const _SCIP_PARAMSETTING_AGGRESSIVE = int8(1)
const _SCIP_PARAMSETTING_FAST = int8(2)
const _SCIP_PARAMSETTING_OFF = int8(3)

const SCIP_ParamSetting_MAP = [
    _SCIP_PARAMSETTING_DEFAULT => "use default values",
    _SCIP_PARAMSETTING_AGGRESSIVE => "set to aggressive settings",
    _SCIP_PARAMSETTING_FAST => "set to fast settings",
    _SCIP_PARAMSETTING_OFF => "turn off",
]

typealias _SCIP_ParamEmphasis Int8
const _SCIP_PARAMEMPHASIS_DEFAULT = int8(0)
const _SCIP_PARAMEMPHASIS_CPSOLVER = int8(1)
const _SCIP_PARAMEMPHASIS_EASYCIP = int8(2)
const _SCIP_PARAMEMPHASIS_FEASIBILITY = int8(3)
const _SCIP_PARAMEMPHASIS_HARDLP = int8(4)
const _SCIP_PARAMEMPHASIS_OPTIMALITY = int8(5)
const _SCIP_PARAMEMPHASIS_COUNTER = int8(6)

const SCIP_ParamEmphasis_MAP = [
    _SCIP_PARAMEMPHASIS_DEFAULT => "use default values",
    _SCIP_PARAMEMPHASIS_CPSOLVER => "get CP like search (e.g. no LP relaxation)",
    _SCIP_PARAMEMPHASIS_EASYCIP => "solve easy problems fast",
    _SCIP_PARAMEMPHASIS_FEASIBILITY => "detect feasibility fast",
    _SCIP_PARAMEMPHASIS_HARDLP => "be capable to handle hard LPs",
    _SCIP_PARAMEMPHASIS_OPTIMALITY => "prove optimality fast",
    _SCIP_PARAMEMPHASIS_COUNTER => "get a feasible and \"fast\" counting process",
]

typealias _SCIP_NlpParam Int8
const _SCIP_NLPPAR_FROMSCRATCH = int8(0)
const _SCIP_NLPPAR_VERBLEVEL = int8(1)
const _SCIP_NLPPAR_FEASTOL = int8(2)
const _SCIP_NLPPAR_RELOBJTOL = int8(3)
const _SCIP_NLPPAR_LOBJLIM = int8(4)
const _SCIP_NLPPAR_INFINITY = int8(5)
const _SCIP_NLPPAR_ITLIM = int8(6)
const _SCIP_NLPPAR_TILIM = int8(7)
const _SCIP_NLPPAR_OPTFILE = int8(8)
const _SCIP_NLPPAR_FASTFAIL = int8(9)

const SCIP_NlpParam_MAP = [
    _SCIP_NLPPAR_FROMSCRATCH => "solver should start from scratch at next call?: 0 no, 1 yes (int)",
    _SCIP_NLPPAR_VERBLEVEL => "verbosity level of output of NLP solver to the screen: 0 off, 1 normal, 2 debug, > 2 more debug (int)",
    _SCIP_NLPPAR_FEASTOL => "feasibility tolerance for primal variables and slacks (real)",
    _SCIP_NLPPAR_RELOBJTOL => "relative objective tolerance (real)",
    _SCIP_NLPPAR_LOBJLIM => "lower objective limit (cutoff) (real)",
    _SCIP_NLPPAR_INFINITY => "value for infinity used to decide unbounded sides, unbounded variable and constraint bounds, and upper objective limit (real)",
    _SCIP_NLPPAR_ITLIM => "NLP iteration limit (int)",
    _SCIP_NLPPAR_TILIM => "NLP time limit (real)",
    _SCIP_NLPPAR_OPTFILE => "name of a solver specific option file (string)",
    _SCIP_NLPPAR_FASTFAIL => "should the NLP solver stop early if convergence is slow?: 0 no, 1 yes (int)",
]

typealias _SCIP_NlpSolStat Int8
const _SCIP_NLPSOLSTAT_GLOBOPT = int8(0)
const _SCIP_NLPSOLSTAT_LOCOPT = int8(1)
const _SCIP_NLPSOLSTAT_FEASIBLE = int8(2)
const _SCIP_NLPSOLSTAT_LOCINFEASIBLE = int8(3)
const _SCIP_NLPSOLSTAT_GLOBINFEASIBLE = int8(4)
const _SCIP_NLPSOLSTAT_UNBOUNDED = int8(5)
const _SCIP_NLPSOLSTAT_UNKNOWN = int8(6)

const SCIP_NlpSolStat_MAP = [
    _SCIP_NLPSOLSTAT_GLOBOPT => "solved to global optimality",
    _SCIP_NLPSOLSTAT_LOCOPT => "solved to local optimality",
    _SCIP_NLPSOLSTAT_FEASIBLE => "feasible solution found",
    _SCIP_NLPSOLSTAT_LOCINFEASIBLE => "solution found is local infeasible",
    _SCIP_NLPSOLSTAT_GLOBINFEASIBLE => "problem is proven infeasible",
    _SCIP_NLPSOLSTAT_UNBOUNDED => "problem is unbounded",
    _SCIP_NLPSOLSTAT_UNKNOWN => "unknown solution status (e.g., problem not solved yet)",
]

typealias _SCIP_NlpTermStat Int8
const _SCIP_NLPTERMSTAT_OKAY = int8(0)
const _SCIP_NLPTERMSTAT_TILIM = int8(1)
const _SCIP_NLPTERMSTAT_ITLIM = int8(2)
const _SCIP_NLPTERMSTAT_LOBJLIM = int8(3)
const _SCIP_NLPTERMSTAT_UOBJLIM = int8(4)
const _SCIP_NLPTERMSTAT_NUMERR = int8(5)
const _SCIP_NLPTERMSTAT_EVALERR = int8(6)
const _SCIP_NLPTERMSTAT_MEMERR = int8(7)
const _SCIP_NLPTERMSTAT_LICERR = int8(8)
const _SCIP_NLPTERMSTAT_OTHER = int8(9)

const SCIP_NlpTermStat_MAP = [
    _SCIP_NLPTERMSTAT_OKAY => "terminated successfully",
    _SCIP_NLPTERMSTAT_TILIM => "time limit exceeded",
    _SCIP_NLPTERMSTAT_ITLIM => "iteration limit exceeded",
    _SCIP_NLPTERMSTAT_LOBJLIM => "lower objective limit reached",
    _SCIP_NLPTERMSTAT_UOBJLIM => "upper objective limit (= infinity) reached",
    _SCIP_NLPTERMSTAT_NUMERR => "stopped on numerical error",
    _SCIP_NLPTERMSTAT_EVALERR => "stopped on function evaluation error",
    _SCIP_NLPTERMSTAT_MEMERR => "memory exceeded",
    _SCIP_NLPTERMSTAT_LICERR => "licence error",
    _SCIP_NLPTERMSTAT_OTHER => "other error (= this should never happen)",
]

typealias _SCIP_SetppcType Int8
const _SCIP_SETPPCTYPE_PARTITIONING = int8(0)
const _SCIP_SETPPCTYPE_PACKING = int8(1)
const _SCIP_SETPPCTYPE_COVERING = int8(2)

const SCIP_SetppcType_MAP = [
    _SCIP_SETPPCTYPE_PARTITIONING => "constraint is a set partitioning constraint: sum(x) == 1",
    _SCIP_SETPPCTYPE_PACKING => "constraint is a set packing constraint: sum(x) <= 1",
    _SCIP_SETPPCTYPE_COVERING => "constraint is a set covering constraint: sum(x) >= 1",
]

typealias _SCIP_BIVAR_CONVEXITY Int8
const _SCIP_BIVAR_ALLCONVEX = int8(0)
const _SCIP_BIVAR_1CONVEX_INDEFINITE = int8(1)
const _SCIP_BIVAR_CONVEX_CONCAVE = int8(2)
const _SCIP_BIVAR_UNKNOWN = int8(3)

const SCIP_BIVAR_CONVEXITY_MAP = [
    _SCIP_BIVAR_ALLCONVEX => "",
    _SCIP_BIVAR_1CONVEX_INDEFINITE => "",
    _SCIP_BIVAR_CONVEX_CONCAVE => "",
    _SCIP_BIVAR_UNKNOWN => "",
]

typealias _SCIP_ClockType Int8
const _SCIP_CLOCKTYPE_DEFAULT = int8(0)
const _SCIP_CLOCKTYPE_CPU = int8(1)
const _SCIP_CLOCKTYPE_WALL = int8(2)

const SCIP_ClockType_MAP = [
    _SCIP_CLOCKTYPE_DEFAULT => "use default clock type",
    _SCIP_CLOCKTYPE_CPU => "use CPU clock",
    _SCIP_CLOCKTYPE_WALL => "use wall clock",
]

typealias _SCIP_Retcode Int8
const _SCIP_OKAY = int8(+1)
const _SCIP_ERROR = int8(0)
const _SCIP_NOMEMORY = int8(-1)
const _SCIP_READERROR = int8(-2)
const _SCIP_WRITEERROR = int8(-3)
const _SCIP_NOFILE = int8(-4)
const _SCIP_FILECREATEERROR = int8(-5)
const _SCIP_LPERROR = int8(-6)
const _SCIP_NOPROBLEM = int8(-7)
const _SCIP_INVALIDCALL = int8(-8)
const _SCIP_INVALIDDATA = int8(-9)
const _SCIP_INVALIDRESULT = int8(-10)
const _SCIP_PLUGINNOTFOUND = int8(-11)
const _SCIP_PARAMETERUNKNOWN = int8(-12)
const _SCIP_PARAMETERWRONGTYPE = int8(-13)
const _SCIP_PARAMETERWRONGVAL = int8(-14)
const _SCIP_KEYALREADYEXISTING = int8(-15)
const _SCIP_MAXDEPTHLEVEL = int8(-16)
const _SCIP_BRANCHERROR = int8(-17)

const SCIP_Retcode_MAP = [
    _SCIP_OKAY => "normal termination",
    _SCIP_ERROR => "unspecified error",
    _SCIP_NOMEMORY => "insufficient memory error",
    _SCIP_READERROR => "read error",
    _SCIP_WRITEERROR => "write error",
    _SCIP_NOFILE => "file not found error",
    _SCIP_FILECREATEERROR => "cannot create file",
    _SCIP_LPERROR => "error in LP solver",
    _SCIP_NOPROBLEM => "no problem exists",
    _SCIP_INVALIDCALL => "method cannot be called at this time in solution process",
    _SCIP_INVALIDDATA => "error in input data",
    _SCIP_INVALIDRESULT => "method returned an invalid result code",
    _SCIP_PLUGINNOTFOUND => "a required plugin was not found",
    _SCIP_PARAMETERUNKNOWN => "the parameter with the given name was not found",
    _SCIP_PARAMETERWRONGTYPE => "the parameter is not of the expected type",
    _SCIP_PARAMETERWRONGVAL => "the value is invalid for the given parameter",
    _SCIP_KEYALREADYEXISTING => "the given key is already existing in table",
    _SCIP_MAXDEPTHLEVEL => "maximal branching depth level exceeded",
    _SCIP_BRANCHERROR => "no branching could be created",
]

