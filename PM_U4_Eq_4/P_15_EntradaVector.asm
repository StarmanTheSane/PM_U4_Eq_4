TITLE EntradaVector

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
vector_15 dword 20 dup ('A')

.code

	main15 PROC
	
		;L�gica del Programa
		
		println "Ingrese el valor de la primera posicion: "
		call readint 
		
		mov esi, 0
		mov vector_15[esi], eax

		exit

	main15 ENDP
	
	END main15