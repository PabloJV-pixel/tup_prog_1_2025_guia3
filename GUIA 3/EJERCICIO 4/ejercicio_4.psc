Proceso ejercicio_4
	
	Definir numero, i Como Entero;
	Definir Primo Como Logico;
	
	Escribir "Ingrese un número entero positivo:";
	Leer numero;
	
	Si numero <= 1 Entonces
		Escribir "El número no es primo.";
	Sino
		
		Primo <- Verdadero;
		
		Para i <- 2 Hasta numero - 1 Hacer
			Si numero % i = 0 Entonces
				Primo <- Falso;
			FinSi;
		FinPara;
		
		Si Primo Entonces
			Escribir "El número ", numero, " es primo.";
		Sino
			Escribir "El número ", numero, " no es primo.";
		FinSi;
		
	FinSi;
	
FinProceso