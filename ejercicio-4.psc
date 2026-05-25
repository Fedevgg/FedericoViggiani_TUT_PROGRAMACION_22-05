//Ejercicio 4
//Desarrolle un algoritmo para analizar la economía semanal en base a
//	un vector (arreglo unidimensional) de 7 posiciones, donde cada índice
//	representa un día de la semana. El usuario debe cargar el gasto en
//	comida de cada día. El programa deberá calcular el promedio general
//	de gasto diario. Posteriormente, realice un segundo recorrido sobre el
//	vector para filtrar y mostrar en pantalla únicamente los días cuyos
//	gastos específicos hayan superado dicho promedio.


Algoritmo economiaSemanal
	Definir diasSemana Como Cadena 
	Definir indice Como Entero
	Definir gastoTotal Como Real
	Definir gastoPromedio Como Real
	Definir gastosPorDia como Real
	
	Dimensionar diasSemana[7]
	diasSemana[1] <- 'Lunes'
	diasSemana[2] <- 'Martes'
	diasSemana[3] <- 'Miercoles'
	diasSemana[4] <- 'Jueves'
	diasSemana[5] <- 'Viernes'
	diasSemana[6] <- 'Sabado'
	diasSemana[7] <- 'Domingo'
	
	gastoPromedio = 0.0
	gastoTotal = 0.0
	
	Dimensionar gastosPorDia[7]
	Para indice <- 1 Hasta 7 Con Paso 1 Hacer
		gastosPorDia[indice] = 0.0
	Fin para

	Para indice <- 1 Hasta 7 Con Paso 1 Hacer
		Escribir "Ingrese los gastos en comidas para el día ", diasSemana[indice]
		Leer gastosPorDia[indice]
		gastoTotal = gastoTotal + gastosPorDia[indice]
	Fin Para
	
	gastoPromedio = gastoTotal/7
	Escribir "Gastos totales: ", gastoTotal
	Escribir "Promedio de gastos: ", gastoPromedio
	Escribir "Dias en los que se gasto mas del promedio:"
	Para indice <- 1 Hasta 7 Con Paso 1 Hacer
		Si gastosPorDia[indice] > gastoPromedio
			Entonces 
			Escribir Sin Saltar "El día ", diasSemana[indice]
			Escribir Sin Saltar " Se gastaron $ ", gastosPorDia[indice]
			Escribir Sin Saltar '; habiendo superado el promedio por' 
			Escribir "$ ", gastosPorDia[indice] - gastoPromedio			
		FinSi
	FinPara
	
FinAlgoritmo
