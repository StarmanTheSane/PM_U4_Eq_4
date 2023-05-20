TITLE SQRTElemVector

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
vector_11 dword 10, 4, 19, 1, 3, 14

.code

	main11 PROC
	
		;L�gica del Programa
		
		print "El cuadrado de los elementos de tu vector es: "
		
		mov esi, 0
		mov ebx, vector_11[esi] 

		mov eax, sizeof vector_11
		mov ecx, 4
		mov edx, 0
		div ecx
		mov ecx, eax ; cantidad de elementos en el vector
		

		ciclo_calculo:
		mov eax, vector_11[esi]
		mov ebx, eax
		mul ebx 
		mov vector_11[esi], eax
		add esi, 4
		
		call writedec		
		print ","
		
		loop ciclo_calculo
		
		exit

	main11 ENDP
	
	END main11
