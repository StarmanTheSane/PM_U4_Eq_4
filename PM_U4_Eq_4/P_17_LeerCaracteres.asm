TITLE DUP

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
vector_17 dword 30 dup(?)
variable_17 dword 3

.code

	main17 PROC
	
		;L�gica del Programa
		
		mov ecx, 4
		mov esi, 0

		ciclo: ; Letras mayusculas en ASCII
		call readint
		mov vector_17[esi], eax
		add esi, 4
		
		loop ciclo

		mov edx, offset vector_17
		call writestring
		exit

	main17 ENDP
	
	END main17