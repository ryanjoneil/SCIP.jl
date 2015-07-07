# SCIP enums
export _SCIP_BIVAR_CONVEXITY, _SCIP_BIVAR_ALLCONVEX, _SCIP_BIVAR_1CONVEX_INDEFINITE, _SCIP_BIVAR_CONVEX_CONCAVE, _SCIP_BIVAR_UNKNOWN, SCIP_BIVAR_CONVEXITY_MAP
typealias _SCIP_BIVAR_CONVEXITY Int8
const _SCIP_BIVAR_ALLCONVEX = int8(0)
const _SCIP_BIVAR_1CONVEX_INDEFINITE = int8(1)
const _SCIP_BIVAR_CONVEX_CONCAVE = int8(2)
const _SCIP_BIVAR_UNKNOWN = int8(3)

const SCIP_BIVAR_CONVEXITYs_MAP = [
    _SCIP_BIVAR_ALLCONVEX => "",
    _SCIP_BIVAR_1CONVEX_INDEFINITE => "",
    _SCIP_BIVAR_CONVEX_CONCAVE => "",
    _SCIP_BIVAR_UNKNOWN => "",
]

export _SCIP_LinearConsType, _SCIP_LINEARCONSTYPE_INVALIDCONS, _SCIP_LINEARCONSTYPE_LINEAR, _SCIP_LINEARCONSTYPE_LOGICOR, _SCIP_LINEARCONSTYPE_KNAPSACK, _SCIP_LINEARCONSTYPE_SETPPC, SCIP_LinearConsType_MAP
typealias _SCIP_LinearConsType Int8
const _SCIP_LINEARCONSTYPE_INVALIDCONS = int8(-1)
const _SCIP_LINEARCONSTYPE_LINEAR = int8(0)
const _SCIP_LINEARCONSTYPE_LOGICOR = int8(1)
const _SCIP_LINEARCONSTYPE_KNAPSACK = int8(2)
const _SCIP_LINEARCONSTYPE_SETPPC = int8(3)

const SCIP_LinearConsTypes_MAP = [
    _SCIP_LINEARCONSTYPE_INVALIDCONS => "this is no valid linear constraint type",
    _SCIP_LINEARCONSTYPE_LINEAR => "this is the common linear constraint",
    _SCIP_LINEARCONSTYPE_LOGICOR => "this is a logicor constraint",
    _SCIP_LINEARCONSTYPE_KNAPSACK => "this is a knapsack constraint",
    _SCIP_LINEARCONSTYPE_SETPPC => "this is a setppc constraint",
]

export _SCIP_SetppcType, _SCIP_SETPPCTYPE_PARTITIONING, _SCIP_SETPPCTYPE_PACKING, _SCIP_SETPPCTYPE_COVERING, SCIP_SetppcType_MAP
typealias _SCIP_SetppcType Int8
const _SCIP_SETPPCTYPE_PARTITIONING = int8(0)
const _SCIP_SETPPCTYPE_PACKING = int8(1)
const _SCIP_SETPPCTYPE_COVERING = int8(2)

const SCIP_SetppcTypes_MAP = [
    _SCIP_SETPPCTYPE_PARTITIONING => "constraint is a set partitioning constraint: sum(x) == 1",
    _SCIP_SETPPCTYPE_PACKING => "constraint is a set packing constraint: sum(x) <= 1",
    _SCIP_SETPPCTYPE_COVERING => "constraint is a set covering constraint: sum(x) >= 1",
]

export _SCIP_ClockType, _SCIP_CLOCKTYPE_DEFAULT, _SCIP_CLOCKTYPE_CPU, _SCIP_CLOCKTYPE_WALL, SCIP_ClockType_MAP
typealias _SCIP_ClockType Int8
const _SCIP_CLOCKTYPE_DEFAULT = int8(0)
const _SCIP_CLOCKTYPE_CPU = int8(1)
const _SCIP_CLOCKTYPE_WALL = int8(2)

const SCIP_ClockTypes_MAP = [
    _SCIP_CLOCKTYPE_DEFAULT => "use default clock type",
    _SCIP_CLOCKTYPE_CPU => "use CPU clock",
    _SCIP_CLOCKTYPE_WALL => "use wall clock",
]

export _SCIP_DispStatus, _SCIP_DISPSTATUS_OFF, _SCIP_DISPSTATUS_AUTO, _SCIP_DISPSTATUS_ON, SCIP_DispStatus_MAP
typealias _SCIP_DispStatus Int8
const _SCIP_DISPSTATUS_OFF = int8(0)
const _SCIP_DISPSTATUS_AUTO = int8(1)
const _SCIP_DISPSTATUS_ON = int8(2)

const SCIP_DispStatuss_MAP = [
    _SCIP_DISPSTATUS_OFF => "display column is not displayed",
    _SCIP_DISPSTATUS_AUTO => "display column is switched on and off automatically",
    _SCIP_DISPSTATUS_ON => "display column is displayed",
]

export _SCIP_ExprOp, _SCIP_EXPR_VARIDX, _SCIP_EXPR_CONST, _SCIP_EXPR_PARAM, _SCIP_EXPR_PLUS, _SCIP_EXPR_MINUS, _SCIP_EXPR_MUL, _SCIP_EXPR_DIV, _SCIP_EXPR_SQUARE, _SCIP_EXPR_SQRT, _SCIP_EXPR_REALPOWER, _SCIP_EXPR_INTPOWER, _SCIP_EXPR_SIGNPOWER, _SCIP_EXPR_EXP, _SCIP_EXPR_LOG, _SCIP_EXPR_SIN, _SCIP_EXPR_COS, _SCIP_EXPR_TAN, _SCIP_EXPR_MIN, _SCIP_EXPR_MAX, _SCIP_EXPR_ABS, _SCIP_EXPR_SIGN, _SCIP_EXPR_SUM, _SCIP_EXPR_PRODUCT, _SCIP_EXPR_LINEAR, _SCIP_EXPR_QUADRATIC, _SCIP_EXPR_POLYNOMIAL, _SCIP_EXPR_USER, _SCIP_EXPR_LAST, SCIP_ExprOp_MAP
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
const _SCIP_EXPR_USER = int8(69)
const _SCIP_EXPR_LAST = int8(70)

