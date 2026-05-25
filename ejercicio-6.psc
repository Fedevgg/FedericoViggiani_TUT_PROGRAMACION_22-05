//Ejercicio 6
//Desarrolle un algoritmo gráfico por consola utilizando estructuras
//	repetitivas anidadas. El programa debe pedir al usuario que introduzca
//	un número entero que represente la longitud del lado de un cuadrado.
//	Utilizando bucles para filas y columnas, dibuje en pantalla un cuadrado
//		relleno con caracteres de asteriscos ( * ), asegurando el correcto salto
//		de línea al finalizar cada fila.

Algoritmo cuadradosASCII
	Definir lado, horizontal, vertical Como Entero
	Escribir "Ingrese la longitud del lado del cuadrado a dibujar, debe ser un numero entero"
	Leer lado
	
	Para vertical <- lado Con Paso -1 Hasta 1
		Para horizontal <- 1 Con Paso 1 Hasta lado
			Si horizontal = 1
				Entonces Escribir Sin Saltar '* '
			FinSi
			Si horizontal > 1 Y horizontal < lado
				Entonces Escribir Sin Saltar ' * '
			FinSi
			Si horizontal = lado
				Entonces Escribir ' *'
			FinSi
		FinPara
	FinPara
	
	
FinAlgoritmo
