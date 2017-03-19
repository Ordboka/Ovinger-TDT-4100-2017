package oving9;

public class ForeldreSpar extends SavingsAccount{

	private int maxWithdrawals;
	private int usedWithdrawals;

	public ForeldreSpar(double interest, int maxWithdrawals) {
		super(interest);
		this.maxWithdrawals = maxWithdrawals;
		usedWithdrawals = 0;
	}
	
	public void withdraw(double amount){
		if(getRemainingWithdrawals()!=0){
			super.withdraw(amount);
		}else{
			throw new IllegalStateException("All withdraws used up");
		}
		usedWithdrawals++;
	}
	
	public void endYearUpdate(){
		super.endYearUpdate();
		usedWithdrawals=0;
	}
	
	public int getRemainingWithdrawals(){
		return maxWithdrawals-usedWithdrawals;
	}
	
}
