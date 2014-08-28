# SCIP enums
typealias SCIP_BIVAR_CONVEXITY Int8
const SCIP_BIVAR_ALLCONVEX = int8(0)
const SCIP_BIVAR_1CONVEX_INDEFINITE = int8(1)
const SCIP_BIVAR_CONVEX_CONCAVE = int8(2)
const SCIP_BIVAR_UNKNOWN = int8(3)

const SCIP_BIVAR_CONVEXITY_MAP = [
    SCIP_BIVAR_ALLCONVEX => "",
    SCIP_BIVAR_1CONVEX_INDEFINITE => "",
    SCIP_BIVAR_CONVEX_CONCAVE => "",
    SCIP_BIVAR_UNKNOWN => "",
]

typealias SCIP_LinearConsType Int8
const SCIP_LINEARCONSTYPE_INVALIDCONS = int8(-1)
const SCIP_LINEARCONSTYPE_LINEAR = int8(0)
const SCIP_LINEARCONSTYPE_LOGICOR = int8(1)
const SCIP_LINEARCONSTYPE_KNAPSACK = int8(2)
const SCIP_LINEARCONSTYPE_SETPPC = int8(3)

const SCIP_LinearConsType_MAP = [
    SCIP_LINEARCONSTYPE_INVALIDCONS => "this is no valid linear constraint type",
    SCIP_LINEARCONSTYPE_LINEAR => "this is the common linear constraint",
    SCIP_LINEARCONSTYPE_LOGICOR => "this is a logicor constraint",
    SCIP_LINEARCONSTYPE_KNAPSACK => "this is a knapsack constraint",
    SCIP_LINEARCONSTYPE_SETPPC => "this is a setppc constraint",
]

typealias SCIP_SetppcType Int8
const SCIP_SETPPCTYPE_PARTITIONING = int8(0)
const SCIP_SETPPCTYPE_PACKING = int8(1)
const SCIP_SETPPCTYPE_COVERING = int8(2)

const SCIP_SetppcType_MAP = [
    SCIP_SETPPCTYPE_PARTITIONING => "constraint is a set partitioning constraint: sum(x) == 1",
    SCIP_SETPPCTYPE_PACKING => "constraint is a set packing constraint: sum(x) <= 1",
    SCIP_SETPPCTYPE_COVERING => "constraint is a set covering constraint: sum(x) >= 1",
]

typealias SCIP_ClockType Int8
const SCIP_CLOCKTYPE_DEFAULT = int8(0)
const SCIP_CLOCKTYPE_CPU = int8(1)
const SCIP_CLOCKTYPE_WALL = int8(2)

const SCIP_ClockType_MAP = [
    SCIP_CLOCKTYPE_DEFAULT => "use default clock type",
    SCIP_CLOCKTYPE_CPU => "use CPU clock",
    SCIP_CLOCKTYPE_WALL => "use wall clock",
]

typealias SCIP_DispStatus Int8
const SCIP_DISPSTATUS_OFF = int8(0)
const SCIP_DISPSTATUS_AUTO = int8(1)
const SCIP_DISPSTATUS_ON = int8(2)

const SCIP_DispStatus_MAP = [
    SCIP_DISPSTATUS_OFF => "display column is not displayed",
    SCIP_DISPSTATUS_AUTO => "display column is switched on and off automatically",
    SCIP_DISPSTATUS_ON => "display column is displayed",
]

typealias SCIP_ExprOp Int8
const SCIP_EXPR_VARIDX = int8(1)
const SCIP_EXPR_CONST = int8(2)
const SCIP_EXPR_PARAM = int8(3)
const SCIP_EXPR_PLUS = int8(8)
const SCIP_EXPR_MINUS = int8(9)
const SCIP_EXPR_MUL = int8(10)
const SCIP_EXPR_DIV = int8(11)
const SCIP_EXPR_SQUARE = int8(12)
const SCIP_EXPR_SQRT = int8(13)
const SCIP_EXPR_REALPOWER = int8(14)
const SCIP_EXPR_INTPOWER = int8(15)
const SCIP_EXPR_SIGNPOWER = int8(16)
const SCIP_EXPR_EXP = int8(17)
const SCIP_EXPR_LOG = int8(18)
const SCIP_EXPR_SIN = int8(19)
const SCIP_EXPR_COS = int8(20)
const SCIP_EXPR_TAN = int8(21)
const SCIP_EXPR_MIN = int8(24)
const SCIP_EXPR_MAX = int8(25)
const SCIP_EXPR_ABS = int8(26)
const SCIP_EXPR_SIGN = int8(27)
const SCIP_EXPR_SUM = int8(64)
const SCIP_EXPR_PRODUCT = int8(65)
const SCIP_EXPR_LINEAR = int8(66)
const SCIP_EXPR_QUADRATIC = int8(67)
const SCIP_EXPR_POLYNOMIAL = int8(68)
const SCIP_EXPR_LAST = int8(69)

