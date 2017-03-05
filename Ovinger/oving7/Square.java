package oving7;

public class Square {
	private boolean isWall = false, isGoal = false, hasBox = false, containsPlayer = false;
	
	//This value should not be able to be changed so if first set it cannot change
	public void setWall(){
		isWall = true;
	}
	//This value should not be able to be changed so if first set it cannot change
	public void setGoal(){
		isGoal = true;
	}
	//This value can change
	public void setBox(boolean hasBox){
		this.hasBox = hasBox;
	}
	//This value can change
	public void setPlayer(boolean containsPlayer){
		this.containsPlayer = containsPlayer;
	}
	
	public boolean isEmpty(){
		if(isWall==false && hasBox == false){
			return true;
		}
		return false;
	}
	
	public boolean hasBox(){
		return hasBox;
	}
	
	public String toString() {
		if(isWall){
			return "#";
		}
		if(isGoal){
			//Checks the different options if the square is a goal
			if(hasBox){
				return "*";
			}
			if(containsPlayer){
				return "+";
			}
			//Returns if just goal
			return ".";
		}
		//Have already checked all combinations, so now check the individual cases
		if(hasBox){
			return "$";
		}
		if(containsPlayer){
			return "@";
		}
		return " ";
	}
}
