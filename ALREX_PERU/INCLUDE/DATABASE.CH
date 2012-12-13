#include "Dbms.ch"

#xcommand DEFINE DATABASE <oDb> ;
             [ ALIAS <cAlias> ] ;
             [ FILE  <cFile> ] ;
             [ DRIVER <cDriver> ] ;
             [ <sh: SHARED> ] ;
             [ <ro: READONLY> ] ;
       => ;     
          <oDb>:= TDataBase():New( <(cAlias)>, <(cFile)>, __DRV__<cDriver>,;
              <.sh.>, <.ro.> ) [; #define _DataBase_ <oDb> ]

#xCommand FIELD <cField> ;
             [ AS <Typ: STRING, NUMBER, LOGIC, DATE, MEMO> ] ;
             [ LEN <nLen> ] [ DEC <nDec> ] ;
          => ;
          _DataBase_:AddField( <(cField)>, __TYPE__<Typ>, _DEF0_<nLen>, _DEF0_<nDec> )

#xCommand INDEX <cName> ON <key> [TO <cFile>];
             [ FOR <for> ] [ FILTER <for> ] [ <unq: UNIQUE> ] ;
          =>;
          _DataBase_:AddIndex( #<cFile>, <(cName)>, <(key)>, <{key}>, <(for)>, <for>, _DEFF_<.unq.> )

#xCommand ENDATABASE => [ #undef _DataBase_ ]

#xcommand ACTIVATE DATABASE <oDb>   => <oDb>:Activate()

#xcommand DEACTIVATE DATABASE <oDb> => <oDb>:DeActivate()

#xcommand CREATE DATABASE <oDb>     => <oDb>:Create()
