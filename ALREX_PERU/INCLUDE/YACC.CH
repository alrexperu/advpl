// FiveWin - Yacc Machine
// Under development (A.Linares)        See SAMPLES\TestYacc.prg

//----------------------------------------------------------------------------//

#xcommand DEFINE YACC <oYacc> ;
             AS <Id1> [<IdN>] [ ACTION <uAction1> ] ;
           [ AS <Id2> [<IdM>] [ ACTION <uActionN> ] ] ;
       => ;
          <oYacc> := TYacc():New( \{ ;
             \{ \{ <{Id1}> [,<{IdN}>] \}, <uAction1> \} ;
          [, \{ \{ <{Id2}>  ,<{IdM}>  \}, <uActionN> \} ] ;
             \} )

//----------------------------------------------------------------------------//