const SCIP_ExprOps_MAP = [
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
    _SCIP_EXPR_USER => "a user defined expression",
    _SCIP_EXPR_LAST => "no expression, used for counting reasons",
]

export _SCIP_ExprCurv, _SCIP_EXPRCURV_UNKNOWN, _SCIP_EXPRCURV_CONVEX, _SCIP_EXPRCURV_CONCAVE, _SCIP_EXPRCURV_LINEAR, SCIP_ExprCurv_MAP
typealias _SCIP_ExprCurv Int8
const _SCIP_EXPRCURV_UNKNOWN = int8(0)
const _SCIP_EXPRCURV_CONVEX = int8(1)
const _SCIP_EXPRCURV_CONCAVE = int8(2)
const _SCIP_EXPRCURV_LINEAR = int8(0)

const SCIP_ExprCurvs_MAP = [
    _SCIP_EXPRCURV_UNKNOWN => "unknown curvature (or indefinite)",
    _SCIP_EXPRCURV_CONVEX => "convex",
    _SCIP_EXPRCURV_CONCAVE => "concave",
    _SCIP_EXPRCURV_LINEAR => "linear = convex and concave",
]

export _SCIP_BranchDir, _SCIP_BRANCHDIR_DOWNWARDS, _SCIP_BRANCHDIR_UPWARDS, _SCIP_BRANCHDIR_FIXED, _SCIP_BRANCHDIR_AUTO, SCIP_BranchDir_MAP
typealias _SCIP_BranchDir Int8
const _SCIP_BRANCHDIR_DOWNWARDS = int8(0)
const _SCIP_BRANCHDIR_UPWARDS = int8(1)
const _SCIP_BRANCHDIR_FIXED = int8(2)
const _SCIP_BRANCHDIR_AUTO = int8(3)

const SCIP_BranchDirs_MAP = [
    _SCIP_BRANCHDIR_DOWNWARDS => "downwards branching: decreasing upper bound",
    _SCIP_BRANCHDIR_UPWARDS => "upwards branching: increasing lower bound",
    _SCIP_BRANCHDIR_FIXED => "fixed branching: both bounds changed",
    _SCIP_BRANCHDIR_AUTO => "automatic setting for choosing bound changes",
]

export _SCIP_LPSolStat, _SCIP_LPSOLSTAT_NOTSOLVED, _SCIP_LPSOLSTAT_OPTIMAL, _SCIP_LPSOLSTAT_INFEASIBLE, _SCIP_LPSOLSTAT_UNBOUNDEDRAY, _SCIP_LPSOLSTAT_OBJLIMIT, _SCIP_LPSOLSTAT_ITERLIMIT, _SCIP_LPSOLSTAT_TIMELIMIT, _SCIP_LPSOLSTAT_ERROR, SCIP_LPSolStat_MAP
typealias _SCIP_LPSolStat Int8
const _SCIP_LPSOLSTAT_NOTSOLVED = int8(0)
const _SCIP_LPSOLSTAT_OPTIMAL = int8(1)
const _SCIP_LPSOLSTAT_INFEASIBLE = int8(2)
const _SCIP_LPSOLSTAT_UNBOUNDEDRAY = int8(3)
const _SCIP_LPSOLSTAT_OBJLIMIT = int8(4)
const _SCIP_LPSOLSTAT_ITERLIMIT = int8(5)
const _SCIP_LPSOLSTAT_TIMELIMIT = int8(6)
const _SCIP_LPSOLSTAT_ERROR = int8(7)

const SCIP_LPSolStats_MAP = [
    _SCIP_LPSOLSTAT_NOTSOLVED => "LP was not solved, no solution exists",
    _SCIP_LPSOLSTAT_OPTIMAL => "LP was solved to optimality",
    _SCIP_LPSOLSTAT_INFEASIBLE => "LP is primal infeasible",
    _SCIP_LPSOLSTAT_UNBOUNDEDRAY => "LP has a primal unbounded ray",
    _SCIP_LPSOLSTAT_OBJLIMIT => "objective limit was reached during optimization",
    _SCIP_LPSOLSTAT_ITERLIMIT => "iteration limit was reached during optimization",
    _SCIP_LPSOLSTAT_TIMELIMIT => "time limit was reached during optimization",
    _SCIP_LPSOLSTAT_ERROR => "an error occured during optimization",
]

export _SCIP_BoundType, _SCIP_BOUNDTYPE_LOWER, _SCIP_BOUNDTYPE_UPPER, SCIP_BoundType_MAP
typealias _SCIP_BoundType Int8
const _SCIP_BOUNDTYPE_LOWER = int8(0)
const _SCIP_BOUNDTYPE_UPPER = int8(1)

const SCIP_BoundTypes_MAP = [
    _SCIP_BOUNDTYPE_LOWER => "lower bound",
    _SCIP_BOUNDTYPE_UPPER => "upper bound",
]

export _SCIP_SideType, _SCIP_SIDETYPE_LEFT, _SCIP_SIDETYPE_RIGHT, SCIP_SideType_MAP
typealias _SCIP_SideType Int8
const _SCIP_SIDETYPE_LEFT = int8(0)
const _SCIP_SIDETYPE_RIGHT = int8(1)

const SCIP_SideTypes_MAP = [
    _SCIP_SIDETYPE_LEFT => "left hand side",
    _SCIP_SIDETYPE_RIGHT => "right hand side",
]

export _SCIP_RowOriginType, _SCIP_ROWORIGINTYPE_UNSPEC, _SCIP_ROWORIGINTYPE_CONS, _SCIP_ROWORIGINTYPE_SEPA, SCIP_RowOriginType_MAP
typealias _SCIP_RowOriginType Int8
const _SCIP_ROWORIGINTYPE_UNSPEC = int8(0)
const _SCIP_ROWORIGINTYPE_CONS = int8(1)
const _SCIP_ROWORIGINTYPE_SEPA = int8(2)

const SCIP_RowOriginTypes_MAP = [
    _SCIP_ROWORIGINTYPE_UNSPEC => "unspecified origin of row",
    _SCIP_ROWORIGINTYPE_CONS => "row created by constraint handler",
    _SCIP_ROWORIGINTYPE_SEPA => "row created by separator",
]

