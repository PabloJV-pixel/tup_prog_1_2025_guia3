Proceso ejercicio_7
	
	Definir cantidad, totalProductos Como Entero;
	Definir precioUnitario, subtotal, totalAPagar Como Real;
	
	totalProductos <- 0;
	totalAPagar <- 0;
	
	Escribir "Ingrese la cantidad del producto (0 para finalizar):";
	Leer cantidad;
	
	Mientras cantidad <> 0 Hacer
		
		Escribir "Ingrese el precio unitario:";
		Leer precioUnitario;
		
		subtotal <- cantidad * precioUnitario;
		totalAPagar <- totalAPagar + subtotal;
		totalProductos <- totalProductos + cantidad;
		
		Escribir "Subtotal por este producto: $", subtotal;
		
		Escribir "Ingrese la cantidad del siguiente producto (0 para finalizar):";
		Leer cantidad;
		
	FinMientras;
	
	Escribir "-------------------------------------------";
	Escribir "Total a pagar: $", totalAPagar;
	Escribir "Cantidad total de productos adquiridos: ", totalProductos;
	
FinProceso
