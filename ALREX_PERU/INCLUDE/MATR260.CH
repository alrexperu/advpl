#IFDEF SPANISH
	#define STR0001  "Relacion de la Situacion del Stock"
	#define STR0002  "Este informe emite la situacion de los saldos y reservas de cada producto"
	#define STR0003  "en stock. Tambien  muestra el saldo  disponible, o sea el saldo obtenido "
	#define STR0004  "de las reservas."
	#define STR0005  " Por Codigo         "
	#define STR0006  " Por Tipo           "
	#define STR0007  " Por Descripcion    "
	#define STR0008  " Por Grupo          "
	#define STR0009  " Por Deposito       "
	#define STR0010  "A Rayas"
	#define STR0011  "Administracion"
	#define STR0012  "Seleccionando registros..."
	#define STR0013  "Organizando archivo..."
	#define STR0014  "CODIGO          TP GRUP DESCRIPCION           UM FL DEP.       SALDO           VENTAS/       DEVOLUCIONES    SALDO                                      "
	#define STR0015  "                                                               INICIAL         PROMOCIONES                   FINAL                                      "
	#define STR0016  "Total del "
	#define STR0017  "Tipo"
	#define STR0018  "Grupo"
	#define STR0019  "Total unidad medida  : "
	#define STR0020  "Total general: "
	#define STR0021  "ANULADO POR EL OPERADOR."
	#define STR0022  "Registro(s) procesado(s)"
	#define STR0023 ": Preparacion..."
	#define STR0024 'Custo Unificado'
	#define STR0025 'Com o parametro MV_CUSFIL ativado o preenchimento das seguintes perguntas deve ser observado:'
	#define STR0026 'Aglutina Por Almoxarifado/Filial/Empresa? -> Somente podem ser utilizadas as opcoes "Filial" ou "Empresa"'
	#define STR0027 'Armazem De? -> Somente "**"'
	#define STR0028 'Armazem Ate? -> Somente "**"'
	#define STR0029 'Ordem de Impressao -> Todas, exceto "ARMAZEM"'
#ELSE
	#IFDEF ENGLISH
		#define STR0001  "Inventory Status Report"
		#define STR0002  "This report prints Balance and Reserve Status of each product in"
		#define STR0003  "Stock, and also the available Balance, that is, the differences "
		#define STR0004  "between Balance/Reserve"
		#define STR0005  " By Code            "
		#define STR0006  " By Type            "
		#define STR0007  " By Description     "
		#define STR0008  " By Group           "
		#define STR0009  " By Warehouse       "
		#define STR0010  "Z.Form "
		#define STR0011  "Management   "
		#define STR0012  "Selecting Records...     "
		#define STR0013  "Sorting File...       "
		#define STR0014  "CODE            TP GRP  DESCRIPTION           UM BC WRH   BALANCE     ALLOCATION TO      AVAILABLE     ____________VALUE ___________"
		#define STR0015  "                                                          IN STOCK    REQ/SO/RESERV.     STOCK            IN STOCK        ALLOCATED "
		#define STR0016  "Total of "
		#define STR0017  "Type"
		#define STR0018  "Group"
		#define STR0019  "Total Unit meas. : "
		#define STR0020  "Grand Total:"
		#define STR0021  "CANCELLED BY THE OPERATOR.  "
		#define STR0022  "Record(s) processed "
		#define STR0023 ": Preparation.."
		#define STR0024 'Custo Unificado'
		#define STR0025 'Com o parametro MV_CUSFIL ativado o preenchimento das seguintes perguntas deve ser observado:'
		#define STR0026 'Aglutina Por Almoxarifado/Filial/Empresa? -> Somente podem ser utilizadas as opcoes "Filial" ou "Empresa"'
		#define STR0027 'Armazem De? -> Somente "**"'
		#define STR0028 'Armazem Ate? -> Somente "**"'
		#define STR0029 'Ordem de Impressao -> Todas, exceto "ARMAZEM"'
	#ELSE
		#define STR0001  "Relacao da Posicao do Estoque"
		#define STR0002  "Este relatorio emite a posicao dos saldos e empenhos de cada  produto"
		#define STR0003  "em estoque. Ele tambem mostrara' o saldo disponivel ,ou seja ,o saldo"
		#define STR0004  "subtraido dos empenhos."
		#define STR0005  " Por Codigo         "
		#define STR0006  " Por Tipo           "
		#define STR0007  " Por Descricao      "
		#define STR0008  " Por Grupo          "
		#define STR0009  " Por Armazem        "
		#define STR0010  "Zebrado"
		#define STR0011  "Administracao"
		#define STR0012  "Selecionando Registros..."
		#define STR0013  "Organizando Arquivo..."
		#define STR0014  "CODIGO          TP GRUP DESCRICAO             UM FL ARMZ  SALDO       EMPENHO PARA       ESTOQUE       ____________VALOR ___________"
		#define STR0015  "                                                          EM ESTOQUE  REQ/PV/RESERVA     DISPONIVEL      EM ESTOQUE        EMPENHADO"
		#define STR0016  "Total do "
		#define STR0017  "Tipo"
		#define STR0018  "Grupo"
		#define STR0019  "Total Unidade Medida : "
		#define STR0020  "Total Geral : "
		#define STR0021  "CANCELADO PELO OPERADOR."
		#define STR0022  "Registro(s) processado(s)"
		#define STR0023 ": Preparacao..."
		#define STR0024 'Custo Unificado'
		#define STR0025 'Com o parametro MV_CUSFIL ativado o preenchimento das seguintes perguntas deve ser observado:'
		#define STR0026 'Aglutina Por Almoxarifado/Filial/Empresa? -> Somente podem ser utilizadas as opcoes "Filial" ou "Empresa"'
		#define STR0027 'Armazem De? -> Somente "**"'
		#define STR0028 'Armazem Ate? -> Somente "**"'
		#define STR0029 'Ordem de Impressao -> Todas, exceto "ARMAZEM"'
	#ENDIF
#ENDIF