/* ObjTClsSel filter definitions
*/

#define OCS_INSTVAR     1
#define OCS_CLASSVAR    2
#define OCS_METHODS     4

#define OCS_DATA       ( OCS_CLASSVAR + OCS_INSTVAR )

#define OCS_PROTECT     8
#define OCS_HIDE       16
#define OCS_PUBLIC     32

#define OCS_ANYSCOPE   ( OCS_HIDE + OCS_PROTECT + OCS_PUBLIC )

#define OCS_ALL        ( OCS_DATA + OCS_METHODS + OCS_ANYSCOPE )
