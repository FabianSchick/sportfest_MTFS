package top;


//Diese Klasse dient als Basis für die verwendete JavaBean
import java.io.Serializable;

public class AusgabeLehrer implements Serializable {
	public AusgabeLehrer(){
		
	}
	
	private String ausgabe;
	
	public AusgabeLehrer(String pAusgabe){
		ausgabe = pAusgabe;
	}

	public String getAusgabe() {
		return ausgabe;
	}

	public void setAusgabe(String ausgabe) {
		this.ausgabe = ausgabe;
	}
	
	

}
