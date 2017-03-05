package oving7;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.PrintWriter;
import java.util.Scanner;
import java.util.Stack;

public class Sokoban {
	
	Stack<String> moves, undoes;
	int playerX, playerY;
	Square[][] gameBoard;
	public final static String 
	SAMPLE_LEVEL1 = "#####\n#@$.#\n#####",
	SAMPLE_LEVEL2 = "###  \n#.###\n#*$ #\n# @ #\n#####",
	SAMPLE_LEVEL3 = "#######\n#.@ # #\n#$* $ #\n#   $ #\n# ..  #\n#  *  #\n#######",
	SAMPLE_LEVEL4 = "*###########*\n#           #\n#  ... ...  #\n#  *$$ $.$  #\n# $*+$ $*$$ #\n#  *$$ $.$  #\n#  ...  .   #\n#           #\n*###########*";
	
	
	public Sokoban(String levelString){
		moves = new Stack<String>();
		undoes = new Stack<String>();
		loadLevel(levelString);
	}
	public Sokoban(){
		String levelString = SAMPLE_LEVEL2;
		moves = new Stack<String>();
		undoes = new Stack<String>();
		loadLevel(levelString);
	}
	
	public void loadLevel(String levelString){
		String[] lines = levelString.split("\n");
		gameBoard = new Square[lines.length][lines[0].length()];
		int i = 0;
		for(String line:lines){
			for(int j = 0;j<line.length();j++){
				char type = line.charAt(j);
				initiateSquare(type,i,j);
			}
			i++;
		}
	}
	
	public void getInput(String input){
		switch (input.toLowerCase()){
			//Try to move up
			case "w":
				//Check to avoid outOfBound
				if(playerY!=0){
					//Check if the square above is empty and moves if it is
					if(gameBoard[playerY-1][playerX].isEmpty()){
						moves.push(this.toString());
						undoes = new Stack<String>();
						gameBoard[playerY-1][playerX].setPlayer(true);
						gameBoard[playerY][playerX].setPlayer(false);
						playerY--;
					//Check if there is a box above and check to avoid outOfBounds error
					}else if(gameBoard[playerY-1][playerX].hasBox() && playerY!=1){
						//Checks if the square above the box is empty and moves if it is
						if(gameBoard[playerY-2][playerX].isEmpty()){
							moves.push(this.toString());
							undoes = new Stack<String>();
							gameBoard[playerY-2][playerX].setBox(true);
							gameBoard[playerY-1][playerX].setBox(false);
							gameBoard[playerY-1][playerX].setPlayer(true);
							gameBoard[playerY][playerX].setPlayer(false);
							playerY--;
							checkForWin();
						}
					}
				}
				break;
			//Try to move downwards, see comments for upwards motion for similar method
			case "s":
				if(playerY!=gameBoard.length-1){
					if(gameBoard[playerY+1][playerX].isEmpty()){
						moves.push(this.toString());
						undoes = new Stack<String>();
						gameBoard[playerY+1][playerX].setPlayer(true);
						gameBoard[playerY][playerX].setPlayer(false);
						playerY++;
				}else if(gameBoard[playerY+1][playerX].hasBox() && playerY!=gameBoard.length-2){
					if(gameBoard[playerY+2][playerX].isEmpty()){
						moves.push(this.toString());
						undoes = new Stack<String>();
						gameBoard[playerY+2][playerX].setBox(true);
						gameBoard[playerY+1][playerX].setBox(false);
						gameBoard[playerY+1][playerX].setPlayer(true);
						gameBoard[playerY][playerX].setPlayer(false);
						playerY++;
						checkForWin();
					}
				}
				}
				break;
			//Try to move downwards, see comments for upwards motion for similar method
			case "a":
				if(playerX!=0){
					if(gameBoard[playerY][playerX-1].isEmpty()){
						moves.push(this.toString());
						undoes = new Stack<String>();
						gameBoard[playerY][playerX-1].setPlayer(true);
						gameBoard[playerY][playerX].setPlayer(false);
						playerX--;
				}else if(gameBoard[playerY][playerX-1].hasBox() && playerX!=1){
					if(gameBoard[playerY][playerX-2].isEmpty()){
						moves.push(this.toString());
						undoes = new Stack<String>();
						gameBoard[playerY][playerX-2].setBox(true);
						gameBoard[playerY][playerX-1].setBox(false);
						gameBoard[playerY][playerX-1].setPlayer(true);
						gameBoard[playerY][playerX].setPlayer(false);
						playerX--;
						checkForWin();
					}
				}
				}
				break;
			//Try to move downwards, see comments for upwards motion for similar method
			case "d":
				if(playerX!=gameBoard[0].length-1){
					if(gameBoard[playerY][playerX+1].isEmpty()){
						moves.push(this.toString());
						undoes = new Stack<String>();
						gameBoard[playerY][playerX+1].setPlayer(true);
						gameBoard[playerY][playerX].setPlayer(false);
						playerX++;
				}else if(gameBoard[playerY][playerX+1].hasBox() && playerX!=gameBoard[0].length-2){
					if(gameBoard[playerY][playerX+2].isEmpty()){
						moves.push(this.toString());
						undoes = new Stack<String>();
						gameBoard[playerY][playerX+2].setBox(true);
						gameBoard[playerY][playerX+1].setBox(false);
						gameBoard[playerY][playerX+1].setPlayer(true);
						gameBoard[playerY][playerX].setPlayer(false);
						playerX++;
						checkForWin();
					}
				}
				}
				break;
		}
			
	}
	
