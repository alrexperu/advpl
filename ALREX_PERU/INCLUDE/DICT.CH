
#xcommand DEFINE DBMS <oDict> FILE <cFile>;
       => ;     
          <oDict>:= TDbms():New( <(cFile)> )
              
#xcommand END DBMS <oDict>;
	   => ;
	      <oDict>:Create()

#xcommand REDEFINE DBMS <oDict> [ FILE <cFile> ] ;
       => ;     
          <oDict>:= TDbms():Redefine( <(cFile)> )
              
	      
