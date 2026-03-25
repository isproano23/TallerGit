package com.main;

import com.Billetera.Billetera;

public class Main {

	public static void main(String[] args) {
	

	    Billetera miBilletera = new Billetera("Juan Perez", 100.0); 
	    miBilletera.mostrarSaldo(); 
	    miBilletera.transferir(20.0); 
	    miBilletera.mostrarSaldo(); 

		Billetera billetera2 = new Billetera("Maria Lopez", 500.0);
        billetera2.mostrarSaldo();

        miBilletera.mostrarSaldo();

	    } 
	    } 
