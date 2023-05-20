TITLE DUP

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
vector_18 byte 30 dup(?)
variable_18 dword 3

.code

	main18 PROC
	
		;Lógica del Programa
		
		mov ecx, 4
		mov esi, 0

		ciclo: ; Letras mayusculas en ASCII
		call readint
		mov vector_18[esi], al
		inc esi
		
		loop ciclo

		mov edx, offset vector_18
		call writestring
		exit

	main18 ENDP
	
	END main18