#ifndef _VIDEO_CH
#define _VIDEO_CH

//----------------------------------------------------------------------------//

#xcommand DEFINE VIDEO [<oVideo>] ;
             [ <file: FILE, FILENAME, DISK> <cAviFile> ] ;
             [ <of: OF, WINDOW, DIALOG> <oWnd> ] ;
       => ;
          [ <oVideo> ] := TMci():New( "avivideo", <cAviFile>, <oWnd> )

#xcommand ACTIVATE VIDEO <oVideo> => <oVideo>:lOpen() ; <oVideo>:Play()

#xcommand PLAY VIDEO <oVideo> => <oVideo>:lOpen() ; <oVideo>:Play()

#xcommand @ <nRow>, <nCol> VIDEO [<oVideo>] ;
             [ SIZE <nWidth>, <nHeight> ] ;
             [ <file: FILE, FILENAME, DISK> <cFileName> ] ;
             [ <of: OF, WINDOW, DIALOG > <oWnd> ] ;
       => ;
          [ <oVideo> := ] TVideo():New( <nRow>, <nCol>, <nWidth>, <nHeight>,;
             <cFileName>, <oWnd> )

#xcommand REDEFINE VIDEO [<oVideo>] ;
             [ ID <nId> ] ;
             [ <of: OF, WINDOW, DIALOG > <oWnd> ] ;
             [ WHEN <uWhen> ] ;
             [ VALID <uValid> ] ;
             [ <file: FILE, FILENAME, DISK> <cFileName> ] ;
       => ;
          [ <oVideo> := ] TVideo():ReDefine( <nId>, <cFileName>, <oWnd>,;
             <{uWhen}>, <{uValid}> )

//----------------------------------------------------------------------------//

#endif
