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
vector_10 dword 10, 4, 19, 1, 3, 14

.code

	main10 PROC
	
		;Lógica del Programa
		
		print "Cuantos valores menores hay."
		print "Que valor sera el de referencia:"
		call readint
		print "El valor/Los valores son:"

		mov ebx, eax
		
		mov esi, 0
		mov ebx, vector_10[esi]

		mov eax, sizeof vector_10
		mov ecx, 4
		mov edx, 0
		div ecx
		mov ecx, eax 
		add esi, 4
		dec ecx

		ciclo:
		cmp vector_10[esi],ebx
		jle menorX
		mov ebx, vector_10[esi]
		
		menorX:
		add esi, 4
		mov ebx, eax
		call writedec
		loop ciclo

		exit	
	
	main10 ENDP
	
	END main10
