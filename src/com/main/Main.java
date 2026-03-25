package com.main;

import com.Billetera.Billetera;

public class Main {

	public static void main(String[] args) {
	

	    Billetera miBilletera = new Billetera("Juan Perez", 100.0); 
	    miBilletera.mostrarSaldo(); 
	    miBilletera.transferir(20.0); 
		miBilletera.transferir(40.0); 
		miBilletera.transferir(60.0); 
	    miBilletera.mostrarSaldo(); 
	    } 
	    } 
