#ifndef _PAGES_CH
#define _PAGES_CH
#xcommand @ <nRow>,<nCol> PAGES <oPag> ;
				 [ SIZE <nWidth>, <nHeight> ] ;
				 [ OF <oWnd> ] ;
				 [ DIALOGS <DlgName,...> ] ;
				 [ OPTION <nOption> ] ;
				 [ <click:ON CHANGE> <bChange>];
				 [ <Actives: ACTIVE> <aActive> ] ;
				 [ FONT <oFont> ] ;
		 => ;
			 <oPag> := TPages():New( <nRow>, <nCol>, <nHeight>, <nWidth>,;
			 <oWnd>, [{<DlgName>}], <nOption>, [<{bChange}>],[<aActive>],[<oFont>] )

#endif
