//Ejercicio 2
//Desarrolle un simulador de ticket de compra básico. El programa debe
//solicitar al usuario el precio unitario de un producto (número real) y la
//cantidad de unidades compradas (número entero). A partir de estos
//datos, debe calcular el subtotal. Luego, aplique de forma automática el
//impuesto al valor agregado (IVA) del 21% para obtener el total neto a
//	abonar. Muestra el desglose final detallado en pantalla utilizando
//	delimitadores de texto adecuados

Algoritmo ejercicio_2
	Definir precioProducto, subtotal, total, totalConIva Como Real
	Definir cantidadProducto, indice Como Entero
	Definir item, agregarOtro Como Cadena
	Dimension listaProducto[100]
	
	agregarOtro <- "S"
	indice <- 1
	total <- 0
	
	Repetir
		Escribir "Procesando producto ", indice
		Escribir "Ingrese cantidad de unidades:"
		Leer cantidadProducto
		Escribir "Ingrese precio unitario del producto:"
		Leer precioProducto
		
		subtotal <- cantidadProducto * precioProducto
		
		item <- ConvertirATexto(cantidadProducto) + " u x $" + ConvertirATexto(precioProducto) + " = $" + ConvertirATexto(subtotal)
		listaProducto[indice] <- item
		
		total <- total + subtotal
		indice <- indice + 1
		
		Escribir "¿Agregar otro producto? (S/N)"
		Leer agregarOtro
	Hasta Que agregarOtro = "N"
	
	totalConIva <- total * 1.21
	
	Escribir "========== TICKET =========="
	Para i <- 1 Hasta indice-1 Hacer
		Escribir listaProducto[i]
	FinPara
	Escribir "----------------------------"
	Escribir "Subtotal:  $", total
	Escribir "IVA 21%:   $", total * 0.21
	Escribir "----------------------------"
	Escribir "TOTAL:     $", totalConIva
	Escribir "============================"
	
FinAlgoritmo
