	SC SUB_ini	;chama a subrotina
	HM /000

	@ /0010		;comeca subrotina em 0x0012, 0x0010 fica vago pra retorno
SUB_ini K /000
	LD N		;faz load do N passado
	MM I		;salva na variavel de iteracao i
	JZ SUB_fim	;checa se N != 0, caso qnd o resultado ja esta armazenado por padrao
FOR_ini	LD RES		;senao, multiplica por mais um termo
	ML I
	MM RES
	LD I		;atualiza i, decrementando em 1
	SB UM
	MM I
	JZ SUB_fim	;se i==0, sai do loop
	JP FOR_ini	;senao, faz outra iteracao
SUB_fim RS SUB_ini

;variaveis e valores auxiliares
	@ /0100
N 	K =0
RES 	K =1		;eh inicializado com 1, para caso N == 0
I 	K =0
UM	K =1		;cte
