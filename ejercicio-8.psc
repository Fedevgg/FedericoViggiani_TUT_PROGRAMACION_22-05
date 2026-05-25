Algoritmo ejercicio_8
	//
	//  Ejercicio 8
	//  Desarrolle un módulo de seguridad para el registro de nuevos usuarios
	//	en una plataforma. El sistema debe solicitar obligatoriamente un
	//	nombre de usuario y una contraseña. Empleando un bucle de control
	//	que evalúa al final del ciclo, obligando al usuario a repetir la carga de
	//	datos de manera indefinida hasta que se cumplan estrictamente las
	//	dos condiciones de longitud:
	//		- El nombre de usuario debe poseer un mínimo de 4 caracteres
	//		- La clave debe tener exactamente 6 caracteres.
	//		- Despliegue mensajes de error específicos si alguna de las dos
	//			condiciones falla
	//
	Definir username como Cadena 
	Definir username_isvalid como Logico 
	Definir password como Cadena
	Definir password_isvalid como Logico
	Definir messaje como Cadena
	
	Repetir		
		username_isvalid = password_isvalid = Falso
		messaje = ' '
		
		Escribir "Ingresa un nombre de usuario: " 
		Leer username
		Escribir "Ingresa una contraseña: "
		Leer password
		
		Si Longitud(username ) < 4
			Entonces 
				messaje = messaje + 'El nombre de usuario debe tener 4 caracteres, '
				username_isvalid = Falso
		Sino
			username_isvalid = Verdadero
		FinSi
		
		Si Longitud(password) <> 6 
			Entonces 
				password_isvalid = Falso
				messaje = messaje +  'La contraseña debe tener exactamente 6 caracteres, '
			Sino password_isvalid = Verdadero
		FinSi
		Escribir messaje
	Hasta Que username_isvalid = Verdadero Y password_isvalid = Verdadero

FinAlgoritmo
