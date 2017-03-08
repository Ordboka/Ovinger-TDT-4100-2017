package oving8;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class Printer {
	
	HashMap<Employee,List<String>> history = new HashMap<>();
	
	public void printDocument(String document, Employee employee){
		if(history.containsKey(employee)){
			List<String> historyList = history.get(employee);
			historyList.add(document);
			history.put(employee, historyList);
		}else{
			List<String> historyList = new ArrayList<>();
			historyList.add(document);
			history.put(employee, historyList);
		}
		System.out.println(document);
	}
	public List<String> getPrintHistory(Employee employee){
		if(history.containsKey(employee)){
			return history.get(employee);
		}else{
			return new ArrayList();
		}
	}
	public static void main(String[] args) {
		Printer printer = new Printer();
		Clerk brede = new Clerk(printer);
		printer.printDocument("Test1", brede);
		System.out.println(printer.getPrintHistory(brede));
		printer.printDocument("Test2", brede);
		System.out.println(printer.getPrintHistory(brede));
	}
}
