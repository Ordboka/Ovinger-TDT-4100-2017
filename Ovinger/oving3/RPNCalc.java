package oving3;

import java.util.ArrayList;

public class RPNCalc {
	
	private ArrayList<Double> stack = new ArrayList<Double>();
	
	public void push(double number){
		stack.add(number);
	}
	public double pop(){
		if(stack.isEmpty()==true){
			return Double.NaN;
		}
		return stack.remove(stack.size()-1);
	}
	public double peek(int index){
		if(stack.size()>index && index>=0){
		return stack.get(stack.size()-1-index);}
		else{
			return Double.NaN;
		}
	}
	public int getSize(){
		return stack.size();
	}
	public void performOperation(char operator){
		if(operator == '+'){
			push(pop()+pop());
		}else if(operator == '-'){
			push(-pop()+pop());
		}else if(operator == '*'){
			push(pop()*pop());
		}else if(operator == '/'){
			push((1/pop())*pop());
		}else if(operator == '~'){
			double num1 = pop();
			double num2 = pop();
			push(num1);
			push(num2);
		}
	}
	public static void main(String[] args) {
		RPNCalc calc = new RPNCalc();
		System.out.println(calc.pop());
	}
	
}