const SCIP_ExprOp_MAP = [
    SCIP_EXPR_VARIDX => "variable given by index (stored in data.idx)",
    SCIP_EXPR_CONST => "constant (value stored in data.dbl)",
    SCIP_EXPR_PARAM => "parameter = a constant that can be modified (should not be simplified away)",
    SCIP_EXPR_PLUS => "addition (2 operands)",
    SCIP_EXPR_MINUS => "substraction (2 operands)",
    SCIP_EXPR_MUL => "multiplication (2 operands)",
    SCIP_EXPR_DIV => "division (2 operands)",
    SCIP_EXPR_SQUARE => "square (1 operand)",
    SCIP_EXPR_SQRT => "square root (1 operand)",
    SCIP_EXPR_REALPOWER => "power with real exponent (1 operand!, assumed to be nonnegative, exponent is stored in expression data)",
    SCIP_EXPR_INTPOWER => "power with integer exponent (1 operand!, exponent stored in expression data)",
    SCIP_EXPR_SIGNPOWER => "signed power (sign(x)|x|^a, 1 operand!, exponent is stored in expression data)",
    SCIP_EXPR_EXP => "exponential (e^x, 1 operand)",
    SCIP_EXPR_LOG => "natural logarithm (ln(x), 1 operand)",
    SCIP_EXPR_SIN => "sinus (1 operand)",
    SCIP_EXPR_COS => "cosinus (1 operand)",
    SCIP_EXPR_TAN => "tangent (1 operand)",
    SCIP_EXPR_MIN => "gaussian error function (1 operand) imaginary part of gaussian error function (1 operand) minimum (2 operands)",
    SCIP_EXPR_MAX => "maximum (2 operands)",
    SCIP_EXPR_ABS => "absolute value (1 operand)",
    SCIP_EXPR_SIGN => "sign of value (1 operand)",
    SCIP_EXPR_SUM => "summation sum_{i=1}^n op_i (n operands)",
    SCIP_EXPR_PRODUCT => "product prod_{i=1}^n op_i (n operands)",
    SCIP_EXPR_LINEAR => "linear term sum_{i=1}^n a_i op_i (n operands)",
    SCIP_EXPR_QUADRATIC => "quadratic term sum_{i,j=1}^n a_{i,j} op_i op_j (n operands)",
    SCIP_EXPR_POLYNOMIAL => "polynomial term sum_{I} a_{I}ops^I (I a multiindex, n operands)",
    SCIP_EXPR_LAST => "no expression, used for counting reasons",
]

typealias SCIP_ExprCurv Int8
const SCIP_EXPRCURV_UNKNOWN = int8(0)
const SCIP_EXPRCURV_CONVEX = int8(1)
const SCIP_EXPRCURV_CONCAVE = int8(2)
const SCIP_EXPRCURV_LINEAR = int8(SCIP_EXPRCURV_CONVEX | SCIP_EXPRCURV_CONCAVE)

const SCIP_ExprCurv_MAP = [
    SCIP_EXPRCURV_UNKNOWN => "unknown curvature (or indefinite)",
    SCIP_EXPRCURV_CONVEX => "convex",
    SCIP_EXPRCURV_CONCAVE => "concave",
    SCIP_EXPRCURV_LINEAR => "linear = convex and concave",
]

typealias SCIP_BranchDir Int8
const SCIP_BRANCHDIR_DOWNWARDS = int8(0)
const SCIP_BRANCHDIR_UPWARDS = int8(1)
const SCIP_BRANCHDIR_FIXED = int8(2)
const SCIP_BRANCHDIR_AUTO = int8(3)

const SCIP_BranchDir_MAP = [
    SCIP_BRANCHDIR_DOWNWARDS => "downwards branching: decreasing upper bound",
    SCIP_BRANCHDIR_UPWARDS => "upwards branching: increasing lower bound",
    SCIP_BRANCHDIR_FIXED => "fixed branching: both bounds changed",
    SCIP_BRANCHDIR_AUTO => "automatic setting for choosing bound changes",
]

typealias SCIP_LPSolStat Int8
const SCIP_LPSOLSTAT_NOTSOLVED = int8(0)
const SCIP_LPSOLSTAT_OPTIMAL = int8(1)
const SCIP_LPSOLSTAT_INFEASIBLE = int8(2)
const SCIP_LPSOLSTAT_UNBOUNDEDRAY = int8(3)
const SCIP_LPSOLSTAT_OBJLIMIT = int8(4)
const SCIP_LPSOLSTAT_ITERLIMIT = int8(5)
const SCIP_LPSOLSTAT_TIMELIMIT = int8(6)
const SCIP_LPSOLSTAT_ERROR = int8(7)

