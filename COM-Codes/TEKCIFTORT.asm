PAGE 60,80
TITLE TEK ORT VE CIFT ORT

CODESG SEGMENT PARA 'CODE'
	ORG 100H
	ASSUME CS:CODESG,DS:CODESG,SS:CODESG,ES:CODESG
	
BILGI : JMP BASLA

		DIZI 		DW 1,2,3,6,7,8,9,6,2,10
		TEKTOP		DW 0
		TEKSAY		DW 0
		CIFTTOP		DW 0
		CIFTSAY		DW 0
		ELEMAN 		DW 10
		TEKORT 		DW (?)
		CIFTORT		DW (?)
BASLA PROC NEAR

		XOR SI,SI
		XOR DX,DX
		MOV CX,ELEMAN
		LEA SI,DIZI
		
		
L1:		MOV AX,[SI]
		TEST AX,0001H
		JZ CIFT
		INC TEKSAY
		ADD TEKTOP,AX
		
		JMP SON
CIFT :	
		INC CIFTSAY
		ADD CIFTTOP,AX
			
SON:
		ADD SI,2
			
		LOOP L1
	
	MOV AX,TEKTOP
	DIV TEKSAY
	MOV TEKORT,AX
	
	XOR AX,AX
	MOV AX,CIFTTOP
	DIV CIFTSAY
	MOV CIFTORT,AX
	
	RET
	BASLA ENDP
	CODESG ENDS
	END BILGI
	


	