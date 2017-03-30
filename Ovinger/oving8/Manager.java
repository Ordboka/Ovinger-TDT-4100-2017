package oving8;

import java.util.Collection;
import java.util.Random;
import java.util.function.BinaryOperator;

public class Manager implements Employee{
	
	private Collection<Employee> employees;
	private int taskCount;
	
	public Manager (Collection<Employee> employees){
		if(employees.isEmpty()){
			throw new IllegalArgumentException("A manager needs employees");
		}
		this.employees = employees;
		taskCount = 0;
	}
	
	
	@Override
	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
		taskCount++;
		return randomEmployee().doCalculations(operation, value1, value2);
	}

	@Override
	public void printDocument(String document) {
		taskCount++;
		randomEmployee().printDocument(document);
	}

	@Override
	public int getTaskCount() {
		return taskCount;
	}

	@Override
	public int getResourceCount() {
		int resourceCount = 1;
		for(Employee employee : employees){
			resourceCount+= employee.getResourceCount();
		}
		return resourceCount;
	}
	
	private Employee randomEmployee(){
		Random rnd = new Random();
		int i = rnd.nextInt(employees.size());
		return (Employee) employees.toArray()[i];
	}
	
}
