#IFDEF SPANISH
			#define STR0001  "Plan de Localizaci¢n"
			#define STR0002  "Este programa emite el movimiento " 
			#define STR0003  "de los instrumentos para cotejo  "
			#define STR0004  "conforme los par metros solicitados."
			#define STR0005  "Familia/Instrumento"
			#define STR0006  "Familia/Escrit"
			#define STR0007  "Escrit/Instrumento"
			#define STR0008  "  "
			#define STR0009  "Administraci¢n"
			#define STR0010  "Instrumento                                        Frec                                      "
			#define STR0011  "Tipo             Instrumento         Escrit    Resp.  d¡as Fabricante       Org. Calibrador  SG | Previsi¢n R. Retir Devoluci¢n| Previsi¢n R. Retir Devoluci¢n| Previsi¢n R. Retir Devoluci¢n| Previsi¢n R. Retir  Devoluci¢n"
			#define STR0012  "CANCELADO POR EL OPERADOR"
#ELSE
	#IFDEF ENGLISH
                        #define STR0001  "Location Plan       "
                        #define STR0002  "This program issues the movement of the instruments for gauging"
                        #define STR0003  "pursuant to parameters requested.  "
			#define STR0004  ""
                        #define STR0005  "Family/Instrument "
                        #define STR0006  "Family/CCenter"
                        #define STR0007  "CCenter/Instrument"
                        #define STR0008  "Z.Form "
                        #define STR0009  "Management   "
                        #define STR0010  "Instrument                                         Freq                                      "+aMonth[1]+aMonth[2]+aMonth[3]+aMonth[4]
                        #define STR0011  "Kind             Instrument          Depart.   Resp.  days Manufacturer    Calibrating Body SG | Forecast  R. Remov  Devolut. | Forecast  R. Remov  Devolut. | Forecast  R. Remov  Devolut. | Forecast  R. Remov  Devolut. "
                        #define STR0012  "CANCELLED BY OPERATOR  "
	#ELSE
			#define STR0001  "Plano de Localizacao"
			#define STR0002  "Este programa emite a movimentacao dos instrumentos para afericao"
			#define STR0003  "conforme os parametros solicitados."
			#define STR0004  ""
			#define STR0005  "Familia/Instrumento"
			#define STR0006  "Familia/Depto"
			#define STR0007  "Depto/Instrumento"
			#define STR0008  "Zebrado"
			#define STR0009  "Administracao"
			#define STR0010  "Instrumento                                        Freq                                      "+aMeses[1]+aMeses[2]+aMeses[3]+aMeses[4]
			#define STR0011  "Tipo             Instrumento         Depto     Resp.  dias Fabricante       Orgao Calibrador SG | Previsao  R. Retir  Devolucao| Previsao  R. Retir  Devolucao| Previsao  R. Retir  Devolucao| Previsao  R. Retir  Devolucao"
			#define STR0012  "CANCELADO PELO OPERADOR"
	#ENDIF
#ENDIF
