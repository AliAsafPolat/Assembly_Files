PAGE 60,80
TITLE COM TIPI PROGRAMDA MAKRO KULLANIMI

CODESG SEGMENT PARA 'CODE'
	ORG 100H
	ASSUME CS:CODESG,SS:CODESG,DS:CODESG

SIL MACRO     	;EKRANI SILMEYE YARAYAN MACRO KODU

	MOV CX,0000H	;EKRANIN SOL UST KOSESI
	MOV DX,184FH	;EKRANIN SAG ALT KOSESI
	MOV BH,07H		;OZNITELIK DEGERI
	MOV AX,0600H	;AH=06H PENCEREYI YUKARI KAYDIRMA
	INT 10H			;10H NUMARALI KESMEYİ CAGIRIR
	
	ENDM
	
YAZDIR MACRO text
	LEA DX,text		;DX YAZDIRILACAK MESAJIN BASINI GOSTERMELI
	MOV AH,09H		;AH=09H MESAJI EKRANA YAZDIRMA
	INT 21H			;21H NUMARALI KESMEYI CAGIRIR
	
	ENDM
	

	
;BILGI: JMP BASLA
;MESAJ DB 'EKRAN SILINDI VE BU MESAJ YAZDIRILDI $'

BASLA PROC NEAR
		SIL 			;SIL ISIMLI MACROYU KULLAN
		YAZDIR MESAJ	;YAZDIR ISIMLI MACROYU MESAJ PARAMETRESI ILE KULLAN
		

RET
BASLA ENDP
MESAJ DB 'EKRAN SILINDI VE BU MESAJ YAZDIRILDI $'


CODESG ENDS
 	END BASLA
	
	
	