const SCIP_LPSolStat_MAP = [
    SCIP_LPSOLSTAT_NOTSOLVED => "LP was not solved, no solution exists",
    SCIP_LPSOLSTAT_OPTIMAL => "LP was solved to optimality",
    SCIP_LPSOLSTAT_INFEASIBLE => "LP is primal infeasible",
    SCIP_LPSOLSTAT_UNBOUNDEDRAY => "LP has a primal unbounded ray",
    SCIP_LPSOLSTAT_OBJLIMIT => "objective limit was reached during optimization",
    SCIP_LPSOLSTAT_ITERLIMIT => "iteration limit was reached during optimization",
    SCIP_LPSOLSTAT_TIMELIMIT => "time limit was reached during optimization",
    SCIP_LPSOLSTAT_ERROR => "an error occured during optimization",
]

typealias SCIP_BoundType Int8
const SCIP_BOUNDTYPE_LOWER = int8(0)
const SCIP_BOUNDTYPE_UPPER = int8(1)

const SCIP_BoundType_MAP = [
    SCIP_BOUNDTYPE_LOWER => "lower bound",
    SCIP_BOUNDTYPE_UPPER => "upper bound",
]

typealias SCIP_SideType Int8
const SCIP_SIDETYPE_LEFT = int8(0)
const SCIP_SIDETYPE_RIGHT = int8(1)

const SCIP_SideType_MAP = [
    SCIP_SIDETYPE_LEFT => "left hand side",
    SCIP_SIDETYPE_RIGHT => "right hand side",
]

typealias SCIP_RowOriginType Int8
const SCIP_ROWORIGINTYPE_UNSPEC = int8(0)
const SCIP_ROWORIGINTYPE_CONS = int8(1)
const SCIP_ROWORIGINTYPE_SEPA = int8(2)

const SCIP_RowOriginType_MAP = [
    SCIP_ROWORIGINTYPE_UNSPEC => "unspecified origin of row",
    SCIP_ROWORIGINTYPE_CONS => "row created by constraint handler",
    SCIP_ROWORIGINTYPE_SEPA => "row created by separator",
]

typealias SCIP_LPAlgo Int8
const SCIP_LPALGO_PRIMALSIMPLEX = int8(0)
const SCIP_LPALGO_DUALSIMPLEX = int8(1)
const SCIP_LPALGO_BARRIER = int8(2)
const SCIP_LPALGO_BARRIERCROSSOVER = int8(3)

const SCIP_LPAlgo_MAP = [
    SCIP_LPALGO_PRIMALSIMPLEX => "primal simplex",
    SCIP_LPALGO_DUALSIMPLEX => "dual simplex",
    SCIP_LPALGO_BARRIER => "barrier algorithm",
    SCIP_LPALGO_BARRIERCROSSOVER => "barrier algorithm with crossover",
]

typealias SCIP_VerbLevel Int8
const SCIP_VERBLEVEL_NONE = int8(0)
const SCIP_VERBLEVEL_DIALOG = int8(1)
const SCIP_VERBLEVEL_MINIMAL = int8(2)
const SCIP_VERBLEVEL_NORMAL = int8(3)
const SCIP_VERBLEVEL_HIGH = int8(4)
const SCIP_VERBLEVEL_FULL = int8(5)

const SCIP_VerbLevel_MAP = [
    SCIP_VERBLEVEL_NONE => "only error and warning messages are displayed",
    SCIP_VERBLEVEL_DIALOG => "only interactive dialogs, errors, and warnings are displayed",
    SCIP_VERBLEVEL_MINIMAL => "only important messages are displayed",
    SCIP_VERBLEVEL_NORMAL => "standard messages are displayed",
    SCIP_VERBLEVEL_HIGH => "a lot of information is displayed",
    SCIP_VERBLEVEL_FULL => "all messages are displayed",
]

typealias SCIP_NlpParam Int8
const SCIP_NLPPAR_FROMSCRATCH = int8(0)
const SCIP_NLPPAR_VERBLEVEL = int8(1)
const SCIP_NLPPAR_FEASTOL = int8(2)
const SCIP_NLPPAR_RELOBJTOL = int8(3)
const SCIP_NLPPAR_LOBJLIM = int8(4)
const SCIP_NLPPAR_INFINITY = int8(5)
const SCIP_NLPPAR_ITLIM = int8(6)
const SCIP_NLPPAR_TILIM = int8(7)
const SCIP_NLPPAR_OPTFILE = int8(8)
const SCIP_NLPPAR_FASTFAIL = int8(9)

const SCIP_NlpParam_MAP = [
    SCIP_NLPPAR_FROMSCRATCH => "solver should start from scratch at next call?: 0 no, 1 yes (int)",
    SCIP_NLPPAR_VERBLEVEL => "verbosity level of output of NLP solver to the screen: 0 off, 1 normal, 2 debug, > 2 more debug (int)",
    SCIP_NLPPAR_FEASTOL => "feasibility tolerance for primal variables and slacks (real)",
    SCIP_NLPPAR_RELOBJTOL => "relative objective tolerance (real)",
    SCIP_NLPPAR_LOBJLIM => "lower objective limit (cutoff) (real)",
    SCIP_NLPPAR_INFINITY => "value for infinity used to decide unbounded sides, unbounded variable and constraint bounds, and upper objective limit (real)",
    SCIP_NLPPAR_ITLIM => "NLP iteration limit (int)",
    SCIP_NLPPAR_TILIM => "NLP time limit (real)",
    SCIP_NLPPAR_OPTFILE => "name of a solver specific option file (string)",
    SCIP_NLPPAR_FASTFAIL => "should the NLP solver stop early if convergence is slow?: 0 no, 1 yes (int)",
]

