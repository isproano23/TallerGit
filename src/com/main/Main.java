package com.main;

import com.Billetera.Billetera;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

	    Billetera miBilletera = new Billetera("Juan Perez", 100.0); 
	    miBilletera.mostrarSaldo(); 

		//preguntar cuanto transferir
		System.out.println("¿Cuánto desea transferir? ");
		double monto = scanner.nextDouble();

	    miBilletera.transferir(monto); 
	    miBilletera.mostrarSaldo(); 
		 scanner.close();
	    } 
	    } 
