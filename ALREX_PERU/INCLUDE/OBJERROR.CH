/* _GenError( nType, cClassName, cMethod )

    LLamada desde C para describir los errores en runtime.

    Tipo N§       Descripci¢n del Error.
    ======================================================================
    0             No Hay error. Algun despistado nos llama para ver que pasa.
    1             Error de acceso a Metodo Private.
    2             Error de acceso a InstVar Protected.
    3             Error de acceso a InstVar Private.
    4             Error "Data type error. Type-Protected InstVar. "
    5             Error a¤adiendo M‚todo: No est  lincada la funci¢n asociada.
    6             Error "No exported Method".
    7             Error "No exported PARENT Method"
    8             Error "You can't send messages to non Objects. "
    9             Error "Bad Parent Msg"
    10            Error "Parent exist"
    11            Reserved Error N§
    12            Error "No executable"
    13            Error "No Command Obj."
    14            Error "Bad Operator"
    15            Error "Var not exist"

*/


// Tipos de ERROR
#define PRIVATE_METHOD     1
#define PROTECTED_INSTVAR  2
#define PRIVATE_INSTVAR    3
#define DATATYPE_INSTVAR   4
#define BAD_CODEBLOCK      5
#define NO_EXPORTED        6
#define PARENT_ERROR       7
#define NO_ES_UN_OBJETO    8
#define BAD_PARENT_MSG     9
#define PARENT_EXIST      10
#define ALREADY_ADD       11
#define NO_EXEC_COMM      12
#define NO_COMMAND_OBJ    13
#define BAD_OP_DESC       14
#define NO_VARIABLE       15

#define MAX_DEFINED_ERRORS 15

/* errores de MAX_DEFINED_ERRORS a MAX_OBJECTS_ERRORS se consideran errores
   de usuario y este deber  proporcianar una descripci¢n despues de
   llamar a _GenError()
*/

#define MAX_OBJECTS_ERRORS 99


