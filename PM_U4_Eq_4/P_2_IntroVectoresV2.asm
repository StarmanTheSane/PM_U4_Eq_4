TITLE IntroVectoresV2

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Zavala Loredo Jose Andres

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  
INCLUDE Macros.inc

.data
; �rea de Declaraci�n de Variables
vector byte 10,20,30,40,50
.code

	main2 PROC
	
		;L�gica del Programa
	
		; esi / edi
		mov esi, 0
		mov al, vector[esi]
		call writedec
			
		exit	
	
	main2 ENDP
	
	END main2
