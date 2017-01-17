package oving1.rectangle;

public class Rectangle {
	
	int xCorner = 0;
	int yCorner = 0;
	int height = 0;
	int width = 0;
	
	int getMinX(){
		return xCorner;
	}
	int getMinY(){
		return yCorner;
	}
	int getMaxX(){
		return xCorner + width;
	}
	
	boolean isEmpty(){
		return height==0 && width==0;
	}
	
	boolean contains(int x, int y){
		return(x>=xCorner && x<=xCorner + width && y>=yCorner && y<=yCorner + height);
	}
	
	boolean add(int x, int y){
		if(isEmpty()==false){
		if(contains(x ,y) == true){
			return false;
		}else{
//			if(height ==1){
//				height --;
//			}
//			if(width == 1){
//				width--;
//			}
			if(x<xCorner){
				width = width + (xCorner -x);
				xCorner = x;
			}else if(x>xCorner){
				width = x-xCorner;
			}
			if(y<yCorner){
				height = height + (yCorner -y);
				yCorner = y;
			}else if(y>yCorner){
				height = y-yCorner;
			}
			return true;
		}
		}else{
			xCorner = x;
			yCorner = y;
			height = 1;
			width = 1;
			return true;	
		}
	}
	public String toString(){
		return "xCorner " + xCorner + " yCorner " + yCorner + " width " + width + " height " + height;
	}
	public static void main(String[] args){
		Rectangle rect = new Rectangle();
		rect.add(50,50);
		System.out.println(rect.toString());
		rect.add(30, 30);
		System.out.println(rect.toString());
	}
}