typealias SCIP_NlpSolStat Int8
const SCIP_NLPSOLSTAT_GLOBOPT = int8(0)
const SCIP_NLPSOLSTAT_LOCOPT = int8(1)
const SCIP_NLPSOLSTAT_FEASIBLE = int8(2)
const SCIP_NLPSOLSTAT_LOCINFEASIBLE = int8(3)
const SCIP_NLPSOLSTAT_GLOBINFEASIBLE = int8(4)
const SCIP_NLPSOLSTAT_UNBOUNDED = int8(5)
const SCIP_NLPSOLSTAT_UNKNOWN = int8(6)

const SCIP_NlpSolStat_MAP = [
    SCIP_NLPSOLSTAT_GLOBOPT => "solved to global optimality",
    SCIP_NLPSOLSTAT_LOCOPT => "solved to local optimality",
    SCIP_NLPSOLSTAT_FEASIBLE => "feasible solution found",
    SCIP_NLPSOLSTAT_LOCINFEASIBLE => "solution found is local infeasible",
    SCIP_NLPSOLSTAT_GLOBINFEASIBLE => "problem is proven infeasible",
    SCIP_NLPSOLSTAT_UNBOUNDED => "problem is unbounded",
    SCIP_NLPSOLSTAT_UNKNOWN => "unknown solution status (e.g., problem not solved yet)",
]

typealias SCIP_NlpTermStat Int8
const SCIP_NLPTERMSTAT_OKAY = int8(0)
const SCIP_NLPTERMSTAT_TILIM = int8(1)
const SCIP_NLPTERMSTAT_ITLIM = int8(2)
const SCIP_NLPTERMSTAT_LOBJLIM = int8(3)
const SCIP_NLPTERMSTAT_UOBJLIM = int8(4)
const SCIP_NLPTERMSTAT_NUMERR = int8(5)
const SCIP_NLPTERMSTAT_EVALERR = int8(6)
const SCIP_NLPTERMSTAT_MEMERR = int8(7)
const SCIP_NLPTERMSTAT_LICERR = int8(8)
const SCIP_NLPTERMSTAT_OTHER = int8(9)

const SCIP_NlpTermStat_MAP = [
    SCIP_NLPTERMSTAT_OKAY => "terminated successfully",
    SCIP_NLPTERMSTAT_TILIM => "time limit exceeded",
    SCIP_NLPTERMSTAT_ITLIM => "iteration limit exceeded",
    SCIP_NLPTERMSTAT_LOBJLIM => "lower objective limit reached",
    SCIP_NLPTERMSTAT_UOBJLIM => "upper objective limit (= infinity) reached",
    SCIP_NLPTERMSTAT_NUMERR => "stopped on numerical error",
    SCIP_NLPTERMSTAT_EVALERR => "stopped on function evaluation error",
    SCIP_NLPTERMSTAT_MEMERR => "memory exceeded",
    SCIP_NLPTERMSTAT_LICERR => "licence error",
    SCIP_NLPTERMSTAT_OTHER => "other error (= this should never happen)",
]

typealias SCIP_ParamType Int8
const SCIP_PARAMTYPE_BOOL = int8(0)
const SCIP_PARAMTYPE_INT = int8(1)
const SCIP_PARAMTYPE_LONGINT = int8(2)
const SCIP_PARAMTYPE_REAL = int8(3)
const SCIP_PARAMTYPE_CHAR = int8(4)
const SCIP_PARAMTYPE_STRING = int8(5)

const SCIP_ParamType_MAP = [
    SCIP_PARAMTYPE_BOOL => "bool values: TRUE or FALSE",
    SCIP_PARAMTYPE_INT => "integer values",
    SCIP_PARAMTYPE_LONGINT => "long integer values",
    SCIP_PARAMTYPE_REAL => "real values",
    SCIP_PARAMTYPE_CHAR => "characters",
    SCIP_PARAMTYPE_STRING => "strings: arrays of characters",
]

typealias SCIP_ParamSetting Int8
const SCIP_PARAMSETTING_DEFAULT = int8(0)
const SCIP_PARAMSETTING_AGGRESSIVE = int8(1)
const SCIP_PARAMSETTING_FAST = int8(2)
const SCIP_PARAMSETTING_OFF = int8(3)

const SCIP_ParamSetting_MAP = [
    SCIP_PARAMSETTING_DEFAULT => "use default values",
    SCIP_PARAMSETTING_AGGRESSIVE => "set to aggressive settings",
    SCIP_PARAMSETTING_FAST => "set to fast settings",
    SCIP_PARAMSETTING_OFF => "turn off",
]

