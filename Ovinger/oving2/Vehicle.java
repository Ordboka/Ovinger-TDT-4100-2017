package oving2;

public class Vehicle {
	
	private char vehicleType, fuelType;
	private String registrationNumber;
	
	private boolean legalRegistration(char vehicleType,char fuelType, String registrationNumber){
		boolean legal = true;
		if(!(vehicleType=='M' || vehicleType=='C')){
			legal = false;
		}
		if(!(fuelType=='H' || fuelType=='E'|| fuelType=='D'|| fuelType=='G')){
			legal = false;
		}
		if(!(registrationNumber.substring(0,2).matches("[A-Z]+"))){
			legal = false;
		}
		if(Character.isDigit(registrationNumber.charAt(2))==false){
			legal = false;
		}
		if(vehicleType == 'M' &&  registrationNumber.length()!=6){
			legal = false;
		}else if(vehicleType == 'C' &&  registrationNumber.length()!=7){
			legal = false;
		}
		if(fuelType == 'E'){
			if(!(registrationNumber.startsWith("EL")||registrationNumber.startsWith("EK"))){
				legal = false;
			}
		}else if(fuelType == 'H'){
			if(registrationNumber.startsWith("HY")==false){
				legal = false;
			}else if(vehicleType=='M'){
				legal = false;
			}
		}
		if(registrationNumber.startsWith("EL")||registrationNumber.startsWith("EK")){
			if(fuelType!='E'){
				legal = false;
			}
		}
		if(registrationNumber.startsWith("HY")){
			if(fuelType!='H'){
				legal = false;
			}
		}
		return legal;
	}
	
	
	public Vehicle(char vehicleType, char fuelType, String registrationNumber){
		if(legalRegistration(vehicleType,fuelType,registrationNumber)==true){
			this.vehicleType = vehicleType;
			this.fuelType = fuelType;
			this.registrationNumber = registrationNumber;
		}else{
			throw new IllegalArgumentException("Wrong registration number compared to fueltype");
		}
	}
	public char getFuelType(){
		return fuelType;
	}
	public String getRegistrationNumber(){
		return registrationNumber;
	}
	public void setRegistrationNumber(String s){
		if(legalRegistration(vehicleType,fuelType,s)==true){
			this.registrationNumber = s;
		}else{
			throw new IllegalArgumentException("Wrong registration number compared to fueltype");
		}
	}
	public char getVehicleType(){
		return vehicleType;
	}
	public static void main(String[] args) {
		Vehicle vehicle = new Vehicle('M', 'H', "HY1234");
	}
}
