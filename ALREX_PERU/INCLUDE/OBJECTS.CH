/*
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ    Objects.ch                                                 บ
บ                                                               บ
บ Clipper 5.x header file for Objects.lib  V 4.0                บ
บ Fecha: Junio 1995                                             บ
บ                                                               บ
บ (c) 1993-4-5 Francisco Pulpขn y Antonio Linares               บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

    ญ Dios libre al Sr. Usuario de cambiar una sola linea de
    este fichero sin haber hecho antes una copia de seguridad !

    ญ Please, don't touch even a single line of the following <g> !
*/

#ifndef _OBJECTS_CH
#define _OBJECTS_CH

#define _FuncType_

#xcommand DEFAULT <Desc> [, <DescN> ]      => ;
                  __DFT__( <Desc> ) [ ; __DFT__( <DescN> ) ]

#xtranslate __DFT__( <Var> := <Dft> ) => ;
            if( <Var> == nil, <Var> := <Dft>, )

#xtranslate __DFT__( <Var> = <Dft> )  => ;
            __DFT__( <Var> := <Dft> )

// Una preciosa idea de Carlos Ruiz
#xtranslate BYNAME <V> [, <VN> ]     => ::<V> := <V> [; ::<VN> := <VN> ]
#xtranslate BYNAME <V> DEFAULT <Val> => ::<V> := BYDEFAULT <V>, <Val>
#xtranslate BYNAME <V> IFNONIL       => ;
                            if <V> != NIL ;;
                                ::<V> := <V> ;;
                            end
#xtranslate BYDEFAULT <V>, <Val>     => if( <V> == NIL, <Val>, <V> )

// Class Declaration - Declaracion de clase
// =======================

// El "Ambito" (Scope) por defecto inicial es PUBLIC. Lo pone _ObjNewCls().