typealias SCIP_ParamEmphasis Int8
const SCIP_PARAMEMPHASIS_DEFAULT = int8(0)
const SCIP_PARAMEMPHASIS_CPSOLVER = int8(1)
const SCIP_PARAMEMPHASIS_EASYCIP = int8(2)
const SCIP_PARAMEMPHASIS_FEASIBILITY = int8(3)
const SCIP_PARAMEMPHASIS_HARDLP = int8(4)
const SCIP_PARAMEMPHASIS_OPTIMALITY = int8(5)
const SCIP_PARAMEMPHASIS_COUNTER = int8(6)

const SCIP_ParamEmphasis_MAP = [
    SCIP_PARAMEMPHASIS_DEFAULT => "use default values",
    SCIP_PARAMEMPHASIS_CPSOLVER => "get CP like search (e.g. no LP relaxation)",
    SCIP_PARAMEMPHASIS_EASYCIP => "solve easy problems fast",
    SCIP_PARAMEMPHASIS_FEASIBILITY => "detect feasibility fast",
    SCIP_PARAMEMPHASIS_HARDLP => "be capable to handle hard LPs",
    SCIP_PARAMEMPHASIS_OPTIMALITY => "prove optimality fast",
    SCIP_PARAMEMPHASIS_COUNTER => "get a feasible and \"fast\" counting process",
]

typealias SCIP_Objsense Int8
const SCIP_OBJSENSE_MAXIMIZE = int8(-1)
const SCIP_OBJSENSE_MINIMIZE = int8(+1)

const SCIP_Objsense_MAP = [
    SCIP_OBJSENSE_MAXIMIZE => "maximization of objective function",
    SCIP_OBJSENSE_MINIMIZE => "minimization of objective function (the default)",
]

typealias SCIP_Result Int8
const SCIP_DIDNOTRUN = int8(1)
const SCIP_DELAYED = int8(2)
const SCIP_DIDNOTFIND = int8(3)
const SCIP_FEASIBLE = int8(4)
const SCIP_INFEASIBLE = int8(5)
const SCIP_UNBOUNDED = int8(6)
const SCIP_CUTOFF = int8(7)
const SCIP_SEPARATED = int8(8)
const SCIP_NEWROUND = int8(9)
const SCIP_REDUCEDDOM = int8(10)
const SCIP_CONSADDED = int8(11)
const SCIP_CONSCHANGED = int8(12)
const SCIP_BRANCHED = int8(13)
const SCIP_SOLVELP = int8(14)
const SCIP_FOUNDSOL = int8(15)
const SCIP_SUSPENDED = int8(16)
const SCIP_SUCCESS = int8(17)

const SCIP_Result_MAP = [
    SCIP_DIDNOTRUN => "the method was not executed",
    SCIP_DELAYED => "the method was not executed, but should be called again later",
    SCIP_DIDNOTFIND => "the method was executed, but failed finding anything",
    SCIP_FEASIBLE => "no infeasibility could be found",
    SCIP_INFEASIBLE => "an infeasibility was detected",
    SCIP_UNBOUNDED => "an unboundedness was detected",
    SCIP_CUTOFF => "the current node is infeasible and can be cut off",
    SCIP_SEPARATED => "the method added a cutting plane",
    SCIP_NEWROUND => "the method added a cutting plane and a new separation round should immediately start",
    SCIP_REDUCEDDOM => "the method reduced the domain of a variable",
    SCIP_CONSADDED => "the method added a constraint",
    SCIP_CONSCHANGED => "the method changed a constraint",
    SCIP_BRANCHED => "the method created a branching",
    SCIP_SOLVELP => "the current node's LP must be solved",
    SCIP_FOUNDSOL => "the method found a feasible primal solution",
    SCIP_SUSPENDED => "the method interrupted its execution, but can continue if needed",
    SCIP_SUCCESS => "the method was successfully executed",
]

typealias SCIP_Retcode Int8
const SCIP_OKAY = int8(+1)
const SCIP_ERROR = int8(0)
const SCIP_NOMEMORY = int8(-1)
const SCIP_READERROR = int8(-2)
const SCIP_WRITEERROR = int8(-3)
const SCIP_NOFILE = int8(-4)
const SCIP_FILECREATEERROR = int8(-5)
const SCIP_LPERROR = int8(-6)
const SCIP_NOPROBLEM = int8(-7)
const SCIP_INVALIDCALL = int8(-8)
const SCIP_INVALIDDATA = int8(-9)
const SCIP_INVALIDRESULT = int8(-10)
const SCIP_PLUGINNOTFOUND = int8(-11)
const SCIP_PARAMETERUNKNOWN = int8(-12)
const SCIP_PARAMETERWRONGTYPE = int8(-13)
const SCIP_PARAMETERWRONGVAL = int8(-14)
const SCIP_KEYALREADYEXISTING = int8(-15)
const SCIP_MAXDEPTHLEVEL = int8(-16)
const SCIP_BRANCHERROR = int8(-17)

