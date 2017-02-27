package oving6;

import java.util.Iterator;

public class StringGridIterator implements Iterator<String>{
	boolean rowMajor;//angir om iterasjonen skal være bortover først (rowMajor=true) eller nedover først (rowMajor=false).
	StringGrid grid;
	int rowCount = 0, columnCount = 0;
	
	public StringGridIterator(StringGrid grid, boolean rowMajor) {
		this.rowMajor = rowMajor;
		this.grid = grid;
	}
	@Override
	public boolean hasNext() {
		// TODO Auto-generated method stub
		if(rowMajor){
		return(rowCount!=grid.getRowCount());}else{
			return(columnCount!=grid.getColumnCount());
		}
	}

	@Override
	public String next() {
		// TODO Auto-generated method stub
		String returnString = "";
		if(hasNext()){
			returnString = grid.getElement(rowCount, columnCount);
			if(rowMajor){
				if(columnCount == grid.getColumnCount()-1){
					columnCount = 0;
					rowCount++;
				}else{
					columnCount++;
				}	
			}else{
				if(rowCount == grid.getRowCount()-1){
					rowCount = 0;
					columnCount++;
				}else{
					rowCount++;
				}	
			}}
		return returnString;
	}
	
	public void remove(){
		throw new UnsupportedOperationException();
	}

}
