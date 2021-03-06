package python;

import java.util.Scanner;

public class Rects {
	//Deklarer variabler
	int r1x1 = 0, r1y1 = 0, r1x2 = 0, r1y2 = 0;
	int r2x1 = 0, r2y1 = 0, r2x2 = 0, r2y2 = 0;
	
	boolean intervalsOverlap(int n1,int n2,int m1,int m2){
		return !(n1>m2 || n2 < m1);
	}
	/**
	Checks if two variables overlap, uses the class variables. 
	*/
	boolean rectanglesOverlap(){
		return (intervalsOverlap(r1x1,r1x2,r2x1,r2x2) && intervalsOverlap(r1y1,r1y2,r2y1,r2y2));
	}
	/**
	 * Converts the rectangle to a string with formatting
	 * @param x1 First x coordinate
	 * @param y1 First y coordinate
	 * @param x2 Second x coordinate
	 * @param y2 Second y coordinate
	 * @return the string to be displayed
	 */
	String rectangle2String(int x1, int y1, int x2, int y2){
		return "(" + x1 + "," + y1 + ")" + "," + "(" + x2 + "," + y2 + ")";
	}
	
	void main(){
		Scanner scanner = new Scanner(System.in);
		while(true){
			System.out.println("Rect 1: " + rectangle2String(r1x1,r1y1,r1x2,r1y2));
			System.out.println("Rect 2: " + rectangle2String(r2x1,r2y1,r2x2,r2y2));
			System.out.print(" > ");
			String token = scanner.nextLine();
			scanner.close();
			if (token.equals("overlaps?")){
				System.out.println(rectanglesOverlap());
			}else if(token.equals("exit")){
				break;
			}else{
				int pos = token.indexOf("=");
				if (pos>=4){
					//Bruker int og ikke float som i oppgaven, da jeg antar to rektangler bare har integer kordinater
					int val = Integer.parseInt(token.substring(pos+1));
					if (token.startsWith("r1x1")){
						r1x1 = val;
					}else if(token.startsWith("r1y1")){
						r1y1 = val;
					}else if(token.startsWith("r1x2")){
						r1x2 = val;
					}else if(token.startsWith("r1y2")){
						r1y2 = val;
					}else if(token.startsWith("r2x1")){
						r2x1 = val;
					}else if(token.startsWith("r2y1")){
						r2y1 = val;
					}else if(token.startsWith("r2x2")){
						r2x2 = val;
					}else if(token.startsWith("r2y2")){
						r2y2 = val;
					}
				}
			}
		}
	}
	
	
	public static void main(String args[]){
		new Rects().main();
	}
}
