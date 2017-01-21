package oving2;

import java.util.Arrays;
import java.util.Date;

public class Person {
	private String name;
	private String email;
	private Date birthday;
	private char gender;
	
	private String validateName(String name){
		String[] list = name.split(" ");
		if(list.length!=2){
			return "You must include a first and last name and only that!";
		}
		if(list[0].length()<2||list[1].length()<2){
			return "Both the first and last name must be longer than one character";
		}
		for(int i=0; i<name.length();i++){
			char c = name.charAt(i);
			if(!(Character.isLetter(c)|| c == ' ')){
				return "Only letters are allowed in a name";
			}
		}
		return "";
	}
	
	private String validateEmail(String email){
		String[] list = email.split("\\.");
		String[] list2 = list[1].split("@");
		String[] names = name.split(" ");
		if(list.length!=3){
			return "Invalid email format";
		}
		if(list2.length!=2){
			return "Invalid email format";
		}
		if(!(list[0].toLowerCase().equals(names[0].toLowerCase()))||!(list2[0].equals(names[1].toLowerCase()))){
			return "Email does not match name";
		}
		String[] countCodes = {"ad", "ae", "af", "ag", "ai", "al", "am", "ao", "aq", "ar", "as", "at", "au", "aw", "ax", "az", "ba", "bb", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bl", "bm", "bn", "bo", "bq", "br", "bs", "bt", "bv", "bw", "by", "bz", "ca", "cc", "cd", "cf", "cg", "ch", "ci", "ck", "cl", "cm", "cn", "co", "cr", "cu", "cv", "cw", "cx", "cy", "cz", "de", "dj", "dk", "dm", "do", "dz", "ec", "ee", "eg", "eh", "er", "es", "et", "fi", "fj", "fk", "fm", "fo", "fr", "ga", "gb", "gd", "ge", "gf", "gg", "gh", "gi", "gl", "gm", "gn", "gp", "gq", "gr", "gs", "gt", "gu", "gw", "gy", "hk", "hm", "hn", "hr", "ht", "hu", "id", "ie", "il", "im", "in", "io", "iq", "ir", "is", "it", "je", "jm", "jo", "jp", "ke", "kg", "kh", "ki", "km", "kn", "kp", "kr", "kw", "ky", "kz", "la", "lb", "lc", "li", "lk", "lr", "ls", "lt", "lu", "lv", "ly", "ma", "mc", "md", "me", "mf", "mg", "mh", "mk", "ml", "mm", "mn", "mo", "mp", "mq", "mr", "ms", "mt", "mu", "mv", "mw", "mx", "my", "mz", "na", "nc", "ne", "nf", "ng", "ni", "nl", "no", "np", "nr", "nu", "nz", "om", "pa", "pe", "pf", "pg", "ph", "pk", "pl", "pm", "pn", "pr", "ps", "pt", "pw", "py", "qa", "re", "ro", "rs", "ru", "rw", "sa", "sb", "sc", "sd", "se", "sg", "sh", "si", "sj", "sk", "sl", "sm", "sn", "so", "sr", "ss", "st", "sv", "sx", "sy", "sz", "tc", "td", "tf", "tg", "th", "tj", "tk", "tl", "tm", "tn", "to", "tr", "tt", "tv", "tw", "tz", "ua", "ug", "um", "us", "uy", "uz", "va", "vc", "ve", "vg", "vi", "vn", "vu", "wf", "ws", "ye", "yt", "za", "zm", "zw"};
		if(!(Arrays.asList(countCodes).contains(list[2]))){
			return "Illegal country code";
		}
		return "";
	}
	
	private String validateBDay(Date bday){
		Date now = new Date();
		if(bday.after(now)){
			return "You can't be born in the future";
		}
		return "";
	}
	
	private String validateGender(char gender){
		if(!(gender=='M'||gender=='F'||gender=='\0')){
			return "Invalid gender";
		}
		return "";
	}
	
	public void setName(String name){
		String message = validateName(name);
		if(!(message.equals(""))){
			throw new IllegalArgumentException(message);
		}
		this.name = name;
	}
	
	public void setEmail(String email){
		String message = validateEmail(email);
		if(!(message.equals(""))){
			throw new IllegalArgumentException(message);
		}
		this.email = email;
	}
	
	public void setBirthday(Date bday){
		String message = validateBDay(bday);
		if(!(message.equals(""))){
			throw new IllegalArgumentException(message);
		}
		this.birthday = bday;
	}
	
	public void setGender(char gender){
		String message = validateGender(gender);
		if(!(message.equals(""))){
			throw new IllegalArgumentException(message);
		}
		this.gender = gender;
	}
	
	public String getName(){
		return name;
	}
	public String getEmail(){
		return email;
	}
	public Date getBirthday(){
		return birthday;
	}
	public char getGender(){
		return gender;
	}
	
	public static void main(String[] args) {
		Person p1 = new Person();
		p1.setName("Ben Buan");
		p1.setEmail("Ben.Buan@gmail.no");
		Date bday = new Date(97,9,26);
		p1.setBirthday(bday);
		p1.setGender('M');
	}
}
