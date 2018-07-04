ORG 1000H                	 ;Espacio de direcciones de las variables

a1 DB 20						;Declaro una variable de 8 bits (DB) con el primer valor
a2 DB 5						;Declaro una variable de 8 bits (DB) con el segundo valor
dire DW 3000H         	;Declaro una variable de 16 bits (DW) con la direccion del resultado

ORG 1500H              		;Espacio de direcciones de las variables
MOV AL, a1                	;Cargar 20d (0x14) en AL
MOV BL, a2                  ;Cargar 5d (0x5) en BL
MOV CL,AL               	;Copiamos AL en CL
ADD AL, BL               	;Sumamos AL=AL+BL
MOV BX, dire           		;Cargar la direccion dde "dire" (1000H) en BX
MOV [BX], AL               ;Guardamos en la direccion 3000H el valor AL

;En este punto los registros deben valer 	AL=25d (0x19)
;																	BL=00d (0x00) por que se sobreescribe
;																	BX=1000H
;																	CL=20d
;																	1000H --> 3000H
;																	3000H ([BX]) --> 25d (0x19)

END
