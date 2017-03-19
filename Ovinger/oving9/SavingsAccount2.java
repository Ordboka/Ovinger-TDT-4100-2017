package oving9;

public class SavingsAccount2 extends AbstractAccount{
	
	int with;
	double fee;
	
	public SavingsAccount2(int with, double fee) {
		this.with = with;
		this.fee = fee;
	}
	
	@Override
	public void internalWithdraw(double amount) {
		if(with<=0){
			if(fee+amount<balance){
				balance-=fee+amount;
			}else{
				throw new IllegalStateException();
			}
		}else{
			if(amount<balance){
				balance-=amount;
				with--;
			}else{
				throw new IllegalStateException();
			}
		}
	}

}
