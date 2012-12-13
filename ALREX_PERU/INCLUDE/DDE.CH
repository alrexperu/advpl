#ifndef _DDE_CH
#define _DDE_CH

#define WM_DDE_FIRST                     992       // 0x03E0
#define WM_DDE_INITIATE       (WM_DDE_FIRST)
#define WM_DDE_TERMINATE    (WM_DDE_FIRST+1)
#define WM_DDE_ADVISE       (WM_DDE_FIRST+2)
#define WM_DDE_UNADVISE     (WM_DDE_FIRST+3)
#define WM_DDE_ACK          (WM_DDE_FIRST+4)
#define WM_DDE_DATA         (WM_DDE_FIRST+5)
#define WM_DDE_REQUEST      (WM_DDE_FIRST+6)
#define WM_DDE_POKE         (WM_DDE_FIRST+7)
#define WM_DDE_EXECUTE      (WM_DDE_FIRST+8)
#define WM_DDE_LAST         (WM_DDE_FIRST+8)

//----------------------------------------------------------------------------//

#xcommand DEFINE <dde:DDE,LINK> <oDde> ;
             [ SERVICE <cService> ] ;
             [ TOPIC <cTopic> ] ;
             [ ITEM <cItem> ] ;
             [ ACTION <uAction> ] ;
             [ VALID  <uEnd> ] ;
       => ;
          <oDde> := TDde():New( <cService>, <cTopic>, <cItem>, [<{uAction}>],;
                                [<{uEnd}>] )

#xcommand ACTIVATE <dde:DDE,LINK> <oDde> => <oDde>:Activate()

//----------------------------------------------------------------------------//

#endif
