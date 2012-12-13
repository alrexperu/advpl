//algunos codigos de retorno
#define SQL_ERROR             -1
#define SQL_INVALID_HANDLE    -2
#define SQL_NEED_DATA         99
#define SQL_NO_DATA_FOUND    100
#define SQL_SUCCESS            0
#define SQL_SUCCESS_WITH_INFO  1
#define SQL_DROP               1


//tipos de campos
#define SQL_CHAR                1
#define SQL_NUMERIC             2
#define SQL_DECIMAL             3
#define SQL_INTEGER             4
#define SQL_SMALLINT            5
#define SQL_FLOAT               6
#define SQL_REAL                7
#define SQL_DOUBLE              8
#define SQL_DATE                9
#define SQL_TIME                10
#define SQL_TIMESTAMP           11
#define SQL_VARCHAR             12
#define SQL_LONGVARCHAR         -1
#define SQL_BINARY              -2
#define SQL_VARBINARY           -3
#define SQL_LONGVARBINARY       -4
#define SQL_BIGINT              -5
#define SQL_TINYINT             -6
#define SQL_BIT                 -7

//campos en el array de definicion de los campos de una consulta
#define SQLNAME       1
#define SQLCTYPE      2
#define SQLLEN        3
#define SQLDEC        4
#define SQLNULL       5
#define SQLNTYPE      6

/* Defines for SQLGetInfo */
#define SQL_INFO_FIRST                       0
#define SQL_ACTIVE_CONNECTIONS               0
#define SQL_ACTIVE_STATEMENTS                1
#define SQL_DATA_SOURCE_NAME                 2
#define SQL_DRIVER_HDBC                      3
#define SQL_DRIVER_HENV                      4
#define SQL_DRIVER_HSTMT                     5
#define SQL_DRIVER_NAME                      6
#define SQL_DRIVER_VER                       7
#define SQL_FETCH_DIRECTION                  8
#define SQL_ODBC_API_CONFORMANCE             9
#define SQL_ODBC_VER                        10
#define SQL_ROW_UPDATES                     11
#define SQL_ODBC_SAG_CLI_CONFORMANCE        12
#define SQL_SERVER_NAME                     13
#define SQL_SEARCH_PATTERN_ESCAPE           14
#define SQL_ODBC_SQL_CONFORMANCE            15

#define SQL_DATABASE_NAME                   16
#define SQL_DBMS_NAME                       17
#define SQL_DBMS_VER                        18

#define SQL_ACCESSIBLE_TABLES               19
#define SQL_ACCESSIBLE_PROCEDURES           20
#define SQL_PROCEDURES                      21
#define SQL_CONCAT_NULL_BEHAVIOR            22
#define SQL_CURSOR_COMMIT_BEHAVIOR          23
#define SQL_CURSOR_ROLLBACK_BEHAVIOR        24
#define SQL_DATA_SOURCE_READ_ONLY           25
#define SQL_DEFAULT_TXN_ISOLATION           26
#define SQL_EXPRESSIONS_IN_ORDERBY          27
#define SQL_IDENTIFIER_CASE                 28
#define SQL_IDENTIFIER_QUOTE_CHAR           29
#define SQL_MAX_COLUMN_NAME_LEN             30
#define SQL_MAX_CURSOR_NAME_LEN             31
#define SQL_MAX_OWNER_NAME_LEN              32
#define SQL_MAX_PROCEDURE_NAME_LEN          33
#define SQL_MAX_QUALIFIER_NAME_LEN          34
#define SQL_MAX_TABLE_NAME_LEN              35
#define SQL_MULT_RESULT_SETS                36
#define SQL_MULTIPLE_ACTIVE_TXN             37
#define SQL_OUTER_JOINS                     38
#define SQL_OWNER_TERM                      39
#define SQL_PROCEDURE_TERM                  40
#define SQL_QUALIFIER_NAME_SEPARATOR        41
#define SQL_QUALIFIER_TERM                  42
#define SQL_SCROLL_CONCURRENCY              43
#define SQL_SCROLL_OPTIONS                  44
#define SQL_TABLE_TERM                      45
#define SQL_TXN_CAPABLE                     46
#define SQL_USER_NAME                       47

#define SQL_CONVERT_FUNCTIONS               48
#define SQL_NUMERIC_FUNCTIONS               49
#define SQL_STRING_FUNCTIONS                50
#define SQL_SYSTEM_FUNCTIONS                51
#define SQL_TIMEDATE_FUNCTIONS              52

#define SQL_CONVERT_BIGINT                  53
#define SQL_CONVERT_BINARY                  54
#define SQL_CONVERT_BIT                     55
#define SQL_CONVERT_CHAR                    56
#define SQL_CONVERT_DATE                    57
#define SQL_CONVERT_DECIMAL                 58
#define SQL_CONVERT_DOUBLE                  59
#define SQL_CONVERT_FLOAT                   60
#define SQL_CONVERT_INTEGER                 61
#define SQL_CONVERT_LONGVARCHAR             62
#define SQL_CONVERT_NUMERIC                 63
#define SQL_CONVERT_REAL                    64
#define SQL_CONVERT_SMALLINT                65
#define SQL_CONVERT_TIME                    66
#define SQL_CONVERT_TIMESTAMP               67
#define SQL_CONVERT_TINYINT                 68
#define SQL_CONVERT_VARBINARY               69
#define SQL_CONVERT_VARCHAR                 70
#define SQL_CONVERT_LONGVARBINARY           71

#define SQL_TXN_ISOLATION_OPTION            72
#define SQL_ODBC_SQL_OPT_IEF                73

/* options for SQLSetConnectOption/SQLGetConnectOption */
#define SQL_ACCESS_MODE          101
#define SQL_AUTOCOMMIT           102
#define SQL_LOGIN_TIMEOUT        103
#define SQL_OPT_TRACE            104
#define SQL_OPT_TRACEFILE        105
#define SQL_TRANSLATE_DLL        106
#define SQL_TRANSLATE_OPTION     107
#define SQL_TXN_ISOLATION        108
#define SQL_CURRENT_QUALIFIER    109
#define SQL_ODBC_CURSORS         110
#define SQL_CONNECT_OPT_DRVR_START  1000

#define  CONN_OPT_MIN            SQL_ACCESS_MODE
#define CONN_OPT_MAX          SQL_ODBC_CURSORS

/* options for SQLGetStmtOption/SQLSetStmtOption */
#define SQL_QUERY_TIMEOUT       0
#define SQL_MAX_ROWS            1
#define SQL_NOSCAN              2
#define SQL_MAX_LENGTH          3
#define SQL_ASYNC_ENABLE        4
#define SQL_BIND_TYPE           5

#define SQL_BIND_BY_COLUMN      0    /* Suboption for SQL_BIND_TYPE */


