package oving9;

public class BSU extends SavingsAccount{

	double maxAmount;
	double yearlyAmount;
	
	public BSU(double interest, double maxAmount) {
		super(interest);
		this.maxAmount = maxAmount;
		yearlyAmount = 0;
	}
	
	public void deposit(double amount){
		if((amount+yearlyAmount)<maxAmount){
			super.deposit(amount);
		}else{
			throw new IllegalStateException("The yearly amount is above the limit");
		}
		yearlyAmount+=amount;
	}
	
	public void withdraw(double amount){
		if(amount<yearlyAmount){
			super.withdraw(amount);
		}else{
			throw new IllegalStateException("Not enough money put in this year");
		}
	}
	
	public void endYearUpdate(){
		super.endYearUpdate();
		yearlyAmount = 0;
	}
	
	public double getTaxDeduction(){
		return yearlyAmount*0.2;
	}
}
