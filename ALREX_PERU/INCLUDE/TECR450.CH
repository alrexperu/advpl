#IFDEF SPANISH
   #define STR0001  "Impresi¢n de Orden de Servicio"  // T¡tulo del Informe
   #define STR0002  "     Este programa emite las Ordenes de Servicios conforme los par metros"  // Descripci¢n 1
   #define STR0003  "solicitados."  // Descripci¢n 2
   #define STR0004  ""  // Descripci¢n 3
   #define STR0005  "Cebrado"
   #define STR0006  "Administraci¢n"
   #define STR0007  "CANCELADO POR OPERADOR"
   #define STR0008  "|                                ORDEN DE SERVICIO                                                  | Nr.OS: ###### |  Hoja: ######|"
   #define STR0009  "|Cliente  : ######/## - ########################################                                                                   |"
   #define STR0010  "|Emisi¢n  : ##########                                                                                                             |"
   #define STR0011  "|Atendedor: ####################                                                                                                   |"
   #define STR0012  "|Cond.Pago: ### - ##################################                                Descuento(s): ###### + ###### + ###### + ######|"
   #define STR0013  "|It|   Tipo   |    Producto   |      Nr.Serie      |                Problema               |    Contrato   | Garant¡a |            |"
   #define STR0014  "|  |IT|Producto       |Descripci¢n                   |Servic.|  Cantidad    |Valor Unitario|    Valor Total    | Valor Fabricante  |"
   #define STR0015  "|                                                                            SUBTOTAL      | ##################| ##################|"
   #define STR0016  "|                                                                            TOTAL GENERAL | ##################| ##################|"
#ELSE
   #IFDEF ENGLISH
      #define STR0001  "Printing of the Service Order"  // Titulo do Relatorio
      #define STR0002  "     This progral will issue the Service Orders, according to parameters "  // Descricao 1
      #define STR0003  "selected.   "  // Descricao 2
      #define STR0004  ""  // Descricao 3
      #define STR0005  "Z.Form "
      #define STR0006  "Management   "
      #define STR0007  "CANCELLED BY OPERATOR  "
      #define STR0008  "|                                SERVICE ORDER                                                      | SO.NR: ###### | Sheet: ######|"
      #define STR0009  "|Customer : ######/## - ########################################                                                                   |"
      #define STR0010  "|Issue    : ##########                                                                                                             |"
      #define STR0011  "|Attendant: ####################                                                                                                   |"
      #define STR0012  "|Paym.Term: ### - ##################################                                 Discount(s): ###### + ###### + ###### + ######|"
      #define STR0013  "|It|   Type   |    Product    |      Ser.Numb.     |                Problem                |    Contract   | Warranty |            |"
      #define STR0014  "|  |IT|Product        |Description                   |Service|  Quantity    |Unit Price    |    Total Value    | Vl. in Manufact.  |"
      #define STR0015  "|                                                                            SUB-TOTAL     | ##################| ##################|"
      #define STR0016  "|                                                                            GEN. TOTAL    | ##################| ##################|"
   #ELSE   
      #define STR0001  "Impressao da Ordem de Servico"  // Titulo do Relatorio
      #define STR0002  "     Este programa ira emitir as Ordem de Servicos conforme os parametros"  // Descricao 1
      #define STR0003  "solicitados."  // Descricao 2
      #define STR0004  ""  // Descricao 3
      #define STR0005  "Zebrado"
      #define STR0006  "Administracao"
      #define STR0007  "CANCELADO PELO OPERADOR"
      #define STR0008  "|                                ORDEM DE SERVICO                                                   | Nr.OS: ###### | Folha: ######|"
      #define STR0009  "|Cliente  : ######/## - ########################################                                                                   |"
      #define STR0010  "|Emissao  : ##########                                                                                                             |"
      #define STR0011  "|Atendente: ####################                                                                                                   |"
      #define STR0012  "|Cond.Pag.: ### - ##################################                                 Desconto(s): ###### + ###### + ###### + ######|"
      #define STR0013  "|It|   Tipo   |    Produto    |      Nr.Serie      |                Problema               |    Contrato   | Garantia |            |"
      #define STR0014  "|  |IT|Produto        |Descricao                     |Servico|  Quantidade  |Valor Unitario|    Valor Total    | Valor Fabricante  |"
      #define STR0015  "|                                                                            SUB-TOTAL     | ##################| ##################|"
      #define STR0016  "|                                                                            TOTAL GERAL   | ##################| ##################|"
   #ENDIF
#ENDIF
