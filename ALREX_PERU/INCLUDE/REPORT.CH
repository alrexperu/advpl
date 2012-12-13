/*
ÚÄ Programa ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
³   Aplication: Header file for class TReport                              ³
³         File: REPORT.CH                                                  ³
³       Author: Ignacio Ortiz de Z£¤iga Echeverr¡a                         ³
³          CIS: Ignacio Ortiz (100042,3051)                                ³
³         Date: 07/28/94                                                   ³
³         Time: 20:20:07                                                   ³
³    Copyright: 1994 by Ortiz de Zu¤iga, S.L.                              ³
ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
*/

#define RPT_LEFT        1
#define RPT_RIGHT       2
#define RPT_CENTER      3
#define RPT_TOP         4
#define RPT_BOTTOM      5

#define RPT_INCHES      1
#define RPT_CMETERS     2

#define RPT_NOLINE      0
#define RPT_SINGLELINE  1
#define RPT_DOUBLELINE  2

#define CHAR_PATTERN   "B"

#xcommand REPORT [ <oReport> ] ;
                 [ TITLE <bTitle, ...> [<TFmt:LEFT,CENTER,CENTERED,RIGHT>] ];
                 [ HEADER <bHead, ...> [<HFmt:LEFT,CENTER,CENTERED,RIGHT>] ];
                 [ FOOTER <bFoot, ...> [<FFmt:LEFT,CENTER,CENTERED,RIGHT>] ];
                 [ FONT <oFont, ...> ]  ;
                 [ PEN <oPen, ...> ]  ;
                 [ <lSum:SUMMARY> ] ;
                 [ <file: FILE, FILENAME, DISK> <cRptFile> ] ;
                 [ <resource: NAME, RESNAME, RESOURCE> <cResName> ] ;
                 [ <toPrint: TO PRINTER> ] ;
                 [ <toScreen: PREVIEW> ] ;
                 [ TO FILE <(toFile)> ] ;
                 [ TO DEVICE <oDevice> ] ;
                 [ CAPTION <cName> ] ;
        => ;
        [ <oReport> := ] RptBegin({<{bTitle}>}, {<{bHead}>}, {<{bFoot}>},;
                {<oFont>}, {<oPen>}, <.lSum.>, <cRptFile>, <cResName>,;
                [<.toPrint.>], <.toScreen.>, <(toFile)>, <oDevice>, <cName>,;
                [UPPER(<(TFmt)>)], [UPPER(<(HFmt)>)], [UPPER(<(FFmt)>)] )

#xcommand GROUP [ <oRptGrp> ] ;
                [ ON <bGroup> ] ;
                [ HEADER <bHead> ] ;
                [ FOOTER <bFoot> ] ;
                [ FONT <uFont> ] ;
                [ <lEject:EJECT> ] ;
        => ;
        [ <oRptGrp> := ] RptAddGroup( <{bGroup}>, <{bHead}>, ;
                <{bFoot}>, <{uFont}>, <.lEject.> )

#xcommand COLUMN [ <oRptCol> ] ;
                [ TITLE <bTitle, ...> ] ;
                [ AT <nCol> ] ;
                [ DATA <bData, ...> ] ;
                [ SIZE <nSize> ] ;
                [ PICTURE <cPicture, ...> ] ;
                [ FONT <uFont> ] ;
                [ <total: TOTAL> [ FOR <bTotalExpr> ] ] ;
                [ <ColFmt:LEFT,CENTER,CENTERED,RIGHT> ] ;
                [ <lShadow:SHADOW> ] ;
                [ <lGrid:GRID> [ <nPen> ] ] ;
        => ;
         [ <oRptCol> := ] RptAddColumn( {<{bTitle}>}, <nCol> ,;
                {<{bData}>}, <nSize>, {<cPicture>} ,;
                <{uFont}>, <.total.>, <{bTotalExpr}> ,;
                [UPPER(<(ColFmt)>)], <.lShadow.>, <.lGrid.>, <nPen> )

#xcommand END REPORT ;
       => ;
         RptEnd()

#xcommand ENDREPORT ;
       => ;
          END REPORT

#xcommand ACTIVATE REPORT <oReport> ;
                [ FOR <for> ] ;
                [ WHILE <while> ] ;
                [ ON INIT <uInit> ] ;
                [ ON END <uEnd> ] ;
                [ ON POSTEND <uPostEnd> ] ;
                [ ON STARTPAGE <uStartPage> ] ;
                [ ON ENDPAGE <uEndPage> ] ;
                [ ON POSTPAGE <uPostPage> ] ;
                [ ON STARTGROUP <uStartGroup> ] ;
                [ ON ENDGROUP <uEndGroup> ] ;
                [ ON POSTGROUP <uPostGroup> ] ;
                [ ON STARTLINE <uStartLine> ] ;
                [ ON ENDLINE <uEndLine> ] ;
                [ ON CHANGE <bChange> ] ;
        => ;
         <oReport>:Activate(<{for}>, <{while}>, <{uInit}>, <{uEnd}>, ;
                <{uStartPage}>, <{uEndPage}>, <{uStartGroup}>, <{uEndGroup}>,;
                <{uStartLine}>, <{uEndLine}>, <{bChange}>,;
                <{uPostEnd}>, <{uPostPage}>, <{uPostGroup}> )

// EOF
