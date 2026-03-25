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
			if(monto>balanceTotal){
 			System.out.println("Fondos Insuficiente " );
				return;
			}
			balanceTotal= balanceTotal- (monto*1.05);

			System.out.println("Transferencia exitosa de: $" + monto);
	    } 
	  // atributos 
	    public void mostrarSaldo() { 
	        System.out.println("Saldo de " + titular + ": $" + balanceTotal); 
	    } 
	}

