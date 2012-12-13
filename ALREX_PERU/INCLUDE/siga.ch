#IFNDEF PROTHEUS

    #ifndef SIGA
    *旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
    *쿌rquivo Header padrao do SIGA                                                     �
    *읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
    #define Comprimido  CHR(15)
    #define Expandido   CHR(18)
    #define Topo            1
    #define Rodape      2
    #define Corpo           3
    #define A_Enter     8
    #define A_Esc           9
    #define A_Ajuda     10
    #define A_Ferram        11
    #define Yes       .T.
    #define No        .F.
    #define MsBotao     Val(SubStr(MouseRet,1,1))
    #define MsArea      Val(SubStr(MouseRet,2,2))
    #define MsTecla     Val(SubStr(MouseRet,4,3))
    #define MsLinha     Val(SubStr(MouseRet,7,2))
    #define MsColuna        Val(SubStr(MouseRet,9,2))
    #define cFilial     IIF(SubStr(cArqTab,AT(Alias(),cArqTab)+3,1)="E",cFilAnt,"  ")

    #define cVer            "2.07"

    #command  MouseOn  => IF Have_A_Mouse;MS_CURON();MS_CURSOR(1);MS_CURON();END
    #command  MouseOff => IIF(Have_A_Mouse,MS_CUROFF(),"")

    #command  ReadGet  => SetCursor(1);Read;SetCursor(0)

    #include "Std.ch"

    #command @ <row>, <col> PSAY <xpr>                                                  ;
                                    [PICTURE <pic>]                                         ;
                                    [COLOR <color>]                                         ;
                                                                                                    ;
            => DevPos( <row>, <col> )                                                       ;
             ; DevOutPict( <xpr>, <pic> [, <color>] )


    #command @ <row>, <col> PSAY <xpr>                                                   ;
                                    [COLOR <color>]                                         ;
                                                                                                    ;
            => DevPos( <row>, <col> )                                                       ;
             ; DevOut( <xpr> [, <color>] )


    //SigaTTS
    #xcommand  BEGIN TRANSACTION => Begin Sequence; BeginTran()
    #xcommand  BEGIN TRANSACTION EXTENDED => Begin Sequence; BeginTran()
    #Translate END TRANSACTION   => End Sequence ; EndTran()
    #Translate END TRANSACTION EXTENDED   => End Sequence ; EndTran()

    #IFDEF NSX
    #include "SixNsx2.ch"
    #ENDIF

    #define SIGA

    #endif

#ENDIF
