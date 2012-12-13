#xcommand DEFINE TOOLBAR [ <oBar> ] ;
             [ <size: SIZE, BUTTONSIZE, SIZEBUTTON > <nWidth>, <nHeight> ] ;
             [ <_3d: 3D, 3DLOOK> ] ;
             [ <mode: TOP, LEFT, RIGHT, BOTTOM, FLOAT> ] ;
             [ <wnd: OF, WINDOW, DIALOG> <oWnd> ] ;
             [ CURSOR <oCursor> ] ;
             [ <file:FILE,FILENAME,DISK> <cBmpFile> ] ;
             [ <resource:RESOURCE,NAME,RESNAME> <cBmpRes> ] ;
      => ;
         [ <oBar> := ] TToolBar():New( <oWnd>, <nWidth>, <nHeight>, <._3d.>,;
             [ Upper(<(mode)>) ], <oCursor> , <cBmpFile>, <cBmpRes>)

#xcommand DEFINE IEBUTTON [ <oBtn> ] ;
             [ <bar: OF, BUTTONBAR > <oBar> ] ;
             [ <resource: NAME, RESNAME, RESOURCE> <cResName1> ;
                [,<cResName2>[,<cResName3>] ] ] ;
             [ <file: FILE, FILENAME, DISK> <cBmpFile1> ;
                [,<cBmpFile2>[,<cBmpFile3>] ] ] ;
             [ <action:ACTION,EXEC> <uAction,...> ] ;
             [ <group: GROUP > ] ;
             [ MESSAGE <cMsg> ] ;
             [ <adjust: ADJUST > ] ;
             [ WHEN <WhenFunc> ] ;
             [ TOOLTIP <cToolTip> ] ;
             [ <lPressed: PRESSED> ] ;
             [ ON DROP <bDrop> ] ;
             [ AT <nPos> ] ;
             [ PROMPT <cPrompt> ] ;
             [ FONT <oFont> ] ;
             [ <lNoBorder: NOBORDER> ] ;
      => ;
         [ <oBtn> := ] TIeButton():NewBar( <cResName1>, <cResName2>,;
            <cBmpFile1>, <cBmpFile2>, <cMsg>, [{|This|<uAction>}],;
            <.group.>, <oBar>, <.adjust.>, <{WhenFunc}>,;
            <cToolTip>, <.lPressed.>, [\{||<bDrop>\}], [\"<uAction>\"], <nPos>,;
            <cPrompt>, <oFont>, [<cResName3>], [<cBmpFile3>], [!<.lNoBorder.>] )


#xcommand @ <nRow>, <nCol> ANIMATION [ <oBmp> ] ;
             [ <resource: NAME, RESNAME, RESOURCE> <cResName> ] ;
             [ <file: FILE, FILENAME, DISK> <cBmpFile> ] ;
             [ <NoBorder:NOBORDER, NO BORDER> ] ;
             [ SIZE <nWidth>, <nHeight> ] ;
             [ <of: OF, WINDOW, DIALOG> <oWnd> ] ;
             [ <lClick: ON CLICK,  ON LEFT CLICK> <uLClick> ] ;
             [ <rClick: ON RCLICK, ON RIGHT CLICK> <uRClick> ] ;
             [ CURSOR <oCursor> ] ;
             [ <pixel: PIXEL>   ] ;
             [ MESSAGE <cMsg>   ] ;
             [ <update: UPDATE> ] ;
             [ WHEN <uWhen> ] ;
             [ VALID <uValid> ] ;
             [ <lDesign: DESIGN> ] ;
             [ FRAMES <nFrames>  ];
             [ INTERVAL <nInterval> ];
             [ STOPFRAME <nStop> ];
             [ <lup: UPDOWN> ];
       => ;
          [ <oBmp> := ] TAnimation():New( <nRow>, <nCol>, <nWidth>, <nHeight>,;
             <cResName>, <cBmpFile>, <.NoBorder.>, <oWnd>,;
             [\{ |nRow,nCol,nKeyFlags| <uLClick> \} ],;
             [\{ |nRow,nCol,nKeyFlags| <uRClick> \} ], ;
             <oCursor>, <cMsg>, <.update.>,;
             <{uWhen}>, <.pixel.>, <{uValid}>, <.lDesign.>, <nFrames>, <nInterval>,<nStop>,<.lup.>)

#xcommand REDEFINE ANIMATION [ <oBmp> ] ;
             [ ID <nId> ] ;
             [ <of: OF, WINDOW, DIALOG> <oWnd> ] ;
             [ <resource: NAME, RESNAME, RESOURCE> <cResName> ] ;
             [ <file: FILE, FILENAME, DISK> <cBmpFile> ] ;
             [ <lClick: ON ClICK, ON LEFT CLICK> <uLClick> ] ;
             [ <rClick: ON RIGHT CLICK> <uRClick> ] ;
             [ CURSOR <oCursor> ] ;
             [ MESSAGE <cMsg>   ] ;
             [ <update: UPDATE> ] ;
             [ WHEN <uWhen> ] ;
             [ VALID <uValid> ] ;
             [ FRAMES <nFrames>  ];
             [ INTERVAL <nInterval> ];
             [ STOPFRAME <nStop> ];
             [ <lup: UPDOWN> ];
       => ;
          [ <oBmp> := ] TBitmap():ReDefine( <nId>, <cResName>, <cBmpFile>,;
             <oWnd>, [\{ |nRow,nCol,nKeyFlags| <uLClick> \}],;
                     [\{ |nRow,nCol,nKeyFlags| <uRClick> \}],;
             <oCursor>, <cMsg>, <.update.>,;
             <{uWhen}>, <{uValid}> , <nFrames>, <nInterval>, <nStop>, <.lup.> )


#xcommand @ <nRow>, <nCol> SHORTCUT [ <oShort> ] ;
         [ <resource: NAME, RESNAME, RESOURCE> <cResName> ] ;
         [ <file: FILE, FILENAME, DISK> <cBmpFile> ] ;
         [ SIZE <nWidth>, <nHeight> ] ;
         [ <of: OF, WINDOW, DIALOG> <oWnd> ] ;
         [ MESSAGE <cMsg>   ] ;
         [ PROMPT <cPrompt> ];
         [ FONT <oFont> ];
         [ <pixel: PIXEL>   ] ;
         [ <action:ACTION,EXEC> <uAction,...> ] ;
       => ;
      [ <oShort> := ] TShortCut():New( <nRow>, <nCol>, <nWidth>, <nHeight>, <cResName>, <cBmpFile>, <oWnd>, <cMsg>, <cPrompt>, <oFont>, <.pixel.>, [{|This| <uAction>}] )

#xcommand DEFINE SHORTCUTLIST <oShortList> MENU <cMenu> <of: OF, WINDOW, DIALOG> <oWnd>;
      =>;
      <oShortList> := TShortList():New(<oWnd>,<cMenu>)
