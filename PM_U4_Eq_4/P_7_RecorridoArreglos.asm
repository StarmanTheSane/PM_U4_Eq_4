TITLE RecorridoArreglos

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
vector_7 dword 10, 4, 9, 1, 3, 4
.code

	main7 PROC
	
		;Lógica del Programa
	
		mov ebx, 0 ; acumulador de suma
		
		mov eax, sizeof vector_7
		mov ecx, 4
		mov edx, 0
		div ecx
		mov ecx, eax ; cantidad de elementos en el vector....
		mov esi, 0 ; indice / posicion que accedera el vector

		ciclo:
		add  ebx, vector_7[esi]
		add esi, 4

		loop ciclo

		mov eax, ebx

		print "La suma es:"
		call writedec

		exit	
	
	main7 ENDP
	
	END main7
