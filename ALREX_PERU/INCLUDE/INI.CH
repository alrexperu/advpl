#ifndef _INI_CH
#define _INI_CH

#xcommand INI <oIni> ;
             [ <file: FILE, FILENAME, DISK> <cIniFile> ] ;
       => ;
          <oIni> := TIni():New( <cIniFile> )

#xcommand GET <uVar> ;
             [ SECTION <cSection> ] ;
             [ ENTRY <cEntry> ] ;
             [ DEFAULT <uDefault> ] ;
             [ <of: OF, INI> <oIni> ] ;
       => ;
          <uVar> := <oIni>:Get( <cSection>, <cEntry>, <uDefault>, <uVar> )

#xcommand SET [ SECTION <cSection> ] ;
              [ ENTRY <cEntry> ] ;
              [ TO <uVal> ] ;
              [ <of: OF, INI> <oIni> ] ;
       => ;
          <oIni>:Set( <cSection>, <cEntry>, <uVal> )

#xcommand ENDINI =>

#endif
