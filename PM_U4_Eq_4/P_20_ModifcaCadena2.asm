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
vector_20 byte "El resultado es: XY. !!!"

.code

	main20 PROC
	
		;Lógica del Programa
		
		mov esi, 17 ;indice de primera letra x


		mov eax, 12 ; XY
	

		mov ebx, 10
		mov edx, 0

		div ebx ; eax =  1	edx = 2
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		add eax, 48 ; 48 = 0
		mov vector_20[esi], al

		inc esi

		mov eax, edx ; pasa el 2 a eax
		add eax, 48 ; 48 = 0
		mov vector_20[esi], al

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		mov edx, offset vector_20
		call writestring
		exit

	main20 ENDP

	END main20