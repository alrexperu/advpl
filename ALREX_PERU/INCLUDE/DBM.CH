#include "dbms.ch"

#xcommand DEFINE DATABASE <oDb> OF <oDict>;
             [ ALIAS <cAlias> ] ;
             [ FILE  <cFile> ] ;
             [ DRIVER <cDriver> ] ;
             [ <sh: SHARED> ] ;
             [ <ro: READONLY> ] ;
             [ FIELDS <aField,...> ] ;
             [ INDEX <aIndex,...> ] ;
       => ;     
          <oDb>:= TDbm():New( <(cAlias)>, <(cFile)>, __DRV__<cDriver>,;
             <sh>, <ro>, { <(aField)> }, { <(aIndex)> }, <oDict> )

#xcommand REDEFINE DATABASE <oDb> [ FROM FILE <oDict> ] ;
       => ;     
          <oDb>:= TDbm():Redefine( <(oDict)> )
          
