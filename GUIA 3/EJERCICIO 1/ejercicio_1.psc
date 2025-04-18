Proceso sin_titulo
	Definir i, Num, SumaIm, CImpares, CPares Como Entero;
    Definir mayor, menor Como Entero;
    Definir ProImpares Como Real;
	SumaIm <- 0;
    CImpares <- 0;
    CPares <- 0;
	
	Escribir "Ingresar el premio 1";
	leer Num;
	
	mayor = Num;
	menor = Num;
	si Num mod 2 == 0 Entonces
		CImpares <- 1;
	Sino
        SumaIm <- Num;
        CImpares <- 1;
	FinSi
	Para i <- 2 Hasta 20 Hacer
        Escribir "Ingrese el premio ", i, ": ";
        Leer Num;
        Si Num > mayor Entonces
            mayor <- Num;
		FinSi; 
		si Num < menor Entonces
			menor <- Num;
		FinSi
        Si Num MOD 2 == 0 Entonces
            CPares <- CPares + 1;
        Sino
            SumaIm <- SumaIm + Num;
            CImpares <- CImpares + 1;
        FinSi;
    FinPara;
	si CImpares > 0 Entonces
		ProImpares <- trunc (SumaIm / CImpares);
	SiNo
		CImpares <- 0;
	FinSi
	Escribir "El número mayor es: ", mayor;
    Escribir "El número menor es: ", menor;
    Escribir "Cantidad de números pares: ", CPares;
    Escribir "Promedio de números impares: ", ProImpares;
FinProceso