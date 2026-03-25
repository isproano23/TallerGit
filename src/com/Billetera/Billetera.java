package com.Billetera;

public class Billetera {
	 double balanceTotal; 
	 String moneda = "USD";
	 String titular; 
	 boolean cuentaActiva = true; 
	 
	    public Billetera(String titular, double saldoInicial) { 
	        this.titular = titular; 
	        this.balanceTotal = saldoInicial; 
	    } 
	 
	    public void transferir(double monto) { 
	        balanceTotal= balanceTotal- monto; 
	    } 
<<<<<<< HEAD
	  // atributos 
=======
	 // probar 
>>>>>>> 392d325f9cfad3c93fe4cf0f0486ffa80dae80d1
	    public void mostrarSaldo() { 
	        System.out.println("Saldo de " + titular + ": $" + balanceTotal); 
	    } 
	}

