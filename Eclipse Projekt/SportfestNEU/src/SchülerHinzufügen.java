import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SchülerHinzufügen {

	public static void main(String[] args) {
		try {
			Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "");
			
			Statement myStmt = myCon.createStatement();
			
			String [] vorname = {"Jan", "Thomas", "Jens", "Maurice", "Thorsten", "David", "Florian", "Leon", "Jana", "Jaqueline", "Sabrina", "Linda", "Lena", "Verena", "Sandra", "Anna", "Simon", "Hannah", "Kevin", "Felix", "David", "Johann", "Christina", "Johanna", "Martits", "Carmen", "Sarah", "Jil", "Michelle", "Judith"};
			String [] nachname = {"Meier", "Beck", "Tank", "Groß", "Schmidt", "Skalitz", "Schröter", "Wilhem", "Steinmetz", "Kaufmann", "Einhaus", "Althoff", "Gößling", "Wyink", "Dynak", "Knorr", "Blume", "Eck", "Baumann", "Groß", "Böhrer", "Trogant", "Debus", "Lammertz", "Brenner"};
			String sq1 = "";
			
			for(int i = 0; i<500;i++){
				int rVN = (int) (Math.random()*vorname.length);
				int rNN = (int) (Math.random()*nachname.length);
				int randomKlasse = (int)(Math.random()*4);
				String klasse = "";
				if(randomKlasse == 0){
					klasse = "a";
				}
				else if(randomKlasse == 1){
					klasse = "b";
				}
				else if(randomKlasse == 2){
					klasse = "c";
				}
				else if(randomKlasse == 3){
					klasse = "d";
				}
			sq1 = "insert into schuelersportfest " +
								" (SchuelerNachname, SchuelerVorname, SchuelerStufe, SchuelerKlasse) " +
								" values('"+ vorname[rVN] + "', '" + nachname[rNN] + "', '"+ (int)(Math.random()*7+6) + "','" + klasse + "')";
				
				myStmt.executeUpdate(sq1);
			}
			
			System.out.println("done");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
