Proceso ejercicio_2ParteA
	
	Definir nombre, cancionMayor, cancionMenor Como Cadena;
	Definir duracionMin, duracionSeg, duracionTotalSeg, duracionCancion Como Entero;
	Definir mayorDuracion, menorDuracion Como Entero;
	Definir totalHoras, totalMinutos, totalSegundos Como Entero;
	Definir seguir Como Logico;
	
	duracionTotalSeg <- 0;
	mayorDuracion <- -1;
	menorDuracion <- 99999;
	seguir <- Verdadero;
	
	Mientras seguir = Verdadero Hacer
		
		Escribir "Ingrese el nombre de la canción:";
		Leer nombre;
		
		Escribir "Ingrese minutos de duración:";
		Leer duracionMin;
		
		Escribir "Ingrese segundos de duración:";
		Leer duracionSeg;
		
		duracionCancion <- duracionMin * 60 + duracionSeg;
		duracionTotalSeg <- duracionTotalSeg + duracionCancion;
		
		Si duracionCancion > mayorDuracion Entonces
			mayorDuracion <- duracionCancion;
			cancionMayor <- nombre;
		FinSi;
		
		Si duracionCancion < menorDuracion Entonces
			menorDuracion <- duracionCancion;
			cancionMenor <- nombre;
		FinSi;
		
		Escribir "¿Desea ingresar otra canción? (VERDADERO/FALSO):";
		Leer seguir;
		
	FinMientras;
	
	totalHoras <- trunc(duracionTotalSeg / 3600);
	totalMinutos <- trunc((duracionTotalSeg % 3600) / 60);
	totalSegundos <- duracionTotalSeg % 60;
	
	Escribir "Duración total: ", totalHoras, ":", totalMinutos, ":", totalSegundos;
	Escribir "Canción más larga: ", cancionMayor;
	Escribir "Canción más corta: ", cancionMenor;
	
FinProceso
