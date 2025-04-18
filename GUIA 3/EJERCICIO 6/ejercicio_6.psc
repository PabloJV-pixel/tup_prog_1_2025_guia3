Proceso ejercicio_6
	
	Definir nota, cantidadNotas, sumaNotas Como Entero;
	Definir aprobados, desaprobados, muyBuenos, buenos, regulares, insuficientes Como Entero;
	Definir promedio, pMuyBuenos, peBuenos, pRegulares, pInsuficientes Como Real;
	
	cantidadNotas <- 0;
	sumaNotas <- 0;
	aprobados <- 0;
	desaprobados <- 0;
	muyBuenos <- 0;
	buenos <- 0;
	regulares <- 0;
	insuficientes <- 0;
	
	Escribir "Ingrese notas entre 0 y 10 (ingrese -1 para terminar):";
	Leer nota;
	
	Mientras nota <> -1 Hacer
		
		Si nota >= 0 Y nota <= 10 Entonces
			
			cantidadNotas <- cantidadNotas + 1;
			sumaNotas <- sumaNotas + nota;
			
			Si nota >= 4 Entonces
				aprobados <- aprobados + 1;
			Sino
				desaprobados <- desaprobados + 1;
			FinSi;
			
			Si nota >= 8 Entonces
				muyBuenos <- muyBuenos + 1;
			Sino
				Si nota >= 6 Entonces
					buenos <- buenos + 1;
				Sino
					Si nota >= 4 Entonces
						regulares <- regulares + 1;
					Sino
						insuficientes <- insuficientes + 1;
					FinSi;
				FinSi;
			FinSi;
			
		Sino
			Escribir "Nota inválida. Ingrese un valor entre 0 y 10 o -1 para finalizar.";
		FinSi;
		
		Leer nota;
		
	FinMientras;
	
	Si cantidadNotas > 0 Entonces
		
		promedio <- sumaNotas / cantidadNotas;
		
		pMuyBuenos <- muyBuenos * 100 / cantidadNotas;
		pBuenos <- buenos * 100 / cantidadNotas;
		pRegulares <- regulares * 100 / cantidadNotas;
		pInsuficientes <- insuficientes * 100 / cantidadNotas;
		
		Escribir "Cantidad de notas ingresadas: ", cantidadNotas;
		Escribir "Promedio: ", promedio;
		Escribir "Cantidad de aprobados: ", aprobados;
		Escribir "Cantidad de desaprobados: ", desaprobados;
		Escribir "Porcentaje Muy Buenos (8 o más): ", pMuyBuenos, "%";
		Escribir "Porcentaje Buenos (6 o 7): ", pBuenos, "%";
		Escribir "Porcentaje Regulares (4 o 5): ", pRegulares, "%";
		Escribir "Porcentaje Insuficientes (3 o menos): ", pInsuficientes, "%";
		
	Sino
		
		Escribir "No se ingresaron notas válidas.";
		
	FinSi;
	
FinProceso
