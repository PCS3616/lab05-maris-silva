;le e armazena X
	GD /000
	SB ASCII_D
	MM X
;pula espacos
	GD /000
;le e armazena Y
	GD /000
	SB ASCII_D
	MM Y
;calcula e armazena X+Y
	LD X
	AD Y
	MM RES
;checa se o segundo digito do resultado eh maior que 9 por meio de shifts
	ML SHIFT
	SB NOVE
	JN PRINT
;se for, faz o vai-um
	LD RES
	SB CTE_A
	AD CTE_256
;senao, soma 0x3030 e printa resultado. tambem chega aqui apos o tratamento
PRINT	AD ASCII_D
	PD /100
	HM /000

;variaveis e valores auxiliares
	@ /0100
ASCII_D	K /3030
SHIFT	K /0100
X	K =0
Y	K =0
RES	K =0
NOVE	K /0900
CTE_A	K /A
CTE_256	K /0100