const SCIP_Retcode_MAP = [
    SCIP_OKAY => "normal termination",
    SCIP_ERROR => "unspecified error",
    SCIP_NOMEMORY => "insufficient memory error",
    SCIP_READERROR => "read error",
    SCIP_WRITEERROR => "write error",
    SCIP_NOFILE => "file not found error",
    SCIP_FILECREATEERROR => "cannot create file",
    SCIP_LPERROR => "error in LP solver",
    SCIP_NOPROBLEM => "no problem exists",
    SCIP_INVALIDCALL => "method cannot be called at this time in solution process",
    SCIP_INVALIDDATA => "error in input data",
    SCIP_INVALIDRESULT => "method returned an invalid result code",
    SCIP_PLUGINNOTFOUND => "a required plugin was not found",
    SCIP_PARAMETERUNKNOWN => "the parameter with the given name was not found",
    SCIP_PARAMETERWRONGTYPE => "the parameter is not of the expected type",
    SCIP_PARAMETERWRONGVAL => "the value is invalid for the given parameter",
    SCIP_KEYALREADYEXISTING => "the given key is already existing in table",
    SCIP_MAXDEPTHLEVEL => "maximal branching depth level exceeded",
    SCIP_BRANCHERROR => "no branching could be created",
]

typealias SCIP_Efficiacychoice Int8
const SCIP_EFFICIACYCHOICE_LP = int8(0)
const SCIP_EFFICIACYCHOICE_RELAX = int8(1)
const SCIP_EFFICIACYCHOICE_NLP = int8(2)

const SCIP_Efficiacychoice_MAP = [
    SCIP_EFFICIACYCHOICE_LP => "use LP solution to base efficacy on",
    SCIP_EFFICIACYCHOICE_RELAX => "use relaxation solution to base efficacy on",
    SCIP_EFFICIACYCHOICE_NLP => "use NLP solution to base efficacy on",
]

typealias SCIP_Stage Int8
const SCIP_STAGE_INIT = int8(0)
const SCIP_STAGE_PROBLEM = int8(1)
const SCIP_STAGE_TRANSFORMING = int8(2)
const SCIP_STAGE_TRANSFORMED = int8(3)
const SCIP_STAGE_INITPRESOLVE = int8(4)
const SCIP_STAGE_PRESOLVING = int8(5)
const SCIP_STAGE_EXITPRESOLVE = int8(6)
const SCIP_STAGE_PRESOLVED = int8(7)
const SCIP_STAGE_INITSOLVE = int8(8)
const SCIP_STAGE_SOLVING = int8(9)
const SCIP_STAGE_SOLVED = int8(10)
const SCIP_STAGE_EXITSOLVE = int8(11)
const SCIP_STAGE_FREETRANS = int8(12)
const SCIP_STAGE_FREE = int8(13)

const SCIP_Stage_MAP = [
    SCIP_STAGE_INIT => "SCIP data structures are initialized, no problem exists",
    SCIP_STAGE_PROBLEM => "the problem is being created and modified",
    SCIP_STAGE_TRANSFORMING => "the problem is being transformed into solving data space",
    SCIP_STAGE_TRANSFORMED => "the problem was transformed into solving data space",
    SCIP_STAGE_INITPRESOLVE => "presolving is initialized",
    SCIP_STAGE_PRESOLVING => "the problem is being presolved",
    SCIP_STAGE_EXITPRESOLVE => "presolving is exited",
    SCIP_STAGE_PRESOLVED => "the problem was presolved",
    SCIP_STAGE_INITSOLVE => "the solving process data is being initialized",
    SCIP_STAGE_SOLVING => "the problem is being solved",
    SCIP_STAGE_SOLVED => "the problem was solved",
    SCIP_STAGE_EXITSOLVE => "the solving process data is being freed",
    SCIP_STAGE_FREETRANS => "the transformed problem is being freed",
    SCIP_STAGE_FREE => "SCIP data structures are being freed",
]

typealias SCIP_Setting Int8
const SCIP_UNDEFINED = int8(0)
const SCIP_DISABLED = int8(1)
const SCIP_AUTO = int8(2)
const SCIP_ENABLED = int8(3)

const SCIP_Setting_MAP = [
    SCIP_UNDEFINED => "undefined setting",
    SCIP_DISABLED => "feature is disabled",
    SCIP_AUTO => "feature is set to automatic mode",
    SCIP_ENABLED => "feature is enabled",
]

typealias SCIP_SolOrigin Int8
const SCIP_SOLORIGIN_ORIGINAL = int8(0)
const SCIP_SOLORIGIN_ZERO = int8(1)
const SCIP_SOLORIGIN_LPSOL = int8(2)
const SCIP_SOLORIGIN_NLPSOL = int8(3)
const SCIP_SOLORIGIN_RELAXSOL = int8(4)
const SCIP_SOLORIGIN_PSEUDOSOL = int8(5)
const SCIP_SOLORIGIN_UNKNOWN = int8(6)

