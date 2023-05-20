TITLE PromediosVector

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
vector_12 dword 10, 8, 5, 7, 7, 9

.code

	main12 PROC
	
		;Lógica del Programa
		
		print "El promedio es:"
		
		mov esi, 0
		mov ebx, vector_12[esi] 

		mov eax, sizeof vector_12
		mov ecx, 4
		mov edx, 0
		div ecx
		mov ecx, eax ; cantidad de elementos en el vector
		push ecx
		mov eax, 0

		cicloprom:
		mov ebx, vector_12[esi]
		add eax, ebx
		add esi, 4
		
		loop cicloprom

		pop ebx
		div ebx
		call writedec	
		
		exit

	main12 ENDP
	
	END main12
