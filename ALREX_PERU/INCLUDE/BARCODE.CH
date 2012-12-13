#ifndef _BARCODE_
#define _BARCODE_

#translate @ <nRow>, <nCol> CODE128  <cCode> ;
                [ MODE <cMode>] ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>] ;
                => ;
        Code128( <nRow>, <nCol> , <cCode>, <oPrint>, <cMode> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize> )

#translate @ <nRow>, <nCol> CM_CODE128  <cCode> ;
                [ MODE <cMode>] ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>]  ;
                => ;
        c_Code128( <nRow>, <nCol> , <cCode>, <oPrint>, <cMode> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize> )

#translate @ <nRow>, <nCol> CODE3_9  <cCode> ;
                [ <lCheck:CHECK> ] ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>]   ;
                => ;
        Code3_9( <nRow>, <nCol> , <cCode>, <oPrint>, <lCheck> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize> )



#translate @ <nRow>, <nCol> CM_CODE3_9  <cCode> ;
                [ <lCheck:CHECK> ] ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>]   ;
                => ;
        c_Code3_9( <nRow>, <nCol> , <cCode>, <oPrint>, <lCheck> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize> )



#translate @ <nRow>, <nCol> EAN13  <cCode> ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>] ;
                [ <lBanner:BANNER> ] ;
                [ FONT <cFont> ] ;
                => ;
        EAN13( <nRow>, <nCol> , <cCode>, <oPrint> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize>,;
                 <.lBanner.>, <cFont> )



#translate @ <nRow>, <nCol> CM_EAN13  <cCode> ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>]  ;
                [ <lBanner:BANNER> ] ;
                [ FONT <cFont> ] ;
                => ;
        c_EAN13( <nRow>, <nCol> , <cCode>, <oPrint> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize>,;
                 <.lBanner.>, <cFont>  )

#translate @ <nRow>, <nCol> UPCA  <cCode> ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>] ;
                [ <lBanner:BANNER> ] ;
                [ FONT <cFont> ] ;
                => ;
        UPCA( <nRow>, <nCol> , <cCode>, <oPrint> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize>,;
                 <.lBanner.>, <cFont>  )



#translate @ <nRow>, <nCol> CM_UPCA  <cCode> ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>]  ;
                [ <lBanner:BANNER> ] ;
                [ FONT <cFont> ] ;
                => ;
        c_UPCA( <nRow>, <nCol> , <cCode>, <oPrint> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize>,;
                 <.lBanner.>, <cFont>  )


#translate @ <nRow>, <nCol> EAN8  <cCode> ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>] ;
                [ <lBanner:BANNER> ] ;
                [ FONT <cFont> ] ;
                => ;
        EAN8( <nRow>, <nCol> , <cCode>, <oPrint> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize>,;
                 <.lBanner.>, <cFont>  )



#translate @ <nRow>, <nCol> CM_EAN8  <cCode> ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>]  ;
                [ <lBanner:BANNER> ] ;
                [ FONT <cFont> ] ;
                => ;
        c_EAN8( <nRow>, <nCol> , <cCode>, <oPrint> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize>,;
                 <.lBanner.>, <cFont>  )


#translate @ <nRow>, <nCol> SUP5  <cCode> ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>] ;
                [ <lBanner:BANNER> ] ;
                [ FONT <cFont> ] ;
                [ <lBanner:BANNER> ] ;
                [ FONT <cFont> ] ;
                => ;
        SUP5( <nRow>, <nCol> , <cCode>, <oPrint> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize>,;
                 <.lBanner.>, <cFont>  )



#translate @ <nRow>, <nCol> CM_SUP5  <cCode> ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>]  ;
                [ <lBanner:BANNER> ] ;
                [ FONT <cFont> ] ;
                [ <lBanner:BANNER> ] ;
                [ FONT <cFont> ] ;
                => ;
        c_SUP5( <nRow>, <nCol> , <cCode>, <oPrint> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize>,;
                 <.lBanner.>, <cFont>  )


#translate @ <nRow>, <nCol> CODABAR  <cCode> ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>] ;
                => ;
        CODABAR( <nRow>, <nCol> , <cCode>, <oPrint> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize> )



#translate @ <nRow>, <nCol> CM_CODABAR  <cCode> ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>]  ;
                => ;
        c_CODABAR( <nRow>, <nCol> , <cCode>, <oPrint> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize> )

#translate @ <nRow>, <nCol> INT25  <cCode> ;
                [ <lCheck:CHECK> ] ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>]   ;
                => ;
        INT25( <nRow>, <nCol> , <cCode>, <oPrint>, <lCheck> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize> )



#translate @ <nRow>, <nCol> CM_INT25  <cCode> ;
                [ <lCheck:CHECK> ] ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>]   ;
                => ;
        c_INT25( <nRow>, <nCol> , <cCode>, <oPrint>, <lCheck> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize> )


#translate @ <nRow>, <nCol> IND25  <cCode> ;
                [ <lCheck:CHECK> ] ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>]   ;
                => ;
        IND25( <nRow>, <nCol> , <cCode>, <oPrint>, <lCheck> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize> )



#translate @ <nRow>, <nCol> CM_IND25  <cCode> ;
                [ <lCheck:CHECK> ] ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>]   ;
                => ;
        c_IND25( <nRow>, <nCol> , <cCode>, <oPrint>, <lCheck> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize> )


#translate @ <nRow>, <nCol> MAT25  <cCode> ;
                [ <lCheck:CHECK> ] ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>]   ;
                => ;
        MAT25( <nRow>, <nCol> , <cCode>, <oPrint>, <lCheck> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize> )



#translate @ <nRow>, <nCol> CM_MAT25  <cCode> ;
                [ <lCheck:CHECK> ] ;
                [ <lVert:VERTICAL> ];
                [ COLOR <nColor> ] ;
                [ WIDTH <nWidth> ] ;
                [ SIZE <nSize> ] ;
                [ OF <oPrint>]   ;
                => ;
        c_MAT25( <nRow>, <nCol> , <cCode>, <oPrint>, <lCheck> ;
                ,<nColor>, .not. <.lVert.>, <nWidth>, <nSize> )

#ENDIF