export _SCIP_LPAlgo, _SCIP_LPALGO_PRIMALSIMPLEX, _SCIP_LPALGO_DUALSIMPLEX, _SCIP_LPALGO_BARRIER, _SCIP_LPALGO_BARRIERCROSSOVER, SCIP_LPAlgo_MAP
typealias _SCIP_LPAlgo Int8
const _SCIP_LPALGO_PRIMALSIMPLEX = int8(0)
const _SCIP_LPALGO_DUALSIMPLEX = int8(1)
const _SCIP_LPALGO_BARRIER = int8(2)
const _SCIP_LPALGO_BARRIERCROSSOVER = int8(3)

const SCIP_LPAlgos_MAP = [
    _SCIP_LPALGO_PRIMALSIMPLEX => "primal simplex",
    _SCIP_LPALGO_DUALSIMPLEX => "dual simplex",
    _SCIP_LPALGO_BARRIER => "barrier algorithm",
    _SCIP_LPALGO_BARRIERCROSSOVER => "barrier algorithm with crossover",
]

export _SCIP_ObjSen, _SCIP_OBJSEN_MAXIMIZE, _SCIP_OBJSEN_MINIMIZE, SCIP_ObjSen_MAP
typealias _SCIP_ObjSen Int8
const _SCIP_OBJSEN_MAXIMIZE = int8(-1)
const _SCIP_OBJSEN_MINIMIZE = int8(1)

const SCIP_ObjSens_MAP = [
    _SCIP_OBJSEN_MAXIMIZE => "maximize objective function",
    _SCIP_OBJSEN_MINIMIZE => "minimize objective function",
]

export _SCIP_LPParam, _SCIP_LPPAR_FROMSCRATCH, _SCIP_LPPAR_FASTMIP, _SCIP_LPPAR_SCALING, _SCIP_LPPAR_PRESOLVING, _SCIP_LPPAR_PRICING, _SCIP_LPPAR_LPINFO, _SCIP_LPPAR_FEASTOL, _SCIP_LPPAR_DUALFEASTOL, _SCIP_LPPAR_BARRIERCONVTOL, _SCIP_LPPAR_LOBJLIM, _SCIP_LPPAR_UOBJLIM, _SCIP_LPPAR_LPITLIM, _SCIP_LPPAR_LPTILIM, _SCIP_LPPAR_MARKOWITZ, _SCIP_LPPAR_ROWREPSWITCH, _SCIP_LPPAR_THREADS, _SCIP_LPPAR_CONDITIONLIMIT, _SCIP_LPPAR_TIMING, SCIP_LPParam_MAP
typealias _SCIP_LPParam Int8
const _SCIP_LPPAR_FROMSCRATCH = int8(0)
const _SCIP_LPPAR_FASTMIP = int8(1)
const _SCIP_LPPAR_SCALING = int8(2)
const _SCIP_LPPAR_PRESOLVING = int8(3)
const _SCIP_LPPAR_PRICING = int8(4)
const _SCIP_LPPAR_LPINFO = int8(5)
const _SCIP_LPPAR_FEASTOL = int8(6)
const _SCIP_LPPAR_DUALFEASTOL = int8(7)
const _SCIP_LPPAR_BARRIERCONVTOL = int8(8)
const _SCIP_LPPAR_LOBJLIM = int8(9)
const _SCIP_LPPAR_UOBJLIM = int8(10)
const _SCIP_LPPAR_LPITLIM = int8(11)
const _SCIP_LPPAR_LPTILIM = int8(12)
const _SCIP_LPPAR_MARKOWITZ = int8(13)
const _SCIP_LPPAR_ROWREPSWITCH = int8(14)
const _SCIP_LPPAR_THREADS = int8(15)
const _SCIP_LPPAR_CONDITIONLIMIT = int8(16)
const _SCIP_LPPAR_TIMING = int8(17)

const SCIP_LPParams_MAP = [
    _SCIP_LPPAR_FROMSCRATCH => "solver should start from scratch at next call?",
    _SCIP_LPPAR_FASTMIP => "fast mip setting of LP solver",
    _SCIP_LPPAR_SCALING => "should LP solver use scaling?",
    _SCIP_LPPAR_PRESOLVING => "should LP solver use presolving?",
    _SCIP_LPPAR_PRICING => "pricing strategy",
    _SCIP_LPPAR_LPINFO => "should LP solver output information to the screen?",
    _SCIP_LPPAR_FEASTOL => "feasibility tolerance for primal variables and slacks",
    _SCIP_LPPAR_DUALFEASTOL => "feasibility tolerance for dual variables and reduced costs",
    _SCIP_LPPAR_BARRIERCONVTOL => "convergence tolerance used in barrier algorithm",
    _SCIP_LPPAR_LOBJLIM => "lower objective limit",
    _SCIP_LPPAR_UOBJLIM => "upper objective limit",
    _SCIP_LPPAR_LPITLIM => "LP iteration limit",
    _SCIP_LPPAR_LPTILIM => "LP time limit",
    _SCIP_LPPAR_MARKOWITZ => "Markowitz tolerance",
    _SCIP_LPPAR_ROWREPSWITCH => "simplex algorithm shall use row representation of the basis if number of rows divided by number of columns exceeds this value",
    _SCIP_LPPAR_THREADS => "number of threads used to solve the LP",
    _SCIP_LPPAR_CONDITIONLIMIT => "maximum condition number of LP basis counted as stable",
    _SCIP_LPPAR_TIMING => "type of timer (1 - cpu, 2 - wallclock, 0 - off)",
]

export _SCIP_Pricing, _SCIP_PRICING_LPIDEFAULT, _SCIP_PRICING_AUTO, _SCIP_PRICING_FULL, _SCIP_PRICING_PARTIAL, _SCIP_PRICING_STEEP, _SCIP_PRICING_STEEPQSTART, _SCIP_PRICING_DEVEX, SCIP_Pricing_MAP
typealias _SCIP_Pricing Int8
const _SCIP_PRICING_LPIDEFAULT = int8(0)
const _SCIP_PRICING_AUTO = int8(1)
const _SCIP_PRICING_FULL = int8(2)
const _SCIP_PRICING_PARTIAL = int8(3)
const _SCIP_PRICING_STEEP = int8(4)
const _SCIP_PRICING_STEEPQSTART = int8(5)
const _SCIP_PRICING_DEVEX = int8(6)

