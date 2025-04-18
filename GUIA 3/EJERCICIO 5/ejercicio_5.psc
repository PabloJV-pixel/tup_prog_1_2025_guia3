Proceso ejercicio_5
		
		Definir inicio, finRango, menor, mayor, i, j Como Entero;
		Definir Primo Como Logico;
		
		Escribir "Ingrese el primer número del rango:";
		Leer inicio;
		
		Escribir "Ingrese el segundo número del rango:";
		Leer finRango;
		
		// Determinar cuál es el menor y cuál es el mayor
		Si inicio < finRango Entonces
			menor <- inicio;
			mayor <- finRango;
		Sino
			menor <- finRango;
			mayor <- inicio;
		FinSi;
		
		Escribir "Números primos en el rango ", menor, " a ", mayor, ":";
		
		Para i <- menor Hasta mayor Hacer
			
			Si i > 1 Entonces
				Primo <- Verdadero;
				
				Para j <- 2 Hasta i - 1 Hacer
					Si i % j = 0 Entonces
						Primo <- Falso;
					FinSi;
				FinPara;
				
				Si Primo Entonces
					Escribir i;
				FinSi;
			FinSi;
			
		FinPara;
		
FinProceso
