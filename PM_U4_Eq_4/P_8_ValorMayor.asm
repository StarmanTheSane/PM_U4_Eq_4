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
vector_8 dword 10, 4, 19, 1, 3, 14

.code

	main8 PROC
	
		;Lógica del Programa
	
		mov esi, 0
		mov ebx, vector_8[esi] 

		mov eax, sizeof vector_8
		mov ecx, 4
		mov edx, 0
		div ecx
		mov ecx, eax 
		add esi, 4
		dec ecx

		ciclo:
		cmp vector_8[esi], ebx	; comparas el valor del vector con el actual
		jle noactualizar		; salta al label si el elemento es menor o igual
		mov ebx, vector_8[esi]

		noactualizar:
		add esi, 4  ; incrementa contador del ciclo
		loop ciclo	; repite el ciclo hasta que todos los valores sean comparados
		
		mov eax, ebx ; movemos el valor mayor a eax para mostrarlo
		print "El valor mayor es:"
		call writedec

		exit	
	
	main8 ENDP
	
	END main8
