package oving1.account;

public class Account {
	double balance = 0;
	double interestRate = 0;
	
	void deposit(double amount){
		if(amount>0){
			balance+=amount;
		}
	}
	void addInterest(){
		balance = balance*(1+interestRate/100);
	}
	double getBalance(){
		return balance;
	}
	double getInterestRate(){
		return interestRate;
	}
	void setInterestRate(double interestRate){
		this.interestRate = interestRate;
	}
}
