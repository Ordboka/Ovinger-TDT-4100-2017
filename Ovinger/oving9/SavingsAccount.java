package oving9;

public class SavingsAccount implements Account{

	double balance;
	double interest;
	
	public SavingsAccount(double interest) {
		this.interest = interest;
		this.balance = 0;
	}
	
	@Override
	public void deposit(double amount) {
		if(amount>0){
			balance+=amount;
		}else{
			throw new IllegalArgumentException("Illegal amount deposited, must be positive");
		}
	}

	@Override
	public void withdraw(double amount) {
		if(amount>0){
			if(amount<=balance){
				balance-=amount;
			}else{
				throw new IllegalStateException("Balance can't be negative");
			}
		}else{
			throw new IllegalArgumentException("Illegal amount withdrawn, must be positive");
		}
	}

	@Override
	public double getBalance() {
		return balance;
	}
	
	public void endYearUpdate(){
		balance += balance*interest;
	}
}
