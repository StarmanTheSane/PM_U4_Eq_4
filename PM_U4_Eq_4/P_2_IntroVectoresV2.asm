TITLE IntroVectoresV2

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Zavala Loredo Jose Andres

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  
INCLUDE Macros.inc

.data
; Área de Declaración de Variables
vector byte 10,20,30,40,50
.code

	main2 PROC
	
		;Lógica del Programa
	
		; esi / edi
		mov esi, 0
		mov al, vector[esi]
		call writedec
			
		exit	
	
	main2 ENDP
	
	END main2
