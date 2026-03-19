package com.Billetera;

public class Billetera {
	 double saldo; 
	    String titular; 
	 
	    public Billetera(String titular, double saldoInicial) { 
	        this.titular = titular; 
	        this.saldo = saldoInicial; 
	    } 
	 
	    public void transferir(double monto) { 
	        saldo = saldo - monto; 
	    } 
	 
	    public void mostrarSaldo() { 
	        System.out.println("Saldo de " + titular + ": $" + saldo); 
	    } 
	}

