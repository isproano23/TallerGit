package com.Billetera;

public class Billetera {
	 double blanceTotal; 
	 String titular; 
	 
	    public Billetera(String titular, double balanceTotal) { 
	        this.titular = titular; 
	        this.balance = balanceTotal; 
	    } 
	 
	    public void transferir(double monto) { 
	        balanceTotal= blance- monto; 
	    } 
	 
	    public void mostrarSaldo() { 
	        System.out.println("Saldo de " + titular + ": $" + balanceTotal); 
	    } 
	}