const SCIP_SolOrigin_MAP = [
    SCIP_SOLORIGIN_ORIGINAL => "solution describes original variables; non-cached elements are zero",
    SCIP_SOLORIGIN_ZERO => "all non-cached elements in solution are equal to zero",
    SCIP_SOLORIGIN_LPSOL => "all non-cached elements in solution are equal to current LP solution",
    SCIP_SOLORIGIN_NLPSOL => "all non-cached elements in solution are equal to current NLP solution",
    SCIP_SOLORIGIN_RELAXSOL => "all non-cached elements in solution are equal to current relaxation solution",
    SCIP_SOLORIGIN_PSEUDOSOL => "all non-cached elements in solution are equal to current pseudo solution",
    SCIP_SOLORIGIN_UNKNOWN => "all non-cached elements in solution are unknown; they have to be treated as being an arbitrary value in the variable's bounds",
]

typealias SCIP_Status Int8
const SCIP_STATUS_UNKNOWN = int8(0)
const SCIP_STATUS_USERINTERRUPT = int8(1)
const SCIP_STATUS_NODELIMIT = int8(2)
const SCIP_STATUS_TOTALNODELIMIT = int8(3)
const SCIP_STATUS_STALLNODELIMIT = int8(4)
const SCIP_STATUS_TIMELIMIT = int8(5)
const SCIP_STATUS_MEMLIMIT = int8(6)
const SCIP_STATUS_GAPLIMIT = int8(7)
const SCIP_STATUS_SOLLIMIT = int8(8)
const SCIP_STATUS_BESTSOLLIMIT = int8(9)
const SCIP_STATUS_OPTIMAL = int8(10)
const SCIP_STATUS_INFEASIBLE = int8(11)
const SCIP_STATUS_UNBOUNDED = int8(12)
const SCIP_STATUS_INFORUNBD = int8(13)

const SCIP_Status_MAP = [
    SCIP_STATUS_UNKNOWN => "the solving status is not yet known",
    SCIP_STATUS_USERINTERRUPT => "the user interrupted the solving process (by pressing CTRL-C)",
    SCIP_STATUS_NODELIMIT => "the solving process was interrupted because the node limit was reached",
    SCIP_STATUS_TOTALNODELIMIT => "the solving process was interrupted because the total node limit was reached (incl. restarts)",
    SCIP_STATUS_STALLNODELIMIT => "the solving process was interrupted because the stalling node limit was reached (no inprovement w.r.t. primal bound)",
    SCIP_STATUS_TIMELIMIT => "the solving process was interrupted because the time limit was reached",
    SCIP_STATUS_MEMLIMIT => "the solving process was interrupted because the memory limit was reached",
    SCIP_STATUS_GAPLIMIT => "the solving process was interrupted because the gap limit was reached",
    SCIP_STATUS_SOLLIMIT => "the solving process was interrupted because the solution limit was reached",
    SCIP_STATUS_BESTSOLLIMIT => "the solving process was interrupted because the solution improvement limit was reached",
    SCIP_STATUS_OPTIMAL => "the problem was solved to optimality, an optimal solution is available",
    SCIP_STATUS_INFEASIBLE => "the problem was proven to be infeasible",
    SCIP_STATUS_UNBOUNDED => "the problem was proven to be unbounded",
    SCIP_STATUS_INFORUNBD => "the problem was proven to be either infeasible or unbounded",
]

typealias SCIP_NodeType Int8
const SCIP_NODETYPE_FOCUSNODE = int8(0)
const SCIP_NODETYPE_PROBINGNODE = int8(1)
const SCIP_NODETYPE_SIBLING = int8(2)
const SCIP_NODETYPE_CHILD = int8(3)
const SCIP_NODETYPE_LEAF = int8(4)
const SCIP_NODETYPE_DEADEND = int8(5)
const SCIP_NODETYPE_JUNCTION = int8(6)
const SCIP_NODETYPE_PSEUDOFORK = int8(7)
const SCIP_NODETYPE_FORK = int8(8)
const SCIP_NODETYPE_SUBROOT = int8(9)
const SCIP_NODETYPE_REFOCUSNODE = int8(10)

const SCIP_NodeType_MAP = [
    SCIP_NODETYPE_FOCUSNODE => "the focus node, whose data is stored in the tree data structure",
    SCIP_NODETYPE_PROBINGNODE => "temporary child node of the focus or refocused node used for probing",
    SCIP_NODETYPE_SIBLING => "unsolved sibling of the focus node",
    SCIP_NODETYPE_CHILD => "unsolved child of the focus node",
    SCIP_NODETYPE_LEAF => "unsolved leaf of the tree, stored in the tree's queue",
    SCIP_NODETYPE_DEADEND => "temporary type of focus node, if it was solved completely",
    SCIP_NODETYPE_JUNCTION => "fork without LP solution",
    SCIP_NODETYPE_PSEUDOFORK => "fork without LP solution and added rows and columns",
    SCIP_NODETYPE_FORK => "fork with solved LP and added rows and columns",
    SCIP_NODETYPE_SUBROOT => "fork with solved LP and arbitrarily changed rows and columns",
    SCIP_NODETYPE_REFOCUSNODE => "junction, fork, or subroot that was refocused for domain propagation",
]

