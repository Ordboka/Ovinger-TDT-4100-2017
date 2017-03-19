package oving9;

public class DebitAccount extends AbstractAccount{

	@Override
	public void internalWithdraw(double amount) {
		if(balance>amount){
			balance-=amount;
		}else{
			throw new IllegalStateException("Withdrawing more than your balance");
		}
	}
	
}
