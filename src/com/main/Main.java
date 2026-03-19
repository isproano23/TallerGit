package com.main;

import com.Billetera.Billetera;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	    Billetera miBilletera = new Billetera("Juan Perez", 100.0); 
	    miBilletera.mostrarSaldo(); 
	    miBilletera.transferir(20.0); 
	    miBilletera.mostrarSaldo(); 
	    } 
	    } 
