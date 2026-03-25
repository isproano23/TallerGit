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
	 // probar 
=======
	  // atributos
>>>>>>> 7c915cbf8151a3f12c4015f7b617abe1de4800a9
	    public void mostrarSaldo() { 
	        System.out.println("Saldo de " + titular + ": $" + balanceTotal); 
	    } 
	}

