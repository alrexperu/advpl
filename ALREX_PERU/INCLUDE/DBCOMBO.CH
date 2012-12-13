*********************************************************************
* File Name:	DBCombo.ch
* Author:	Elliott Whitticar
* Created:	04/23/96
* Description:  Preprocessor directives for TDBCombo class.
*********************************************************************
#ifndef _DBCOMBO_CH
#define _DBCOMBO_CH

/*----------------------------------------------------------------------------//
!short: DBCOMBO */

#xcommand @ <nRow>, <nCol> DBCOMBO [ <oCbx> VAR ] <cVar> ;
             [ ITEMS <aItems> ] ;
             [ SIZE <nWidth>, <nHeight> ] ;
             [ <dlg:OF,WINDOW,DIALOG> <oWnd> ] ;
             [ <help:HELPID, HELP ID> <nHelpId> ] ;
             [ ON CHANGE <uChange> ] ;
             [ VALID <uValid> ] ;
             [ <color: COLOR,COLORS> <nClrText> [,<nClrBack>] ] ;
             [ <pixel: PIXEL> ] ;
             [ FONT <oFont> ] ;
             [ <update: UPDATE> ] ;
             [ MESSAGE <cMsg> ] ;
             [ WHEN <uWhen> ] ;
             [ <design: DESIGN> ] ;
             [ BITMAPS <acBitmaps> ] ;
             [ ON DRAWITEM <uBmpSelect> ] ;
	     	 [ ALIAS <cAlias> ] ;
			 [ ITEMFIELD <cFldItem> ] ;
			 [ LISTFIELD <cFldList> ] ;
			 [ <list: LIST, PROMPTS> <aList> ] ;
       => ;
          [ <oCbx> := ] TDBCombo():New( <nRow>, <nCol>, bSETGET(<cVar>),;
             <aItems>, <nWidth>, <nHeight>, <oWnd>, <nHelpId>,;
             [{|Self|<uChange>}], <{uValid}>, <nClrText>, <nClrBack>,;
             <.pixel.>, <oFont>, <cMsg>, <.update.>, <{uWhen}>,;
             <.design.>, <acBitmaps>, [{|nItem|<uBmpSelect>}], ;
             <cAlias>, <cFldItem>, <cFldList>, <aList> )

#xcommand REDEFINE DBCOMBO [ <oCbx> VAR ] <cVar> ;
             [ <items: ITEMS, PROMPTS> <aItems> ] ;
             [ ID <nId> ] ;
             [ <dlg:OF,WINDOW,DIALOG> <oWnd> ] ;
             [ <help:HELPID, HELP ID> <nHelpId> ] ;
             [ ON CHANGE <uChange> ] ;
             [ VALID   <uValid> ] ;
             [ <color: COLOR,COLORS> <nClrText> [,<nClrBack>] ] ;
             [ <update: UPDATE> ] ;
             [ MESSAGE <cMsg> ] ;
             [ WHEN <uWhen> ] ;
             [ BITMAPS <acBitmaps> ] ;
             [ ON DRAWITEM <uBmpSelect> ] ;
			 [ ALIAS <cAlias> ] ;
			 [ ITEMFIELD <cFldItem> ] ;
			 [ LISTFIELD <cFldList> ] ;
             [ <list: LIST, PROMPTS> <aList> ] ;
       => ;
          [ <oCbx> := ] TDBCombo():ReDefine( <nId>, bSETGET(<cVar>),;
             <aItems>, <oWnd>, <nHelpId>, <{uValid}>, [{|Self|<uChange>}],;
             <nClrText>, <nClrBack>, <cMsg>, <.update.>, <{uWhen}>,;
             <acBitmaps>, [{|nItem|<uBmpSelect>}], ;
             <cAlias>, <cFldItem>, <cFldList>, <aList> )

#endif
