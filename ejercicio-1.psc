//Ejercicio 1
//Desarrolle un programa para registrar las ventas diarias de un
//	comercio. El usuario deberá ingresar el monto de cada venta de forma
//	sucesiva. El programa debe continuar solicitando montos hasta que
//	se ingrese una venta igual a cero (0), lo cual indicará el cierre de la
//	caja. Al finalizar, el sistema debe mostrar en pantalla la cantidad total
//  de ventas procesadas y el dinero total acumulado. Restricción: Evite
//	que se sumen montos negativos mostrando un mensaje de
//	advertencia

Algoritmo regristroVentas
	Definir indice Como Entero
	Definir monto, total como Real
	//Definir listaMontos Como Real
	Dimension listaMontos[100]
	Escribir 'Iniciando herramienta para calcular el total de las ventas del día'
	Escribir '-Ingrese 0 (cero) para salir-'
	indice = 1
	total = 0
	monto = -1
	Repetir
		Escribir 'Ingrese un monto numérico positivo o cero para salir'
		Leer monto
		Si monto < 0 Entonces
			Repetir
				Escribir 'El sistema solo procesa ventas, ingrese montos positivos o cero para salir'
				Leer monto
			Hasta Que monto >= 0
		FinSi
		Si monto >0 Entonces
			listaMontos[indice] <- monto
			indice = indice+1
		FinSi
		Escribir "Ventas procesadas:"
		Escribir (indice-1)
	Hasta Que monto = 0
	Para i <- 1 Hasta indice-1 con Paso 1 Hacer
		total = total + listaMontos[i]
	FinPara
	Escribir "Monto total de las ventas"
	Escribir total
	
FinAlgoritmo
