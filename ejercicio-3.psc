//Ejercicio 3
//	Desarrolle un sistema automatizado de control de acceso para la
//	atracción extrema de un parque de diversiones. El programa debe
//	solicitar la estatura del cliente (en metros) y preguntar si posee un
//	pase VIP mediante una respuesta de texto (S/N). Utilizando
//	operadores lógicos, evalúe la autorización: un usuario puede ingresar
//	únicamente si mide más de 1.50 metros Y además cuenta con el pase
//	VIP habilitado. El resultado final debe ser un valor lógico (Verdadero o
//Falso).

Algoritmo usuarioEsValido
	Definir alturaCliente como Real
	Definir tienePaseVip como Caracter
	Definir esApto Como Logico
	
	esApto = Falso
	tienePaseVip = 'N'
	
	Escribir 'Ingrese su altura en metros, por ejemplo: 1.75'
	Leer alturaCliente
	Escribir 'Usted posee un pase VIP habilitado? (S/N)'
	Leer tienePaseVip
	
	Si alturaCliente > 1.50 Y tienePaseVip == 'S'
		Entonces esApto <- Verdadero
	FinSi
	Escribir esApto
	
FinAlgoritmo
