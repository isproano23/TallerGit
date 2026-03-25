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
	 // probar 
	    public void mostrarSaldo() { 
	        System.out.println("Saldo de " + titular + ": $" + balanceTotal); 
	    } 
	}

