;cria operacao de escrita por lista em cada iteracao
INI_EX	LD ADDR
	AD OP_MM
	MM ESCRITA
;confere se o for ja acabou	
	LD STOP
	SB ADDR
	JN FIM_EX
;senao, vai pro proximo endereco
	LD ADDR
	AD DOIS
	MM ADDR
;faz operacoes
	LD I
	ML DOIS
	AD UM
	MM TERM
	LD RES
	AD TERM
	MM RES
ESCRITA	K /0000
;faz i = i+1
	LD I
	AD UM
	MM I
	JP INI_EX
FIM_EX	HM /000



;posiçoes para guardar os valores
	@ /0102
INICIO	K =0
	@ /017E
FIM	K =0

;valores auxiliares para loops
	@ /0200
ADDR	K INICIO
OP_MM	K /9000
STOP	K FIM
UM	K =1
DOIS	K =2
TERM	K =0
I	K =0
RES	K =0
