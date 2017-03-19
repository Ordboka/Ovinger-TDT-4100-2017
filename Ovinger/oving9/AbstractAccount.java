package oving9;

public abstract class AbstractAccount {
	
	protected double balance;
	
	public AbstractAccount() {
		balance = 0;
	}
	
	public void deposit(double amount) {
		if(amount>0){
			balance+=amount;
		}else{
			throw new IllegalArgumentException("Illegal amount deposited, must be positive");
		}
	}
	
	public void withdraw(double amount){
		if(amount>0){
			internalWithdraw(amount);
		}else{
			throw new IllegalArgumentException("Illegal amount withdrawn, must be positive");
		}
	}
	public abstract void internalWithdraw(double amount);
	
	public double getBalance(){
		return balance;
	}
}
