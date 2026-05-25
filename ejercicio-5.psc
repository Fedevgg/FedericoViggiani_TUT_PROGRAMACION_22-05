//Ejercicio 5
//Desarrolle una herramienta financiera de conversión de moneda
//extranjera en paralelo. El sistema debe solicitar al usuario una
//cantidad de dinero base en pesos locales, seguido de la cotización
//actual del Dólar estadounidense y del Euro en el mercado del día. El
//algoritmo debe calcular de forma secuencial y mostrar
//	simultáneamente a cuántos dólares y a cuantos euros equivale el
//	monto inicial de pesos que se ingresado.

Algoritmo conversorPesoEuroUSD
	Definir montoARS, pesoUSD, pesoEuro Como Real
	Definir continuar Como Caracter
	
	pesoUSD = 0.00071
	pesoEuro = 0.00061
	continuar = 'S'
	montoARS = 1
	
	Escribir "Cotizaciones a la fecha:"
	Escribir "1 ARS = ", pesoUSD, " USD |-| 1 USD = ", Redon((1/(montoARS*pesoUSD))*100)/100
	Escribir "1 ARS = ", pesoEuro, " EUR |-| 1 EUR = ", Redon((1/(montoARS*pesoEuro))*100)/100
	Repetir
		Escribir "Ingrese un monto en ARS a convertir a USD y EUR"
		Leer montoARS
		Escribir "Monto en USD: ", Redon(montoARS*pesoUSD*100)/100, " |-| Monto en EUR: ", Redon(montoARS*pesoEuro*100)/100
		Escribir "Desea calcular otro? (S/N)"
		Leer continuar
	Hasta Que continuar <> 'S'
	
FinAlgoritmo
