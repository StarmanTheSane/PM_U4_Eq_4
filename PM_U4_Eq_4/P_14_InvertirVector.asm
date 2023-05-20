TITLE InvertirVector

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
vector_14 dword 32, 1, 6, 8, 23, 5

.code

	main14 PROC
	
		;Lógica del Programa
		
		print "El vector invertido es: "
		
		mov esi, 0
		mov ebx, vector_14[esi] 

		mov eax, sizeof vector_14
		mov ecx, 4
		mov edx, 0
		div ecx
		mov ecx, eax ; cantidad de elementos en el vector
		
		mov eax, 0 ; iniciando eax en 0
		mov edx, ecx

		ciclo:
		mov eax, vector_14[esi]
		push eax
		add esi, 4

		loop ciclo

		mov ecx, edx
		mov esi, 4

		ciclo2:
		pop eax
		mov vector_14[esi], eax
		add esi, 4
		
		loop ciclo2
		
		mov ecx, edx
		mov esi, 4

		ciclo3:
		mov eax, vector_14[esi]
		call writedec
		print ", "
		add esi, 4

		loop ciclo3

		exit

	main14 ENDP
	
	END main14
