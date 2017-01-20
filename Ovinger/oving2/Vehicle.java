package oving2;

public class Vehicle {
	
	private char vehicleType, fuelType;
	private String registrationNumber;
	
	private boolean legalRegistration(char vehicleType,char fuelType, String registrationNumber){
		boolean legal = true;
		if(vehicleType == 'M' &&  registrationNumber.length()!=6){
			legal = false;
		}else if(vehicleType == 'C' &&  registrationNumber.length()!=7)
		return legal;
	}
	
	
	public Vehicle(char vehicleType, char fuelType, String registrationNumber){
		if(legalRegistration(fuelType,registrationNumber)==true){
			this.vehicleType = vehicleType;
			this.fuelType = fuelType;
			this.registrationNumber = registrationNumber;
		}else{
			throw new IllegalArgumentException("Wrong registrationnumber compared to fueltype");
		}
	}
	public char getFuelType(){
		return fuelType;
	}
	public String getRegistrationNumber(){
		return registrationNumber;
	}
	public void setRegistrationNumber(String s){
		if(legalRegistration(fuelType,s)==true){
			this.registrationNumber = s;
		}else{
			throw new IllegalArgumentException("Wrong registrationnumber compared to fueltype");
		}
	}
	public char getVehicleType(){
		return vehicleType;
	}
	public static void main(String[] args) {
		Vehicle vehicle = new Vehicle('M', 'H', "HY1234");
	}
}
