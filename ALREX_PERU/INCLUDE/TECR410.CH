#IFDEF SPANISH
   #define STR0001  "Relaci¢n de Presupues."  // T°tulo del Informe
   #define STR0002  "   Este programa imprime la relaci¢n de presupuestos conforme"  // Descripci¢n 1
   #define STR0003  "los par†metros solicitados."  // Descripci¢n 2
   #define STR0004  ""  // Descripci¢n 3
   #define STR0005  "N£mero"
   #define STR0006  "Cliente"
   #define STR0007  "Emisi¢n"
   #define STR0008  "A Rayas"
   #define STR0009  "Administraci¢n"
   #define STR0010  "PRESUPUES.  TIPO     CLIENTE   EMISI‡N    CP. PRODUCTO        NR.SERIE             PROBLEMA                                O.S.       EVENTO                                                                                "
   #define STR0011  "                     IT PRODUCTO        DESCRIPCI‡N                                                                           SERVICIO    CANTIDAD   VALOR UNITARIO      VALOR CLIENTE   VALOR FABRICANTE        VALOR TOTAL"
   #define STR0012  " [ NR.PRESUPUES.] "
   #define STR0013  " [ CLIENTE ] "
   #define STR0014  " [ EMISI‡N ] "
   #define STR0015  "CANCELADO POR OPERADOR"
   #define STR0016  "TOTAL PRESUPUES"
   #define STR0017  "TOTAL CLIENTE "
   #define STR0018  "TOTAL DE "+DTOC(cQuebra)
   #define STR0019  "TOTAL GRAL."
#ELSE
   #IFDEF ENGLISH
      #define STR0001  "List of Budgets      "  // Titulo do Relatorio
      #define STR0002  "   This program will print a list of Budgets in accordance    "  // Descricao 1
      #define STR0003  "to parameters selected.   "  // Descricao 2
      #define STR0004  ""  // Descricao 3
      #define STR0005  "Number"
      #define STR0006  "Customer"
      #define STR0007  "Issue  "
      #define STR0008  "Z.Form "
      #define STR0009  "Management   "
      #define STR0010  "BUDGET      TYPE     CUSTOMER  ISSUE      PT  PRODUCT         SER.NUMBER           PROBLEM                                 SO.        OCCURRENCE                                                                            "
      #define STR0011  "                     IT PRODUCT         DESCRIPTION                                                                           SERVICE     QUANTITY   UNIT PRICE          VL.IN CUSTOMER  VL. IN MANUFACTURER     TOTAL      "
      #define STR0012  " [ BUDGET NR.   ] "
      #define STR0013  " [ CUSTOMER] "
      #define STR0014  " [ ISSUE   ] "
      #define STR0015  "CANCELLED BY OPERATOR  "
      #define STR0016  "TOTAL OF BUDGET"
      #define STR0017  "TOTAL OF CUST."
      #define STR0018  "TOTAL OF "+DTOC(cQuebra)
      #define STR0019  "GEN. TOTAL "
   #ELSE
      #define STR0001  "Relacao de Orcamentos"  // Titulo do Relatorio
      #define STR0002  "   Este programa ira imprimir a relacao de orcamentos conforme"  // Descricao 1
      #define STR0003  "os parametros solicitados."  // Descricao 2
      #define STR0004  ""  // Descricao 3
      #define STR0005  "Numero"
      #define STR0006  "Cliente"
      #define STR0007  "Emissao"
      #define STR0008  "Zebrado"
      #define STR0009  "Administracao"
      #define STR0010  "ORCAMENTO   TIPO     CLIENTE   EMISSAO    CPG PRODUTO         NR.SERIE             PROBLEMA                                O.S.       OCORRENCIA                                                                            "
      #define STR0011  "                     IT PRODUTO         DESCRICAO                                                                             SERVICO     QUANTIDADE VALOR UNITARIO      VALOR CLIENTE   VALOR FABRICANTE        VALOR TOTAL"
      #define STR0012  " [ NR.ORCAMENTO ] "
      #define STR0013  " [ CLIENTE ] "
      #define STR0014  " [ EMISSAO ] "
      #define STR0015  "CANCELADO PELO OPERADOR"
      #define STR0016  "TOTAL ORCAMENTO"
      #define STR0017  "TOTAL CLIENTE "
      #define STR0018  "TOTAL DE "+DTOC(cQuebra)
      #define STR0019  "TOTAL GERAL"
   #ENDIF
#ENDIF

