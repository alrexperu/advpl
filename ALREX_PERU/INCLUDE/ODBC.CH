#ifndef _ODBC_CH
#define _ODBC_CH

//----------------------------------------------------------------------------//

#xcommand DEFINE ODBC <oDbc> ;
             [ NAME  <cName> ] ;
             [ USER <cPath> ] ;
             [ PASSWORD <cPassword> ] ;
       => ;
          <oDbc> := TOdbc():New( <cName>, <cPath>, <cPassword> )


#xcommand ODBC <oDbc> <sql: SQL, EXECUTE> <cCommand> ;
       => ;
          <oDbc>:Execute( <cCommand> )

//----------------------------------------------------------------------------//

#endif
