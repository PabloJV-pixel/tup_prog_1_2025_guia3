Proceso ejercicio_5
		
		Definir inicio, finRango, menor, mayor, i, j Como Entero;
		Definir Primo Como Logico;
		
		Escribir "Ingrese el primer n�mero del rango:";
		Leer inicio;
		
		Escribir "Ingrese el segundo n�mero del rango:";
		Leer finRango;
		
		// Determinar cu�l es el menor y cu�l es el mayor
		Si inicio < finRango Entonces
			menor <- inicio;
			mayor <- finRango;
		Sino
			menor <- finRango;
			mayor <- inicio;
		FinSi;
		
		Escribir "N�meros primos en el rango ", menor, " a ", mayor, ":";
		
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