	private void checkForWin(){
		boolean win = true;
		for(Square[] row:gameBoard){
			for(Square square: row){
				if(square.toString()=="$"){
					win=false;
				}
			}
		}
		if(win==true){
			System.out.println("You won!");
		}
	}
	
	private void initiateSquare(char type, int i, int j) {
		gameBoard[i][j] = new Square();
		//Should probably have used switch here, but too lazy to switch now
		//Check what character is at a position and then initializes the square accordingly
		if(type == '#'){
			gameBoard[i][j].setWall();
		}else if(type == '.'){
			gameBoard[i][j].setGoal();
		}else if(type == '$'){
			gameBoard[i][j].setBox(true);
		}else if(type == '*'){
			gameBoard[i][j].setGoal();
			gameBoard[i][j].setBox(true);
		}else if(type == '@'){
			playerX = j;
			playerY = i;
			gameBoard[i][j].setPlayer(true);
		}else if(type == '+'){
			playerX = j;
			playerY = i;
			gameBoard[i][j].setGoal();
			gameBoard[i][j].setPlayer(true);
		}
	}
	
	public String toString() {
		String returnString = "";
		for(Square[] line:gameBoard){
			for(Square square:line){
				returnString+= square.toString();
			}
			returnString += "\n";
		}
		return returnString;
	}

	public static void main(String[] args){
		Sokoban game = new Sokoban();
		System.out.println(game.toString());
	}
	public void undo() {
		if(!(moves.empty())){
			undoes.push(toString());
			loadLevel(moves.pop());
		}
	}
	public void redo() {
		if(!(undoes.empty())){
			moves.push(toString());
			loadLevel(undoes.pop());
		}
	}
	public void save(String fileName) {
		// TODO Auto-generated method stub
		try
        {
            PrintWriter outFile = new PrintWriter(fileName);
            outFile.print(toString());
            outFile.close();
        }
        catch (FileNotFoundException e)
        {
            System.err.println("Error: file 'test.txt' could not be opened for writing.");
        }
	}
	public void load(String fileName) {
		// TODO Auto-generated method stub
		try
        {
            Scanner in = new Scanner(new FileReader(fileName));
            String levelString = "";
            while(in.hasNext()){
                String line = in.nextLine();
                levelString+=line+"\n";
            }
             
            in.close();
            loadLevel(levelString);
        }
        catch (FileNotFoundException e)
        {
            System.err.println("Error: file 'test.txt' could not be opened. Does it exist?");
            System.exit(1);
        }
	}
	
}
