//	Ejercicio 7
//	Desarrolle un programa que act�e como un traductor de
//	calificaciones. El usuario deber� ingresar una letra que represente la
//	nota final del alumno (A, B, C, D o F). Utilizando la estructura de control
//	alternativa m�ltiple (Segun), el sistema debe procesar la opci�n tanto
//			en may�sculas como en min�sculas y devolver un mensaje
//		descriptivo personalizado sobre el rendimiento del estudiante (ej:
//			"Excelente", "Insuficiente", "Reprobado").
Algoritmo ejercicio_7
	Definir evalue_next Como Logico
	Definir user_input Como Caracter
	evalue_next = Verdadero
	Repetir
		Escribir 'Ingrese su calificaci�n (solo una letra)'
		Leer user_input
		Segun user_input Hacer
			Caso 'A', 'B', 'a', 'b': Escribir 'Excelente'
			Caso 'C', 'D', 'c', 'd': Escribir 'Insuficiente'
			Caso 'F', 'f': Escribir 'Reprobado'
		FinSegun
		Escribir 'Evaluar otro? (Y/N)'
		Leer user_input
		Si user_input = 'Y' 
			Entonces evalue_next = Verdadero
		Sino
			evalue_next = Falso
			Escribir 'Gracias vuelvas prontos'
		FinSi
		user_input = ' '
	Hasta Que evalue_next = Falso

FinAlgoritmo
