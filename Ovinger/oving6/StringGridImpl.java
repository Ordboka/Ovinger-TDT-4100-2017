package oving6;

import java.util.ArrayList;
import java.util.Iterator;

public class StringGridImpl implements StringGrid{
	ArrayList<ArrayList<String>> stringList = new ArrayList<>();
	int rows, columnCount;
	public StringGridImpl(int rows, int columnCount){
		this.rows = rows;
		this.columnCount = columnCount;
		ArrayList<String> tempArray = new ArrayList<String>();
		for(int i = 0; i<columnCount;i++){
			tempArray.add("");
		}
		for(int i = 0; i<rows;i++){
			stringList.add((ArrayList<String>) tempArray.clone());
		}
	}
	
	@Override
	public int getRowCount() {
		// TODO Auto-generated method stub
		return rows;
	}

	@Override
	public int getColumnCount() {
		// TODO Auto-generated method stub
		return columnCount;
	}

	@Override
	public String getElement(int row, int column) {
		// TODO Auto-generated method stub
		return stringList.get(row).get(column);
	}

	@Override
	public void setElement(int row, int column, String element) {
		// TODO Auto-generated method stub
		ArrayList<String> tempArray = stringList.get(row);
		tempArray.set(column, element);
		stringList.set(row, tempArray);
	}
	public static void main(String[] args) {
		StringGridImpl test = new StringGridImpl(2, 3);
		test.setElement(0, 0, "0,0");
		test.setElement(0, 1, "0,1");
		test.setElement(0, 2, "0, 2");
		test.setElement(1, 0, "1, 0");
		test.setElement(1, 1, "1,1");
		test.setElement(1, 2, "1, 2");
		StringGridIterator testIt = new StringGridIterator(test,true);
		System.out.println(testIt.hasNext());
		System.out.println(testIt.next());
		System.out.println(testIt.hasNext());
		System.out.println(testIt.next());
		System.out.println(testIt.hasNext());
		System.out.println(testIt.next());
		System.out.println(testIt.hasNext());
		System.out.println(testIt.next());
		System.out.println(testIt.hasNext());
		System.out.println(testIt.next());
		System.out.println(testIt.hasNext());
		System.out.println(testIt.next());
		System.out.println(testIt.hasNext());
		System.out.println(testIt.next());
	}
}
