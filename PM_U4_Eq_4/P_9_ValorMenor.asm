TITLE ValorMayor

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
vector_9 dword 10, 4, 19, 1, 3, 14

.code

	main9 PROC
	
		;Lógica del Programa
	
		mov esi, 0
		mov ebx, vector_9[esi] 

		mov eax, sizeof vector_9
		mov ecx, 4
		mov edx, 0
		div ecx
		mov ecx, eax 
		add esi, 4
		dec ecx

		ciclo:
		cmp ebx, vector_9[esi]	; comparas el valor del vector con el actual
		jle noactualizar		; salta al label si el elemento es menor o igual
		mov ebx, vector_9[esi]

		noactualizar:
		add esi, 4  ; incrementa contador del ciclo
		loop ciclo	; repite el ciclo hasta que todos los valores sean comparados
		
		mov eax, ebx
		print "El valor menor es:"
		call writedec

		exit	
	
	main9 ENDP
	
	END main9
