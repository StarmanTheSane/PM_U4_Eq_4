TITLE ParesVector

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
vector_13 dword 10, 8, 5, 8, 7, 9
contador_13 dword 0

.code

	main13 PROC
	
		;Lógica del Programa
		
		print "Tienes "
		
		mov esi, 0
		mov ebx, vector_13[esi] 

		mov eax, sizeof vector_13
		mov ecx, 4
		mov edx, 0
		div ecx
		mov ecx, eax ; cantidad de elementos en el vector
		
		mov eax, 0 ; iniciando eax en 0

		ciclopar:
		mov eax, vector_13[esi]  ; guardamos el valor de la posicion en eax
		mov ebx, 2 ; inicializamos ebx en 2
		mov edx, 0 ; residuo
		div ebx ; para obtener residuo
		cmp edx, 0 ; revisa si el residuo es 0
		je par ; Si es 0

		jmp salir

		par:
		inc contador_13
		salir:
		add esi, 4
		
		loop ciclopar
		mov eax, contador_13
		call writedec
		print " pares."
		
		exit

	main13 ENDP
	
	END main13
