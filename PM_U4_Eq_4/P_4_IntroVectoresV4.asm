TITLE IntroVectoresV4

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
vector dword 10,20,30,40,50
.code

	main4 PROC
	
		;Lógica del Programa
		
		mov ecx, sizeof vector
		mov esi, 0
		
		ciclo:
		mov eax, vector[esi]
		call writedec
		call crlf
		inc esi
		loop ciclo
			
		exit	
	
	main4 ENDP
	
	END main4
