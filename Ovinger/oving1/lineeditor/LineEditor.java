package oving1.lineeditor;

public class LineEditor {
	String text = "";
	int insertionIndex = 0;
	
	void left(){
		if(insertionIndex==0){
			
		}else{
			insertionIndex--;	
		}
	}
	void right(){
		if(insertionIndex==text.length()){
			
		}else{
		insertionIndex ++;}
	}
	
	void insertString(String s){
		text = text.substring(0, insertionIndex) + s + text.substring(insertionIndex);
		insertionIndex += s.length();
	}
	
	void deleteLeft(){
		if(insertionIndex!=0){
		text = text.substring(0, insertionIndex-1) +  text.substring(insertionIndex);
		insertionIndex--;}
	}
	
	void deleteRight(){
		if(insertionIndex!=text.length()){
		text = text.substring(0, insertionIndex) +  text.substring(insertionIndex+1);}
	}
	
	String getText(){
		return text;
	}
	
	void setText(String s){
		text = s;
		insertionIndex = s.length();
	}
	
	int getInsertionIndex(){
		return insertionIndex;
	}
	
	void setInsertionIndex(int n){
		insertionIndex = n;
	}
	
	public String toString(){
		return text + " Insertion Index: " + insertionIndex;
	}
	
	public static void main(String[] args) {
		LineEditor line = new LineEditor();
		line.deleteRight();
		line.setText("J");
		line.left();
		line.deleteRight();
		System.out.println(line.toString());
	}
}