typealias SCIP_Varstatus Int8
const SCIP_VARSTATUS_ORIGINAL = int8(0)
const SCIP_VARSTATUS_LOOSE = int8(1)
const SCIP_VARSTATUS_COLUMN = int8(2)
const SCIP_VARSTATUS_FIXED = int8(3)
const SCIP_VARSTATUS_AGGREGATED = int8(4)
const SCIP_VARSTATUS_MULTAGGR = int8(5)
const SCIP_VARSTATUS_NEGATED = int8(6)

const SCIP_Varstatus_MAP = [
    SCIP_VARSTATUS_ORIGINAL => "variable belongs to original problem",
    SCIP_VARSTATUS_LOOSE => "variable is a loose variable of the transformed problem",
    SCIP_VARSTATUS_COLUMN => "variable is a column of the transformed problem",
    SCIP_VARSTATUS_FIXED => "variable is fixed to specific value in the transformed problem",
    SCIP_VARSTATUS_AGGREGATED => "variable is aggregated to x = a*y + c in the transformed problem",
    SCIP_VARSTATUS_MULTAGGR => "variable is aggregated to x = a_1*y_1 + ... + a_k*y_k + c",
    SCIP_VARSTATUS_NEGATED => "variable is the negation of an original or transformed variable",
]

typealias SCIP_Vartype Int8
const SCIP_VARTYPE_BINARY = int8(0)
const SCIP_VARTYPE_INTEGER = int8(1)
const SCIP_VARTYPE_IMPLINT = int8(2)
const SCIP_VARTYPE_CONTINUOUS = int8(3)

const SCIP_Vartype_MAP = [
    SCIP_VARTYPE_BINARY => "binary variable: x in {0,1}",
    SCIP_VARTYPE_INTEGER => "integer variable: x in {lb, ..., ub}",
    SCIP_VARTYPE_IMPLINT => "implicit integer variable: continuous variable, that is always integral",
    SCIP_VARTYPE_CONTINUOUS => "continuous variable: x in [lb,ub]",
]

typealias SCIP_DomchgType Int8
const SCIP_DOMCHGTYPE_DYNAMIC = int8(0)
const SCIP_DOMCHGTYPE_BOTH = int8(1)
const SCIP_DOMCHGTYPE_BOUND = int8(2)

const SCIP_DomchgType_MAP = [
    SCIP_DOMCHGTYPE_DYNAMIC => "dynamic bound changes with size information of arrays",
    SCIP_DOMCHGTYPE_BOTH => "static domain changes: number of entries equals size of arrays",
    SCIP_DOMCHGTYPE_BOUND => "static domain changes without any hole changes",
]

typealias SCIP_BoundchgType Int8
const SCIP_BOUNDCHGTYPE_BRANCHING = int8(0)
const SCIP_BOUNDCHGTYPE_CONSINFER = int8(1)
const SCIP_BOUNDCHGTYPE_PROPINFER = int8(2)

const SCIP_BoundchgType_MAP = [
    SCIP_BOUNDCHGTYPE_BRANCHING => "bound change was due to a branching decision",
    SCIP_BOUNDCHGTYPE_CONSINFER => "bound change was due to an inference of a constraint (domain propagation)",
    SCIP_BOUNDCHGTYPE_PROPINFER => "bound change was due to an inference of a domain propagator",
]

typealias SCIP_VBCColor Int8
const SCIP_VBCCOLOR_UNSOLVED = int8(3)
const SCIP_VBCCOLOR_SOLVED = int8(2)
const SCIP_VBCCOLOR_CUTOFF = int8(4)
const SCIP_VBCCOLOR_CONFLICT = int8(15)
const SCIP_VBCCOLOR_MARKREPROP = int8(11)
const SCIP_VBCCOLOR_REPROP = int8(12)
const SCIP_VBCCOLOR_SOLUTION = int8(14)
const SCIP_VBCCOLOR_NONE = int8(-1)

const SCIP_VBCColor_MAP = [
    SCIP_VBCCOLOR_UNSOLVED => "color for newly created, unsolved nodes",
    SCIP_VBCCOLOR_SOLVED => "color for solved nodes",
    SCIP_VBCCOLOR_CUTOFF => "color for nodes that were cut off",
    SCIP_VBCCOLOR_CONFLICT => "color for nodes where a conflict constraint was found",
    SCIP_VBCCOLOR_MARKREPROP => "color for nodes that were marked to be repropagated",
    SCIP_VBCCOLOR_REPROP => "color for repropagated nodes",
    SCIP_VBCCOLOR_SOLUTION => "color for solved nodes, where a solution has been found",
    SCIP_VBCCOLOR_NONE => "color should not be changed",
]

