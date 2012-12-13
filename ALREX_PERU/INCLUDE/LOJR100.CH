#IFDEF SPANISH
	#define STR0001 "En este informe se imprimir  la lista de productos calculando el giro"
	#define STR0002 "del stock y las ventas de los £ltimos 3 meses. Se debe informar los    "
	#define STR0003 "productos de/hasta y el n£mero de meses que ser  considerado."
	#define STR0004 "Giro de Stock   "
	#define STR0005 "  "
	#define STR0006 "Administraci¢n"
 	#define STR0007 "C¢d Producto    Descripci¢n                UN Grupo Saldo Stock     Giro Stock      "
	#define STR0008 "Vend "
#ELSE
	#IFDEF ENGLISH
                #define STR0001 "This will print the List of Products, calculating the Turnover of   "
                #define STR0002 "of the inventory and Sales over the last 3 months.Inform the products"
                #define STR0003 "from/to and number the months to be considered.     "
                #define STR0004 "Inventory Turnover"
                #define STR0005 "Z.form "
                #define STR0006 "Management   "
                #define STR0007 "Product code    Descript.                  SU Group Balan Invent.   Invent.Turnover "
                #define STR0008 "Sell."
	#ELSE
		#define STR0001 "Este relat¢rio ira' imprimir a rela‡„o de produtos calculando o giro"
		#define STR0002 "do estoque e as vendas dos ultimos 3 meses. Dever  ser informado  os"
		#define STR0003 "produtos de/ate e numero de meses a ser considerado."
		#define STR0004 "Giro de Estoques"
		#define STR0005 "Zebrado"
		#define STR0006 "Administracao"
		#define STR0007 "Cod Produto     Descricao                  UN Grupo Saldo Estoque   Giro Estoque    "
		#define STR0008 "Vend "
	#ENDIF
#ENDIF