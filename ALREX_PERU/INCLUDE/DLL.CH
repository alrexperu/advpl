#ifndef _DLL_CH
#define _DLL_CH

#define VOID     0
#define BYTE     1
#define CHAR     2
#define WORD     3
#define _INT     4         // conflicts with Clipper Int()
#define BOOL     5
#define HDC      6
#define LONG     7
#define STRING   8
#define LPSTR    9
#define PTR     10
#define _DOUBLE 11         // conflicts with BORDER DOUBLE

#translate NOREF([@]<x>) => <x>

//----------------------------------------------------------------------------//

#xcommand DLL [<static:STATIC>] FUNCTION <FuncName>( [ <uParam1> AS <type1> ] ;
                                                     [, <uParamN> AS <typeN> ] ) ;
             AS <return> [<pascal:PASCAL>] LIB <*DllName*> ;
       => ;
          [<static>] function <FuncName>( [NOREF(<uParam1>)] [,NOREF(<uParamN>)] ) ;;
             local hDLL := If( ValType( <DllName> ) == "N", <DllName>, LoadLibrary( <(DllName)> ) ) ;;
             local uResult ;;
             local cFarProc ;;
             if hDLL > 32 ;;
                cFarProc = GetProcAddress( hDLL, <(FuncName)>, [<.pascal.>], <return> [,<type1>] [,<typeN>] ) ;;
                uResult = CallDLL( cFarProc [,<uParam1>] [,<uParamN>] ) ;;
                If( ValType( <DllName> ) == "N",, FreeLibrary( hDLL ) ) ;;
             else ;;
                MsgAlert( "Error code: " + LTrim( Str( hDLL ) ) + " loading " + <DllName> ) ;;
             end ;;
          return uResult

//----------------------------------------------------------------------------//

#xcommand DLL32 [<static:STATIC>] FUNCTION <FuncName>( [ <uParam1> AS <type1> ] ;
                                                     [, <uParamN> AS <typeN> ] ) ;
             AS <return> [<pascal:PASCAL>] LIB <*DllName*> ;
       => ;
          [<static>] function <FuncName>( [NOREF(<uParam1>)] [,NOREF(<uParamN>)] ) ;;
             local hDLL := If( ValType( <DllName> ) == "N", <DllName>, LoadLib32( <(DllName)> ) ) ;;
             local uResult ;;
             local cFarProc ;;
             if hDLL >= 0 .and. hDLL <= 32 ;;
                MsgAlert( "Error code: " + LTrim( Str( hDLL ) ) + " loading " + <DllName> ) ;;
             else ;;
                cFarProc = GetProc32( hDLL, <(FuncName)>, [<.pascal.>], <return> [,<type1>] [,<typeN>] ) ;;
                uResult = CallDLL32( cFarProc [,<uParam1>] [,<uParamN>] ) ;;
                If( ValType( <DllName> ) == "N",, FreeLib32( hDLL ) ) ;;
             end ;;
          return uResult

#endif

//----------------------------------------------------------------------------//