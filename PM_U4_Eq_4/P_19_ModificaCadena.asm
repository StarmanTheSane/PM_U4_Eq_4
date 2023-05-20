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
vector_19 byte "Maniana pagara 0X refrescos, Luna!"


.code

	main19 PROC
	
		;Lógica del Programa
		
		mov esi, 16 ;indice de letra x

		call readchar ; cant de refrescos
		mov vector_19[esi], al

		;EJEMPLO 1
		; mov eax, 0 
		; mov al, vector_19[esi]
		;call writechar
		
		;EJEMPLO 2
		mov edx, offset vector_19
		call writestring

		exit

	main19 ENDP

	END main19