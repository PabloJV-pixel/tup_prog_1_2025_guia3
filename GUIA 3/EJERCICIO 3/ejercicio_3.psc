Proceso ejercicio_3
	
	Definir codigoLote, cantidadFallosLote, cantidadLotes, totalFallos, totalTornillos Como Entero;
	Definir i, maxFallos, minFallos, loteMaxFallos, loteMinFallos Como Entero;
	Definir medidaEsperada, medicion, error, mayorError, porcentajeFallosLote, porcentajeTotalFallos Como Real;
	
	cantidadLotes <- 0;
	totalFallos <- 0;
	totalTornillos <- 0;
	maxFallos <- -1;
	minFallos <- 11;
	
	Escribir "Ingrese el código del lote (0 para finalizar):";
	Leer codigoLote;
	
	Mientras codigoLote <> 0 Hacer
		
		Escribir "Ingrese la medida esperada del lote:";
		Leer medidaEsperada;
		
		mayorError <- 0;
		cantidadFallosLote <- 0;
		
		Para i <- 1 Hasta 10 Hacer
			
			Escribir "Ingrese la medición ", i, ":";
			Leer medicion;
			
			error <- Abs(medicion - medidaEsperada);
			
			Si error > mayorError Entonces
				mayorError <- error;
			FinSi;
			
			Si error > 0.01 Entonces
				cantidadFallosLote <- cantidadFallosLote + 1;
			FinSi;
			
		FinPara;
		
		porcentajeFallosLote <- cantidadFallosLote * 100 / 10;
		Escribir "Mayor error en el lote: ", mayorError;
		Escribir "Porcentaje de productos con fallas: ", porcentajeFallosLote, "%";
		
		totalFallos <- totalFallos + cantidadFallosLote;
		totalTornillos <- totalTornillos + 10;
		cantidadLotes <- cantidadLotes + 1;
		
		Si cantidadFallosLote > maxFallos Entonces
			maxFallos <- cantidadFallosLote;
			loteMaxFallos <- codigoLote;
		FinSi;
		
		Si cantidadFallosLote < minFallos Entonces
			minFallos <- cantidadFallosLote;
			loteMinFallos <- codigoLote;
		FinSi;
		
		Escribir "";
		Escribir "Ingrese el código del siguiente lote (0 para finalizar):";
		Leer codigoLote;
		
	FinMientras;
	
	porcentajeTotalFallos <- totalFallos * 100 / totalTornillos;
	
	Escribir "";
	Escribir "----- INFORME FINAL -----";
	Escribir "Cantidad de lotes procesados: ", cantidadLotes;
	Escribir "Porcentaje total de fallas: ", porcentajeTotalFallos, "%";
	Escribir "Lote con menor cantidad de fallas: ", loteMinFallos;
	Escribir "Lote con mayor cantidad de fallas: ", loteMaxFallos;
	
FinProceso
