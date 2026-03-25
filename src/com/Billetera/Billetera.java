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
	 // probando 
	    public void transferir(double monto) { 
	        balanceTotal= balanceTotal- monto; 
	    } 
	  // atributos 
	    public void mostrarSaldo() { 
	        System.out.println("Saldo de " + titular + ": $" + balanceTotal); 
	    } 
	}

