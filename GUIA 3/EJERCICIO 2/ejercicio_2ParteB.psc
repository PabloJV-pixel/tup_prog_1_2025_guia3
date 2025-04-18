Proceso ejercicio_2ParteB
	
	Definir nombre, cancionMayor, cancionMenor Como Cadena;
	Definir duracionMin, duracionSeg, duracionTotalSeg, duracionCancion Como Entero;
	Definir mayorDuracion, menorDuracion Como Entero;
	Definir totalHoras, totalMinutos, totalSegundos Como Entero;
	
	duracionTotalSeg <- 0;
	mayorDuracion <- -1;
	menorDuracion <- 99999;
	
	Mientras duracionTotalSeg < 4440 Hacer
		
		Escribir "Ingrese el nombre de la canci�n:";
		Leer nombre;
		
		Escribir "Ingrese minutos de duraci�n:";
		Leer duracionMin;
		
		Escribir "Ingrese segundos de duraci�n:";
		Leer duracionSeg;
		
		duracionCancion <- duracionMin * 60 + duracionSeg;
		
		Si duracionTotalSeg + duracionCancion > 4440 Entonces
			Escribir "No se puede agregar esta canci�n, superar�a los 74 minutos.";
		FinSi;
		
		duracionTotalSeg <- duracionTotalSeg + duracionCancion;
		
		Si duracionCancion > mayorDuracion Entonces
			mayorDuracion <- duracionCancion;
			cancionMayor <- nombre;
		FinSi;
		
		Si duracionCancion < menorDuracion Entonces
			menorDuracion <- duracionCancion;
			cancionMenor <- nombre;
		FinSi;
		
	FinMientras;
	
	totalHoras <- trunc(duracionTotalSeg / 3600);
	totalMinutos <- trunc((duracionTotalSeg % 3600) / 60);
	totalSegundos <- duracionTotalSeg % 60;
	
	Escribir "Duraci�n total: ", totalHoras, ":", totalMinutos, ":", totalSegundos;
	Escribir "Canci�n m�s larga: ", cancionMayor;
	Escribir "Canci�n m�s corta: ", cancionMenor;
	
FinProceso
