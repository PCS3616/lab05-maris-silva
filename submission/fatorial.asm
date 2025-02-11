	SC SUB_ini
	HM /000
	
	@ /0010
SUB_ini K /000
	LD /100
	MM /104
	JZ SUB_fim
FOR_ini	LD RES
	ML I
	MM RES
	LD I
	SB UM
	MM I
	JZ SUB_fim
	JP FOR_ini
SUB_fim RS SUB_ini
	

	@ /0100
N 	K =0
RES 	K =1
I 	K =0
UM	K =1
