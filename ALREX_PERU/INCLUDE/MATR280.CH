#IFDEF SPANISH
         #define STR0001  "Listado para Inventario"
         #define STR0002  "Este programa emite un informe que facilita el tipeo"
         #define STR0003  "de las cantidades del inventario."
         #define STR0004  "La emisi¢n es de acuerdo con los par†metros informados."
         #define STR0005  " Por C¢digo         "
         #define STR0006  " Por Tipo           "
         #define STR0007  " Por Descripci¢n  "
         #define STR0008  " Por Grupo        "
         #define STR0009  "  "
         #define STR0010  "Administraci¢n"
         #define STR0011  "PRODUCTO(S)"
			#define STR0012  'C‡DIGO          TP GRUPO DESCRIPCI‡N                    UM DEP DESCRIPCI‡N     LOCALIZACI‡N    LOTE       SUB-   NÈMERO DE SERIE  ______1ß. CµLCULO_______       ______2ß. CµLCULO_______       ______3ß. CµLCULO_______'
			#define STR0013  '                                                               DEP‡SITO        FISICA                     LOTE                    CANTIDAD        ETIQUETA       CANTIDAD        ETIQUETA       CANTIDAD        ETIQUETA'
         #define STR0014  "CANCELADO POR EL OPERADOR"
#ELSE
   #IFDEF ENGLISH
         #define STR0001  "Report of Inventory     "
         #define STR0002  "This program issues a report which helps the typing of   "
         #define STR0003  "quantities from inventory.     "
         #define STR0004  "It is issued according to the parameters informed.    "
         #define STR0005  " Per Code           "
         #define STR0006  " Per Kind           "
         #define STR0007  " Per Descript.    "
         #define STR0008  " Per Group        "
         #define STR0009  "Z.Form "
         #define STR0010  "Management   "
         #define STR0011  "PRODUCT(S)"
         #define STR0012  "CODE            KD GROUP DESCRPT.                      SU LOC LOCATION         __1st. COUNTING__  __2nd COUNTING_  __3rd COUNTING__ "
         #define STR0013  "                                                                               QUANTITY    LABELS QUANTITY   LABELS QUANTITY   LABELS"
         #define STR0014  "CANCELLED BY OPERATOR  "
   #ELSE
         #define STR0001  "Listagem para Inventario"
         #define STR0002  "Este programa emite um relatorio que facilita a digitacao"
         #define STR0003  "das quantidades inventariadas."
         #define STR0004  "Ele e' emitido de acordo com os parametros informados."
         #define STR0005  " Por Codigo         "
         #define STR0006  " Por Tipo           "
         #define STR0007  " Por Descricao    "
         #define STR0008  " Por Grupo        "
         #define STR0009  "Zebrado"
         #define STR0010  "Administracao"
         #define STR0011  "PRODUTO(S)"
			#define STR0012  'CODIGO          TP GRUPO DESCRICAO                      UM ALM DESCRICAO       LOCALIZACAO     LOTE       SUB    NUMERO           ______1a. CONTAGEM______       ______2a. CONTAGEM______       ______3a. CONTAGEM______'
			#define STR0013  '                                                               ALMOXARIFADO    FISICA                     LOTE   SERIE            QUANTIDADE      ETIQUETA       QUANTIDADE      ETIQUETA       QUANTIDADE      ETIQUETA'
         #define STR0014  "CANCELADO PELO OPERADOR"
   #ENDIF
#ENDIF