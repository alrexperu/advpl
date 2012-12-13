#include "Objects.ch"


#ifndef _REDEFCLS_CH
#define _REDEFCLS_CH

// La funccion de sobrecarga de metodos de una clase debe llamarse
// antes de que dicha clase est‚ definida.
// La variable nClassH debe LLAMARSE ASI OBLIGATORIAMENTE. Esto es necesario
// para el buen funcionamiento de los comandos DATA, METHOD, ....

#xcommand function <cFunc> REDEFINE CLASS <cClassName> [ FROM <SupCls> ] => ;
    function _AsFunc_( <cFunc> )    ;;
        local nClassH               ;;
        if _ClassHandle( _AsStr_( <cClassName> ) ) == 0         ;;
            _AsFunc_( <cClassName> )                            ;;
            nClassH = _ClassHandle( _AsStr_( <cClassName> ) )   ;
            [ ; #define _sUPcLS_ _AsName_( <SupCls> ) ]

#xcommand REDEFINE METHOD <cFunc> CLASS <cClassName> => ;
    function _AsFunc_( <cFunc> )    ;;
        local nClassH               ;;
        if _ClassHandle( _AsStr_( <cClassName> ) ) == 0         ;;
            _AsFunc_( <cClassName> )                            ;;
            nClassH = _ClassHandle( _AsStr_( <cClassName> ) )   ;;
        end; return nil ;;
        #include "obendcls.ch"

#xcommand END REDEFINE CLASS => ;
        end                     ;;
        return nil              ;;
        #include "obendcls.ch"

#endif