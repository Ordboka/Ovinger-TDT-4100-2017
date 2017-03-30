package oving8;

import java.util.function.BinaryOperator;


public class Clerk implements Employee{
	
	private int taskCount;
	private Printer printer;
	
	public Clerk(Printer printer){
		this.printer = printer;
		this.taskCount = 0;
	}

	@Override
	public double doCalculations(BinaryOperator<Double> operation, double value1, double value2) {
		this.taskCount++;
		return operation.apply(value1, value2);
	}

	@Override
	public void printDocument(String document) {
		this.taskCount++;
		printer.printDocument(document, this);
	}

	@Override
	public int getTaskCount() {
		return taskCount;
	}

	@Override
	public int getResourceCount() {
		return 1;
	}
}
