#IFDEF SPANISH
	#define STR0001 "Acumulados Mensuales"
	#define STR0002 " Es generado el archivo de Acumulados Mensuales por producto, "
	#define STR0003 " del mes seleccionado en los par metros.                      "
  	#define STR0004 " Debe ser usado en la rutina de Cierre Mensual.               "
#ELSE
	#IFDEF ENGLISH
      #define STR0001 "Monthly Accumulated"
      #define STR0002 " It will generate a file of Monthly Accumulated per product,  "
      #define STR0003 " of the month selected in the parameters.                     "
      #define STR0004 " It must be used in the Monthly closing routine.              "
	#ELSE
		#define STR0001 "Acumulados Mensais"
		#define STR0002 " Este programa gera o arquivo de Acumulados Mensais por       "
		#define STR0003 " produto, do mˆs selecionado nos parametros.                  "
		#define STR0004 " Dever  ser utilizado na rotina de fechamento Mensal.         "
	#ENDIF
#ENDIF