#xcommand CLASS <ClsNam>   ;
            [ <from: INHERIT FROM, INHERIT, FROM, OF> <SupCls> [, <MoreSuper> ] ] ;
    => ;
          function _AsFunc_( <ClsNam> )  ;;
             static nClassH              ;;
             if nClassH == nil           ;;
                nClassH = _ObjNewCls( _AsStr_( <ClsNam> ) [, _AsFunc_( <SupCls> ) ] [, \{|| _AsFunc_( <MoreSuper> ) \} ] ) ;
                [ ; #define _sUPcLS_ _AsName_( <SupCls> ) ]

#xtranslate CREATE CLASS <*ClsHead*> =>  CLASS <ClsHead>

// Declaraciones de Variables de Instancia y de Clase.
// ===================================================

#xcommand _GEN_DATA_ <vt>, <Vrs,...> [ AS <Typ,...> ]   ;
         [ <scp: PUBLIC, EXPORT, READONLY, PROTECTED, LOCAL, HIDDEN> ] ;
         [ <dft: DEFAULT, INIT> <uData> ]   ;
         [ USER DATA <uUserData> ] ;
         =>  ;
         _ObjAddMet( nClassH, __SCOPE__ [ <scp> ], [ \{ _AsUppLst_( <Typ> ) \} ] ,;
                    <vt>, [ <uData> ], _AsStrLst_( <Vrs> ) ) ;
         [ ; ObjSetUserData( nClassH, <uUserData>, _AsStrLst_( <Vrs> ) ) ]

#xcommand _GEN_DATA_ <vt>, <Vrs,...> [ AS <Typ,...> ]   ;
         [ <scp: PUBLIC, EXPORT, READONLY, PROTECTED, LOCAL, HIDDEN> ] ;
         [ INSTANTIATE <uData,...> ]    ;
         [ USER DATA <uUserData> ] ;
         =>  ;
         _ObjAddMet( nClassH, __SCOPE__ [ <scp> ], [ \{ _AsUppLst_( <Typ> ) \} ] ,;
                    <vt>, [ _ObjInsDat( \{|Self| <uData> \} )], _AsStrLst_( <Vrs> ) ) ;
         [ ; ObjSetUserData( nClassH, <uUserData>, _AsStrLst_( <Vrs> ) ) ]


// Declaraciones de Variables de Instancia

#xcommand VAR     <*VLst*>   => _GEN_DATA_  1, <VLst>
#xcommand INSTVAR <*VLst*>   => VAR <VLst>
#xcommand DATA    <*VLst*>   => VAR <VLst>

// Declaraciones de Variables de Clase.

#xcommand CLASSVAR  <*VLst*>   => _GEN_DATA_ 2, <VLst>
#xcommand CLASSDATA <*VLst*>   => CLASSVAR <VLst>


// Declaraciones de Metodos.
// =========================

#xcommand __METHOD__ <Met> [, <MetN> ] [ <scp: PUBLIC, EXPORT, LOCAL, HIDDEN> ] [ <ctor: CONSTRUCTOR> ] => ;
   _ObjAddMet( nClassH, __SCOPE__ [ <scp> ], <.ctor.>, 0, ;
               _MetTrans_( <Met> ) [, _MetTrans_( <MetN> ) ] )

#xcommand _GEN_METHOD_ <Met> [,<MetN> ] [<*x*>] =>  ;
          __METHOD__  <Met> [,<MetN> ]  [<x>]

#xcommand _GEN_METHOD_ <Met> VIRTUAL [<*x*>] => __METHOD__ <Met>:_VIRTUAL_ [<x>]

// Una GENIAL idea de Antonio Linares: La declaraciขn "SetGet"
#xcommand _GEN_METHOD_ <Met> SETGET [<*x*>]  => __METHOD__ <Met>:_SETGET_ [<x>]

#xcommand _GEN_METHOD_ <Met> METHOD <udf> [, <MetN> METHOD <udfN> ] [<*x*>] => ;
          __METHOD__ <Met> = <udf> [ , <MetN> = <udfN> ] [<x>]

#xcommand _GEN_METHOD_ <Met> <code: EXTERN, CFUNC, CMETHOD> <udf> [<*x*>] => ;
          EXTERNAL _AsName_( <udf> ) ;;
          _ObjAddMet( nClassH, __SCOPE__, .f., 0, _AsStr_(<Met>), _AsStr_( <udf> ) )

#xcommand _GEN_METHOD_ <Met> <o: BLOCK, INLINE> <code,...> [ <scp: PUBLIC, EXPORT, LOCAL, HIDDEN> ] => ;
          _ObjAddMet( nClassH, __SCOPE__ [<scp>], .f., 3, _BlkTrans_( <Met> <o> <code> ) )

#xcommand MESSAGE <*cMDesc*>   => _GEN_METHOD_ <cMDesc>

#xcommand DELEGATE MESSAGE <cMsgs,...> TO <cVar> [ <scp: PUBLIC, EXPORT, LOCAL, HIDDEN> ] => ;
          _ObjAddMet( nClassH, __SCOPE__ [<scp>], _AsStr_( <cVar> ), 4, ;
                      _AsStrLst_( <cMsgs> ) )


// El servidor particular de errores de una clase.

// Funcion Clipper. recibe: ( cMethodName, nError ) y Objeto en SELF
// puede devolver cualquier cosa.
// para que se genere error debe llamar antes de salir a
// _ClsSetErr( oError ) y si no se debe generar error debe hacerlo asก
// _ClsSetErr( )

#xcommand ERROR HANDLER <cFunc>  => ;
          _ObjAddMet( nClassH, , .f., 5, \{|| _AsName_( <cFunc> )() \} )

// SOLO FUNCIONES PASCAL con 10 caracteres o menos, con el prototipo...
// BOOL pascal UserErrServer( CLSHANDLE Handle, PCLIPSYMBOL pMessage, WORD wError );
#xcommand ERROR HANDLER <cFunc> <code: EXTERN, CFUNC, CMETHOD> => ;
          EXTERNAL _AsName_( <cFunc> ) ;;
          _ObjAddMet( nClassH, , .f., 5, _AsStr_( <cFunc> ) )

#xcommand _GEN_METHOD_ <cFunc> ERROR HANDLER [ <x> ] => ;
          ERROR HANDLER <cFunc> [ <x> ]


#xcommand _GEN_METHOD_ <cMeth> OPERATOR <cOp> => ;
          _ObjAddMet( nClassH, , .f., 6, <(cOp)>, \{|| _AsName_( <cMeth> )() \} )

#xcommand _GEN_METHOD_ <cMeth> ALIAS OF <cMsg> => ;
          _ObjAddMet( nClassH, _AsStr_( <cMeth> ), _AsStr_( <cMsg> ), 7 )

// PreAmbitos
#xcommand  __ST__  <st: METHOD, MESSAGE, VAR, INSTVAR, DATA, CLASSVAR, CLASSDATA > <*x*> ;
                  => <st> <x>
#xcommand EXPORT  <*x*> => __ST__ <x> PUBLIC
#xcommand HIDE    <*x*> => __ST__ <x> HIDDEN
#xcommand PROTECT <*x*> => __ST__ <x> PROTECTED


// Declaraciones de Scoping por defecto.
// =======================================
#xcommand EXPORT:     =>   _DftScope( 0 )
#xcommand PUBLIC:     =>   EXPORT:
#xcommand PROTECTED:  =>   _DftScope( 1 )
#xcommand READONLY:   =>   PROTECTED:
#xcommand LOCAL:      =>   _DftScope( 2 )
#xcommand HIDDEN:     =>   LOCAL:


// Traductores de descripciones de mtodos.

#xtranslate _MetTrans_( <Met> ) => ;
            _AsStr_( <Met> ), \{|| _AsName_( <Met> )() \}

#xtranslate _MetTrans_( <Met> = <udf> ) => ;
            _AsStr_( <Met> ), \{|| _AsName_( <udf> )() \}

#xtranslate _MetTrans_( <Met>:_VIRTUAL_ ) => ;
            _AsStr_( <Met> ), "_VIRTUAL_"

#xtranslate _MetTrans_( <Met>:_SETGET_ ) => ;
            _AsStr_( <Met> ), \{|| _AsName_( <Met> )() \}, ;
            "_" + _AsStr_( <Met> ), \{|| _AsName_( <Met> )() \}

#xtranslate _BlkTrans_( <Met> INLINE <code,...> ) => ;
            #<Met>, \{ | Self | <code> \}

#xtranslate _BlkTrans_( <Met>( [<prm,...>] ) INLINE <code,...> ) => ;
            #<Met>, \{ | Self [, <prm> ] | <code> \}

#xtranslate _BlkTrans_( <Met> BLOCK <code,...> ) => ;
            _AsStr_( <Met> ), <code>



// Traductores Genricos de <Func>[ ( [ <parms,..> ] ) ]

#xtranslate _AsFunc_( <itm> )                   => <itm>()
#xtranslate _AsFunc_( <itm>( [<prm,...>] ) )    =>  <itm>( [<prm>] )

#xtranslate _AsName_( <itm> )                   => <itm>
#xtranslate _AsName_( <itm>( [<prm,...>] ) )    => <itm>


#xtranslate _AsStr_( <itm> )                    => <(itm)>
#xtranslate _AsStr_( <itm>( [<prm,...>] ) )     => #<itm>
#xtranslate _AsUpp_( <itm> )                    => upper( _AsStr_( <itm> ) )

#xtranslate _AsStrLst_( <Typ> [, <TypN> ] )     => ;
                                    _AsStr_( <Typ> ) [, _AsStr_( <TypN> ) ]
#xtranslate _AsUppLst_( <Typ> [, <TypN> ] )     => ;
                                    _AsUpp_( <Typ> ) [, _AsUpp_( <TypN> ) ]

#xtranslate __SCOPE__                                => NIL
#xtranslate __SCOPE__ <scp: PUBLIC, EXPORT>          => 0
#xtranslate __SCOPE__ <scp: READONLY, PROTECTED>     => 1
#xtranslate __SCOPE__ <scp: LOCAL, HIDDEN>           => 2

#xtranslate :VIRTUAL => :_VIRTUAL_
#xtranslate :SETGET  => :_SETGET_



#xcommand ENDCLASS  =>                                ;
                       end                           ;;
                       return _ObjClsIns( nClassH )  ;;
                       #include "obendcls.ch"

#xcommand END CLASS  => ENDCLASS

// Declaraciones para el cขdigo ( funciขn ข procedimiento ) de los mtodos.
// ==========================================================================

#xcommand _METHOD_ <Tp: FUNCTION, PROCEDURE> <Met> [ CLASS <ClassN> ] =>;
                  _FuncType_ <Tp> <Met>  ;;
                  local Self := QSelf()

#translate METHOD <Tp: FUNCTION, PROCEDURE> <*Met*> => ;
                 _METHOD_ <Tp> <Met>

#translate METHOD <ClassN>::<*Met*>        => ;
                 _METHOD_ FUNCTION <Met>

#translate METHOD <ClassN>.<*Met*>         => ;
                 _METHOD_ FUNCTION <Met>

//   Sixtaxis Parent / Super
//   =======================

#xtranslate :Parent( <SupCls> ):<*M*> => :<SupCls>:<M>

#xtranslate :Parent:<*M*>             => :_sUPcLS_:<M>

#xtranslate Super:<*M*>               => Self:_sUPcLS_:<M>

#xtranslate :Super  => :Parent

//   Self
//  ======
#xtranslate ::      =>    Self:

#endif  // _OBJECTS_CH

//---------------------------

  // Redefine el comando METHOD para la declaraciขnes de mtodos
  // en el bloque de clase.
  // Fue redefinido por el ฃltimo "endclass" para declarar cขdigo de mtodos.

#xcommand METHOD <*MDesc*> =>  _GEN_METHOD_ <MDesc>
