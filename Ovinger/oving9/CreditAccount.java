package oving9;

public class CreditAccount extends AbstractAccount{
	private double creditLine;
	
	public CreditAccount(double creditLine) {
		super();
		if(creditLine>=0){
			this.creditLine = creditLine;			
		}else{
			throw new IllegalArgumentException();
		}
	}
	
	@Override
	public void internalWithdraw(double amount) {
		if(amount<=balance+creditLine){
			balance-=amount;
		}else{
			throw new IllegalStateException();
		}
	}
	public double getCreditLine() {
		return creditLine;
	}
	public void setCreditLine(double creditLine) {
		if(creditLine>=0){
			if(balance+creditLine>=0){
				this.creditLine = creditLine;				
			}else{
				throw new IllegalStateException();
			}
		}else{
			throw new IllegalArgumentException("Invalid");
		}
	}
	
}
