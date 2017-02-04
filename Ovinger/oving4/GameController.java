package oving4;


import javafx.fxml.FXML;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.text.Font;

public class GameController {
	
	
	@FXML
	public TextArea console ; 
	
	@FXML
	TextField inputField ; 
	
	//Her maa du deklarerere spillet ditt dersom det heter noe annet enn TicTacToe
	Sokoban game ; 
	
	public void initialize(){
		//Her maa du opprette et objekt av spillet ditt med de argumentene som behoves for det - resten av koden vil gaa ut ifra at du har kalt den game
		game = new Sokoban() ;
		console.setFont(Font.font("Courier New"));
		console.setText(game.toString());
	}
	
	
	@FXML
	public void sendInput(){
		String in = inputField.getText();
		inputField.setText("");
		System.out.println(in);
		//Denne metoden kan hete hva som helst, men husk aa endre det her
		game.getInput(in); 
		console.setText(game.toString());
		
	}
}
