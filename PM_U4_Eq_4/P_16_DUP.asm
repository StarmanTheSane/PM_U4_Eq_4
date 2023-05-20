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
vector_16 dword ?
variable_16 dword 3

.code

	main16 PROC
	
		;Lógica del Programa
		
		println "Ingrese el valor de la primera posicion: "
		call readint 
		mov esi, 0
		mov vector_16[esi], eax
		
		add esi, 4
		println "Ingrese el valor de la segunda posicion: "
		call readint 
		mov esi, 0
		mov vector_16[esi], eax

		exit

	main16 ENDP
	
	END main16