const SCIP_Pricings_MAP = [
    _SCIP_PRICING_LPIDEFAULT => "the SCIP/LP interface should use its preferred strategy",
    _SCIP_PRICING_AUTO => "the LP solver should use its preferred strategy",
    _SCIP_PRICING_FULL => "full pricing",
    _SCIP_PRICING_PARTIAL => "partial pricing",
    _SCIP_PRICING_STEEP => "steepest edge pricing",
    _SCIP_PRICING_STEEPQSTART => "steepest edge pricing without initial dual norms",
    _SCIP_PRICING_DEVEX => "devex pricing",
]

export _SCIP_BaseStat, _SCIP_BASESTAT_LOWER, _SCIP_BASESTAT_BASIC, _SCIP_BASESTAT_UPPER, _SCIP_BASESTAT_ZERO, SCIP_BaseStat_MAP
typealias _SCIP_BaseStat Int8
const _SCIP_BASESTAT_LOWER = int8(0)
const _SCIP_BASESTAT_BASIC = int8(1)
const _SCIP_BASESTAT_UPPER = int8(2)
const _SCIP_BASESTAT_ZERO = int8(3)

const SCIP_BaseStats_MAP = [
    _SCIP_BASESTAT_LOWER => "(slack) variable is at its lower bound",
    _SCIP_BASESTAT_BASIC => "(slack) variable is basic",
    _SCIP_BASESTAT_UPPER => "(slack) variable is at its upper bound",
    _SCIP_BASESTAT_ZERO => "free variable is non-basic and set to zero",
]

export _SCIP_LPSolQuality, _SCIP_LPSOLQUALITY_ESTIMCONDITION, _SCIP_LPSOLQUALITY_EXACTCONDITION, SCIP_LPSolQuality_MAP
typealias _SCIP_LPSolQuality Int8
const _SCIP_LPSOLQUALITY_ESTIMCONDITION = int8(0)
const _SCIP_LPSOLQUALITY_EXACTCONDITION = int8(0)

const SCIP_LPSolQualitys_MAP = [
    _SCIP_LPSOLQUALITY_ESTIMCONDITION => "estimated condition number of (scaled) basis matrix (SCIP_Real)",
    _SCIP_LPSOLQUALITY_EXACTCONDITION => "exact condition number of (scaled) basis matrix (SCIP_Real)",
]

export _SCIP_VerbLevel, _SCIP_VERBLEVEL_NONE, _SCIP_VERBLEVEL_DIALOG, _SCIP_VERBLEVEL_MINIMAL, _SCIP_VERBLEVEL_NORMAL, _SCIP_VERBLEVEL_HIGH, _SCIP_VERBLEVEL_FULL, SCIP_VerbLevel_MAP
typealias _SCIP_VerbLevel Int8
const _SCIP_VERBLEVEL_NONE = int8(0)
const _SCIP_VERBLEVEL_DIALOG = int8(1)
const _SCIP_VERBLEVEL_MINIMAL = int8(2)
const _SCIP_VERBLEVEL_NORMAL = int8(3)
const _SCIP_VERBLEVEL_HIGH = int8(4)
const _SCIP_VERBLEVEL_FULL = int8(5)

const SCIP_VerbLevels_MAP = [
    _SCIP_VERBLEVEL_NONE => "only error and warning messages are displayed",
    _SCIP_VERBLEVEL_DIALOG => "only interactive dialogs, errors, and warnings are displayed",
    _SCIP_VERBLEVEL_MINIMAL => "only important messages are displayed",
    _SCIP_VERBLEVEL_NORMAL => "standard messages are displayed",
    _SCIP_VERBLEVEL_HIGH => "a lot of information is displayed",
    _SCIP_VERBLEVEL_FULL => "all messages are displayed",
]

export _SCIP_Confidencelevel, _SCIP_CONFIDENCELEVEL_MIN, _SCIP_CONFIDENCELEVEL_LOW, _SCIP_CONFIDENCELEVEL_MEDIUM, _SCIP_CONFIDENCELEVEL_HIGH, _SCIP_CONFIDENCELEVEL_MAX, SCIP_Confidencelevel_MAP
typealias _SCIP_Confidencelevel Int8
const _SCIP_CONFIDENCELEVEL_MIN = int8(0)
const _SCIP_CONFIDENCELEVEL_LOW = int8(1)
const _SCIP_CONFIDENCELEVEL_MEDIUM = int8(2)
const _SCIP_CONFIDENCELEVEL_HIGH = int8(3)
const _SCIP_CONFIDENCELEVEL_MAX = int8(4)

const SCIP_Confidencelevels_MAP = [
    _SCIP_CONFIDENCELEVEL_MIN => "one-sided confidence level 75 %, two-sided 50 %",
    _SCIP_CONFIDENCELEVEL_LOW => "(one-sided) confidence level 87.5 %, two-sided 75 %",
    _SCIP_CONFIDENCELEVEL_MEDIUM => "(one-sided) confidence level 90 %, two-sided 80 %",
    _SCIP_CONFIDENCELEVEL_HIGH => "(one-sided) confidence level 95 %, two-sided 90 %",
    _SCIP_CONFIDENCELEVEL_MAX => "(one-sided) confidence level 97.5 %, two-sided 95 %",
]

export _SCIP_NlpParam, _SCIP_NLPPAR_FROMSCRATCH, _SCIP_NLPPAR_VERBLEVEL, _SCIP_NLPPAR_FEASTOL, _SCIP_NLPPAR_RELOBJTOL, _SCIP_NLPPAR_LOBJLIM, _SCIP_NLPPAR_INFINITY, _SCIP_NLPPAR_ITLIM, _SCIP_NLPPAR_TILIM, _SCIP_NLPPAR_OPTFILE, _SCIP_NLPPAR_FASTFAIL, SCIP_NlpParam_MAP
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

