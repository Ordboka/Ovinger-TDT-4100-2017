package oving1.rectangle;

public class Rectangle {
	
	int x1 = 0;
	int x2 = 0;
	int y1 = 0;
	int y2 = 0;
	boolean empty = true;
	
	int getMinX(){
		return x1;
	}
	int getMinY(){
		return y1;
	}
	int getMaxX(){
		return x2;
	}
	int getMaxY(){
		return y2;
	}
	int getWidth(){
		if(empty == true){
			return 0;
		}
		if(x1==x2){
			return 1;
		}
		else{
			return x2-x1+1;
			}
	}
	int getHeight(){
		if(empty == true){
			return 0;
		}
		if(y1==y2){
			return 1;
		}
		else{
			return y2-y1+1;
			}
	}
	boolean isEmpty(){
		return empty;
	}
	
	boolean contains(int x, int y){
		if(empty == false){
		return(x>=x1 && x<=x2 && y>=y1 && y<=y2);}
		return false;
	}
	
	boolean contains(Rectangle rect){
		return(rect.x1<=this.x1 && rect.x2 >= this.x2 && rect.y1<=this.y1 && rect.y2 >= this.y2);
	}
	
	boolean add(int x, int y){
		if(isEmpty()==false){
		if(contains(x ,y) == true){
			return false;
		}else{
			if(x<x1){
				x1 = x;
			}else if(x>x2){
				x2 = x;
			}
			if(y<y1){
				y1 = y;
			}else if(y>y2){
				y2 = y;
			}
			return true;
		}
		}else{
			x1 = x;
			y1 = y;
			x2 = x;
			y2 = y;
			empty = false;
			return true;	
		}
	}
	
	boolean add(Rectangle rect){
		if(isEmpty() == false){
			if(contains(rect)==true){
				return false;
			}else{
				if(rect.x1<x1){
					x1 = rect.x1;
				}
				if(rect.y1<y1){
					y1 = rect.y1;
				}
				if(rect.x2>x2){
					x2 = rect.x2;
				}
				if(rect.y2>y2){
					y2 = rect.y2;
				}
				return true;
			}
		}else{
			x1 = rect.x1;
			y1 = rect.y1;
			x2 = rect.x2;
			y2 = rect.y2;
			empty = false;
			return true;
		}
	}
	
	Rectangle union(Rectangle rect){
		Rectangle r1 = new Rectangle();
		r1.add(this);
		r1.add(rect);
		return r1;
	}
	
	public String toString(){
		return "x1 " + x1 + " y1 " + y1 + " x2 " + x2 + " y2 " + y2;
	}
	public static void main(String[] args){
		Rectangle rect = new Rectangle();
		rect.add(50,50);
		System.out.println(rect.toString());
		rect.add(30, 30);
		System.out.println(rect.toString());
	}
}
