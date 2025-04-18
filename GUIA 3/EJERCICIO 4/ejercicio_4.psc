Proceso ejercicio_4
	
	Definir numero, i Como Entero;
	Definir Primo Como Logico;
	
	Escribir "Ingrese un n�mero entero positivo:";
	Leer numero;
	
	Si numero <= 1 Entonces
		Escribir "El n�mero no es primo.";
	Sino
		
		Primo <- Verdadero;
		
		Para i <- 2 Hasta numero - 1 Hacer
			Si numero % i = 0 Entonces
				Primo <- Falso;
			FinSi;
		FinPara;
		
		Si Primo Entonces
			Escribir "El n�mero ", numero, " es primo.";
		Sino
			Escribir "El n�mero ", numero, " no es primo.";
		FinSi;
		
	FinSi;
	
FinProceso