const SCIP_NlpParams_MAP = [
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

export _SCIP_NlpSolStat, _SCIP_NLPSOLSTAT_GLOBOPT, _SCIP_NLPSOLSTAT_LOCOPT, _SCIP_NLPSOLSTAT_FEASIBLE, _SCIP_NLPSOLSTAT_LOCINFEASIBLE, _SCIP_NLPSOLSTAT_GLOBINFEASIBLE, _SCIP_NLPSOLSTAT_UNBOUNDED, _SCIP_NLPSOLSTAT_UNKNOWN, SCIP_NlpSolStat_MAP
typealias _SCIP_NlpSolStat Int8
const _SCIP_NLPSOLSTAT_GLOBOPT = int8(0)
const _SCIP_NLPSOLSTAT_LOCOPT = int8(1)
const _SCIP_NLPSOLSTAT_FEASIBLE = int8(2)
const _SCIP_NLPSOLSTAT_LOCINFEASIBLE = int8(3)
const _SCIP_NLPSOLSTAT_GLOBINFEASIBLE = int8(4)
const _SCIP_NLPSOLSTAT_UNBOUNDED = int8(5)
const _SCIP_NLPSOLSTAT_UNKNOWN = int8(6)

const SCIP_NlpSolStats_MAP = [
    _SCIP_NLPSOLSTAT_GLOBOPT => "solved to global optimality",
    _SCIP_NLPSOLSTAT_LOCOPT => "solved to local optimality",
    _SCIP_NLPSOLSTAT_FEASIBLE => "feasible solution found",
    _SCIP_NLPSOLSTAT_LOCINFEASIBLE => "solution found is local infeasible",
    _SCIP_NLPSOLSTAT_GLOBINFEASIBLE => "problem is proven infeasible",
    _SCIP_NLPSOLSTAT_UNBOUNDED => "problem is unbounded",
    _SCIP_NLPSOLSTAT_UNKNOWN => "unknown solution status (e.g., problem not solved yet)",
]

export _SCIP_NlpTermStat, _SCIP_NLPTERMSTAT_OKAY, _SCIP_NLPTERMSTAT_TILIM, _SCIP_NLPTERMSTAT_ITLIM, _SCIP_NLPTERMSTAT_LOBJLIM, _SCIP_NLPTERMSTAT_UOBJLIM, _SCIP_NLPTERMSTAT_NUMERR, _SCIP_NLPTERMSTAT_EVALERR, _SCIP_NLPTERMSTAT_MEMERR, _SCIP_NLPTERMSTAT_LICERR, _SCIP_NLPTERMSTAT_OTHER, SCIP_NlpTermStat_MAP
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

const SCIP_NlpTermStats_MAP = [
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

export _SCIP_ParamType, _SCIP_PARAMTYPE_BOOL, _SCIP_PARAMTYPE_INT, _SCIP_PARAMTYPE_LONGINT, _SCIP_PARAMTYPE_REAL, _SCIP_PARAMTYPE_CHAR, _SCIP_PARAMTYPE_STRING, SCIP_ParamType_MAP
typealias _SCIP_ParamType Int8
const _SCIP_PARAMTYPE_BOOL = int8(0)
const _SCIP_PARAMTYPE_INT = int8(1)
const _SCIP_PARAMTYPE_LONGINT = int8(2)
const _SCIP_PARAMTYPE_REAL = int8(3)
const _SCIP_PARAMTYPE_CHAR = int8(4)
const _SCIP_PARAMTYPE_STRING = int8(5)

const SCIP_ParamTypes_MAP = [
    _SCIP_PARAMTYPE_BOOL => "bool values: TRUE or FALSE",
    _SCIP_PARAMTYPE_INT => "integer values",
    _SCIP_PARAMTYPE_LONGINT => "long integer values",
    _SCIP_PARAMTYPE_REAL => "real values",
    _SCIP_PARAMTYPE_CHAR => "characters",
    _SCIP_PARAMTYPE_STRING => "strings: arrays of characters",
]

export _SCIP_ParamSetting, _SCIP_PARAMSETTING_DEFAULT, _SCIP_PARAMSETTING_AGGRESSIVE, _SCIP_PARAMSETTING_FAST, _SCIP_PARAMSETTING_OFF, SCIP_ParamSetting_MAP
typealias _SCIP_ParamSetting Int8
const _SCIP_PARAMSETTING_DEFAULT = int8(0)
const _SCIP_PARAMSETTING_AGGRESSIVE = int8(1)
const _SCIP_PARAMSETTING_FAST = int8(2)
const _SCIP_PARAMSETTING_OFF = int8(3)

const SCIP_ParamSettings_MAP = [
    _SCIP_PARAMSETTING_DEFAULT => "use default values",
    _SCIP_PARAMSETTING_AGGRESSIVE => "set to aggressive settings",
    _SCIP_PARAMSETTING_FAST => "set to fast settings",
    _SCIP_PARAMSETTING_OFF => "turn off",
]

export _SCIP_ParamEmphasis, _SCIP_PARAMEMPHASIS_DEFAULT, _SCIP_PARAMEMPHASIS_CPSOLVER, _SCIP_PARAMEMPHASIS_EASYCIP, _SCIP_PARAMEMPHASIS_FEASIBILITY, _SCIP_PARAMEMPHASIS_HARDLP, _SCIP_PARAMEMPHASIS_OPTIMALITY, _SCIP_PARAMEMPHASIS_COUNTER, SCIP_ParamEmphasis_MAP
typealias _SCIP_ParamEmphasis Int8
const _SCIP_PARAMEMPHASIS_DEFAULT = int8(0)
const _SCIP_PARAMEMPHASIS_CPSOLVER = int8(1)
const _SCIP_PARAMEMPHASIS_EASYCIP = int8(2)
const _SCIP_PARAMEMPHASIS_FEASIBILITY = int8(3)
const _SCIP_PARAMEMPHASIS_HARDLP = int8(4)
const _SCIP_PARAMEMPHASIS_OPTIMALITY = int8(5)
const _SCIP_PARAMEMPHASIS_COUNTER = int8(6)

const SCIP_ParamEmphasiss_MAP = [
    _SCIP_PARAMEMPHASIS_DEFAULT => "use default values",
    _SCIP_PARAMEMPHASIS_CPSOLVER => "get CP like search (e.g. no LP relaxation)",
    _SCIP_PARAMEMPHASIS_EASYCIP => "solve easy problems fast",
    _SCIP_PARAMEMPHASIS_FEASIBILITY => "detect feasibility fast",
    _SCIP_PARAMEMPHASIS_HARDLP => "be capable to handle hard LPs",
    _SCIP_PARAMEMPHASIS_OPTIMALITY => "prove optimality fast",
    _SCIP_PARAMEMPHASIS_COUNTER => "get a feasible and \"fast\" counting process",
]

export _SCIP_Objsense, _SCIP_OBJSENSE_MAXIMIZE, _SCIP_OBJSENSE_MINIMIZE, SCIP_Objsense_MAP
typealias _SCIP_Objsense Int8
const _SCIP_OBJSENSE_MAXIMIZE = int8(-1)
const _SCIP_OBJSENSE_MINIMIZE = int8(1)

const SCIP_Objsenses_MAP = [
    _SCIP_OBJSENSE_MAXIMIZE => "maximization of objective function",
    _SCIP_OBJSENSE_MINIMIZE => "minimization of objective function (the default)",
]

export _SCIP_ReoptType, _SCIP_REOPTTYPE_NONE, _SCIP_REOPTTYPE_TRANSIT, _SCIP_REOPTTYPE_INFSUBTREE, _SCIP_REOPTTYPE_STRBRANCHED, _SCIP_REOPTTYPE_LOGICORNODE, _SCIP_REOPTTYPE_LEAF, _SCIP_REOPTTYPE_PRUNED, _SCIP_REOPTTYPE_FEASIBLE, SCIP_ReoptType_MAP
typealias _SCIP_ReoptType Int8
const _SCIP_REOPTTYPE_NONE = int8(0)
const _SCIP_REOPTTYPE_TRANSIT = int8(1)
const _SCIP_REOPTTYPE_INFSUBTREE = int8(2)
const _SCIP_REOPTTYPE_STRBRANCHED = int8(3)
const _SCIP_REOPTTYPE_LOGICORNODE = int8(4)
const _SCIP_REOPTTYPE_LEAF = int8(5)
const _SCIP_REOPTTYPE_PRUNED = int8(6)
const _SCIP_REOPTTYPE_FEASIBLE = int8(7)

const SCIP_ReoptTypes_MAP = [
    _SCIP_REOPTTYPE_NONE => "",
    _SCIP_REOPTTYPE_TRANSIT => "",
    _SCIP_REOPTTYPE_INFSUBTREE => "",
    _SCIP_REOPTTYPE_STRBRANCHED => "",
    _SCIP_REOPTTYPE_LOGICORNODE => "",
    _SCIP_REOPTTYPE_LEAF => "",
    _SCIP_REOPTTYPE_PRUNED => "",
    _SCIP_REOPTTYPE_FEASIBLE => "",
]

export Reopt_ConsType, REOPT_CONSTYPE_SEPASOLUTION, REOPT_CONSTYPE_INFSUBTREE, REOPT_CONSTYPE_STRBRANCHED, Reopt_ConsType_MAP
typealias Reopt_ConsType Int8
const REOPT_CONSTYPE_SEPASOLUTION = int8(0)
const REOPT_CONSTYPE_INFSUBTREE = int8(1)
const REOPT_CONSTYPE_STRBRANCHED = int8(2)

const Reopt_ConsTypes_MAP = [
    REOPT_CONSTYPE_SEPASOLUTION => "",
    REOPT_CONSTYPE_INFSUBTREE => "",
    REOPT_CONSTYPE_STRBRANCHED => "",
]

export _SCIP_Result, _SCIP_DIDNOTRUN, _SCIP_DELAYED, _SCIP_DIDNOTFIND, _SCIP_FEASIBLE, _SCIP_INFEASIBLE, _SCIP_UNBOUNDED, _SCIP_CUTOFF, _SCIP_SEPARATED, _SCIP_NEWROUND, _SCIP_REDUCEDDOM, _SCIP_CONSADDED, _SCIP_CONSCHANGED, _SCIP_BRANCHED, _SCIP_SOLVELP, _SCIP_FOUNDSOL, _SCIP_SUSPENDED, _SCIP_SUCCESS, SCIP_Result_MAP
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

const SCIP_Results_MAP = [
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

export _SCIP_Retcode, _SCIP_OKAY, _SCIP_ERROR, _SCIP_NOMEMORY, _SCIP_READERROR, _SCIP_WRITEERROR, _SCIP_NOFILE, _SCIP_FILECREATEERROR, _SCIP_LPERROR, _SCIP_NOPROBLEM, _SCIP_INVALIDCALL, _SCIP_INVALIDDATA, _SCIP_INVALIDRESULT, _SCIP_PLUGINNOTFOUND, _SCIP_PARAMETERUNKNOWN, _SCIP_PARAMETERWRONGTYPE, _SCIP_PARAMETERWRONGVAL, _SCIP_KEYALREADYEXISTING, _SCIP_MAXDEPTHLEVEL, _SCIP_BRANCHERROR, SCIP_Retcode_MAP
typealias _SCIP_Retcode Int8
const _SCIP_OKAY = int8(1)
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

const SCIP_Retcodes_MAP = [
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

export _SCIP_Efficiacychoice, _SCIP_EFFICIACYCHOICE_LP, _SCIP_EFFICIACYCHOICE_RELAX, _SCIP_EFFICIACYCHOICE_NLP, SCIP_Efficiacychoice_MAP
typealias _SCIP_Efficiacychoice Int8
const _SCIP_EFFICIACYCHOICE_LP = int8(0)
const _SCIP_EFFICIACYCHOICE_RELAX = int8(1)
const _SCIP_EFFICIACYCHOICE_NLP = int8(2)

const SCIP_Efficiacychoices_MAP = [
    _SCIP_EFFICIACYCHOICE_LP => "use LP solution to base efficacy on",
    _SCIP_EFFICIACYCHOICE_RELAX => "use relaxation solution to base efficacy on",
    _SCIP_EFFICIACYCHOICE_NLP => "use NLP solution to base efficacy on",
]

export _SCIP_Stage, _SCIP_STAGE_INIT, _SCIP_STAGE_PROBLEM, _SCIP_STAGE_TRANSFORMING, _SCIP_STAGE_TRANSFORMED, _SCIP_STAGE_INITPRESOLVE, _SCIP_STAGE_PRESOLVING, _SCIP_STAGE_EXITPRESOLVE, _SCIP_STAGE_PRESOLVED, _SCIP_STAGE_INITSOLVE, _SCIP_STAGE_SOLVING, _SCIP_STAGE_SOLVED, _SCIP_STAGE_EXITSOLVE, _SCIP_STAGE_FREETRANS, _SCIP_STAGE_FREE, SCIP_Stage_MAP
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

const SCIP_Stages_MAP = [
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

export _SCIP_Setting, _SCIP_UNDEFINED, _SCIP_DISABLED, _SCIP_AUTO, _SCIP_ENABLED, SCIP_Setting_MAP
typealias _SCIP_Setting Int8
const _SCIP_UNDEFINED = int8(0)
const _SCIP_DISABLED = int8(1)
const _SCIP_AUTO = int8(2)
const _SCIP_ENABLED = int8(3)

const SCIP_Settings_MAP = [
    _SCIP_UNDEFINED => "undefined setting",
    _SCIP_DISABLED => "feature is disabled",
    _SCIP_AUTO => "feature is set to automatic mode",
    _SCIP_ENABLED => "feature is enabled",
]

export _SCIP_SolOrigin, _SCIP_SOLORIGIN_ORIGINAL, _SCIP_SOLORIGIN_ZERO, _SCIP_SOLORIGIN_LPSOL, _SCIP_SOLORIGIN_NLPSOL, _SCIP_SOLORIGIN_RELAXSOL, _SCIP_SOLORIGIN_PSEUDOSOL, _SCIP_SOLORIGIN_UNKNOWN, SCIP_SolOrigin_MAP
typealias _SCIP_SolOrigin Int8
const _SCIP_SOLORIGIN_ORIGINAL = int8(0)
const _SCIP_SOLORIGIN_ZERO = int8(1)
const _SCIP_SOLORIGIN_LPSOL = int8(2)
const _SCIP_SOLORIGIN_NLPSOL = int8(3)
const _SCIP_SOLORIGIN_RELAXSOL = int8(4)
const _SCIP_SOLORIGIN_PSEUDOSOL = int8(5)
const _SCIP_SOLORIGIN_UNKNOWN = int8(6)

const SCIP_SolOrigins_MAP = [
    _SCIP_SOLORIGIN_ORIGINAL => "solution describes original variables; non-cached elements are zero",
    _SCIP_SOLORIGIN_ZERO => "all non-cached elements in solution are equal to zero",
    _SCIP_SOLORIGIN_LPSOL => "all non-cached elements in solution are equal to current LP solution",
    _SCIP_SOLORIGIN_NLPSOL => "all non-cached elements in solution are equal to current NLP solution",
    _SCIP_SOLORIGIN_RELAXSOL => "all non-cached elements in solution are equal to current relaxation solution",
    _SCIP_SOLORIGIN_PSEUDOSOL => "all non-cached elements in solution are equal to current pseudo solution",
    _SCIP_SOLORIGIN_UNKNOWN => "all non-cached elements in solution are unknown; they have to be treated as being an arbitrary value in the variable's bounds",
]

export _SCIP_Status, _SCIP_STATUS_UNKNOWN, _SCIP_STATUS_USERINTERRUPT, _SCIP_STATUS_NODELIMIT, _SCIP_STATUS_TOTALNODELIMIT, _SCIP_STATUS_STALLNODELIMIT, _SCIP_STATUS_TIMELIMIT, _SCIP_STATUS_MEMLIMIT, _SCIP_STATUS_GAPLIMIT, _SCIP_STATUS_SOLLIMIT, _SCIP_STATUS_BESTSOLLIMIT, _SCIP_STATUS_RESTARTLIMIT, _SCIP_STATUS_OPTIMAL, _SCIP_STATUS_INFEASIBLE, _SCIP_STATUS_UNBOUNDED, _SCIP_STATUS_INFORUNBD, SCIP_Status_MAP
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
const _SCIP_STATUS_RESTARTLIMIT = int8(10)
const _SCIP_STATUS_OPTIMAL = int8(11)
const _SCIP_STATUS_INFEASIBLE = int8(12)
const _SCIP_STATUS_UNBOUNDED = int8(13)
const _SCIP_STATUS_INFORUNBD = int8(14)

const SCIP_Statuss_MAP = [
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
    _SCIP_STATUS_RESTARTLIMIT => "the solving process was interrupted because the restart limit was reached",
    _SCIP_STATUS_OPTIMAL => "the problem was solved to optimality, an optimal solution is available",
    _SCIP_STATUS_INFEASIBLE => "the problem was proven to be infeasible",
    _SCIP_STATUS_UNBOUNDED => "the problem was proven to be unbounded",
    _SCIP_STATUS_INFORUNBD => "the problem was proven to be either infeasible or unbounded",
]

export _SCIP_NodeType, _SCIP_NODETYPE_FOCUSNODE, _SCIP_NODETYPE_PROBINGNODE, _SCIP_NODETYPE_SIBLING, _SCIP_NODETYPE_CHILD, _SCIP_NODETYPE_LEAF, _SCIP_NODETYPE_DEADEND, _SCIP_NODETYPE_JUNCTION, _SCIP_NODETYPE_PSEUDOFORK, _SCIP_NODETYPE_FORK, _SCIP_NODETYPE_SUBROOT, _SCIP_NODETYPE_REFOCUSNODE, SCIP_NodeType_MAP
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

const SCIP_NodeTypes_MAP = [
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

export _SCIP_Varstatus, _SCIP_VARSTATUS_ORIGINAL, _SCIP_VARSTATUS_LOOSE, _SCIP_VARSTATUS_COLUMN, _SCIP_VARSTATUS_FIXED, _SCIP_VARSTATUS_AGGREGATED, _SCIP_VARSTATUS_MULTAGGR, _SCIP_VARSTATUS_NEGATED, SCIP_Varstatus_MAP
typealias _SCIP_Varstatus Int8
const _SCIP_VARSTATUS_ORIGINAL = int8(0)
const _SCIP_VARSTATUS_LOOSE = int8(1)
const _SCIP_VARSTATUS_COLUMN = int8(2)
const _SCIP_VARSTATUS_FIXED = int8(3)
const _SCIP_VARSTATUS_AGGREGATED = int8(4)
const _SCIP_VARSTATUS_MULTAGGR = int8(5)
const _SCIP_VARSTATUS_NEGATED = int8(6)

const SCIP_Varstatuss_MAP = [
    _SCIP_VARSTATUS_ORIGINAL => "variable belongs to original problem",
    _SCIP_VARSTATUS_LOOSE => "variable is a loose variable of the transformed problem",
    _SCIP_VARSTATUS_COLUMN => "variable is a column of the transformed problem",
    _SCIP_VARSTATUS_FIXED => "variable is fixed to specific value in the transformed problem",
    _SCIP_VARSTATUS_AGGREGATED => "variable is aggregated to x = a*y + c in the transformed problem",
    _SCIP_VARSTATUS_MULTAGGR => "variable is aggregated to x = a_1*y_1 + ... + a_k*y_k + c",
    _SCIP_VARSTATUS_NEGATED => "variable is the negation of an original or transformed variable",
]

export _SCIP_Vartype, _SCIP_VARTYPE_BINARY, _SCIP_VARTYPE_INTEGER, _SCIP_VARTYPE_IMPLINT, _SCIP_VARTYPE_CONTINUOUS, SCIP_Vartype_MAP
typealias _SCIP_Vartype Int8
const _SCIP_VARTYPE_BINARY = int8(0)
const _SCIP_VARTYPE_INTEGER = int8(1)
const _SCIP_VARTYPE_IMPLINT = int8(2)
const _SCIP_VARTYPE_CONTINUOUS = int8(3)

const SCIP_Vartypes_MAP = [
    _SCIP_VARTYPE_BINARY => "binary variable: x in {0,1}",
    _SCIP_VARTYPE_INTEGER => "integer variable: x in {lb, ..., ub}",
    _SCIP_VARTYPE_IMPLINT => "implicit integer variable: continuous variable, that is always integral",
    _SCIP_VARTYPE_CONTINUOUS => "continuous variable: x in [lb,ub]",
]

export _SCIP_DomchgType, _SCIP_DOMCHGTYPE_DYNAMIC, _SCIP_DOMCHGTYPE_BOTH, _SCIP_DOMCHGTYPE_BOUND, SCIP_DomchgType_MAP
typealias _SCIP_DomchgType Int8
const _SCIP_DOMCHGTYPE_DYNAMIC = int8(0)
const _SCIP_DOMCHGTYPE_BOTH = int8(1)
const _SCIP_DOMCHGTYPE_BOUND = int8(2)

const SCIP_DomchgTypes_MAP = [
    _SCIP_DOMCHGTYPE_DYNAMIC => "dynamic bound changes with size information of arrays",
    _SCIP_DOMCHGTYPE_BOTH => "static domain changes: number of entries equals size of arrays",
    _SCIP_DOMCHGTYPE_BOUND => "static domain changes without any hole changes",
]

export _SCIP_BoundchgType, _SCIP_BOUNDCHGTYPE_BRANCHING, _SCIP_BOUNDCHGTYPE_CONSINFER, _SCIP_BOUNDCHGTYPE_PROPINFER, SCIP_BoundchgType_MAP
typealias _SCIP_BoundchgType Int8
const _SCIP_BOUNDCHGTYPE_BRANCHING = int8(0)
const _SCIP_BOUNDCHGTYPE_CONSINFER = int8(1)
const _SCIP_BOUNDCHGTYPE_PROPINFER = int8(2)

const SCIP_BoundchgTypes_MAP = [
    _SCIP_BOUNDCHGTYPE_BRANCHING => "bound change was due to a branching decision",
    _SCIP_BOUNDCHGTYPE_CONSINFER => "bound change was due to an inference of a constraint (domain propagation)",
    _SCIP_BOUNDCHGTYPE_PROPINFER => "bound change was due to an inference of a domain propagator",
]

export _SCIP_VBCColor, _SCIP_VBCCOLOR_UNSOLVED, _SCIP_VBCCOLOR_SOLVED, _SCIP_VBCCOLOR_CUTOFF, _SCIP_VBCCOLOR_CONFLICT, _SCIP_VBCCOLOR_MARKREPROP, _SCIP_VBCCOLOR_REPROP, _SCIP_VBCCOLOR_SOLUTION, _SCIP_VBCCOLOR_NONE, SCIP_VBCColor_MAP
typealias _SCIP_VBCColor Int8
const _SCIP_VBCCOLOR_UNSOLVED = int8(3)
const _SCIP_VBCCOLOR_SOLVED = int8(2)
const _SCIP_VBCCOLOR_CUTOFF = int8(4)
const _SCIP_VBCCOLOR_CONFLICT = int8(15)
const _SCIP_VBCCOLOR_MARKREPROP = int8(11)
const _SCIP_VBCCOLOR_REPROP = int8(12)
const _SCIP_VBCCOLOR_SOLUTION = int8(14)
const _SCIP_VBCCOLOR_NONE = int8(-1)

const SCIP_VBCColors_MAP = [
    _SCIP_VBCCOLOR_UNSOLVED => "color for newly created, unsolved nodes",
    _SCIP_VBCCOLOR_SOLVED => "color for solved nodes",
    _SCIP_VBCCOLOR_CUTOFF => "color for nodes that were cut off",
    _SCIP_VBCCOLOR_CONFLICT => "color for nodes where a conflict constraint was found",
    _SCIP_VBCCOLOR_MARKREPROP => "color for nodes that were marked to be repropagated",
    _SCIP_VBCCOLOR_REPROP => "color for repropagated nodes",
    _SCIP_VBCCOLOR_SOLUTION => "color for solved nodes, where a solution has been found",
    _SCIP_VBCCOLOR_NONE => "color should not be changed",
]

