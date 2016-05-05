import java.sql.*;

public class EingabeMaskeFunktionen{
	
	static int id = 1;
	static String nachname = "";
	static String vorname = "";
	static String stufe = "";
	static String klasse = "";
	
	static SchuelerObjekt uebergabe;	
	public static String pruefeDaten(String vorname, String nachname, String stufe, String klasse){
	
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "");
		
		Statement myStmt = myCon.createStatement();
		String sq2 = "Select * FROM schuelersportfest WHERE schuelerNachname = '" + nachname + "' AND schuelerVorname = '" + vorname + "' AND schuelerStufe = '" + stufe + "'AND schuelerKlasse = '" + klasse + "'";
		ResultSet myRes = myStmt.executeQuery(sq2);
		
		int i = 0;
		
		while(myRes.next()){
			id = myRes.getInt(1);
			nachname = myRes.getString(2);
			vorname = myRes.getString(3);
			stufe = myRes.getString(4);
			klasse = myRes.getString(5);
			i++;
		}
		
		uebergabe = new SchuelerObjekt(id, vorname, nachname, klasse, stufe);
		
		if(i == 0){
			System.out.println("Schueler existiert nicht");
			return "Schueler existiert nicht";
		}
		
		else if(i==1){
			System.out.println("Bitte tragen Sie die Daten ein");
			return "Bitte tragen Sie die Daten ein";
		}
		
		else if(i>1){
			System.out.println("Es gibt " + i + "Schüler mit diesem namen");

			String ausgabe  = "Es gibt " + i + "Schüler mit diesem namen";
			return ausgabe;
		}
		
		else{
			return "hier ist was schiefgelaufen!";
		}
		
		} catch(Exception e){
			e.printStackTrace();
			return "Fehler!";
		}
}
	
	
	
	public static boolean ergebnisEintragen(String Sprinten, String Dauerlauf, String Weitwurf, String Weitsprung){
		try {
			String[] sportarten = {"Sprinten", "Dauerlauf", "Weitwurf", "Weitsprung"};
			double[] ergebnisse = {Double.parseDouble(Sprinten), Double.parseDouble(Dauerlauf), Double.parseDouble(Weitwurf), Double.parseDouble(Weitsprung)};
			int pktSprint = 200 - ((int)(((Double.parseDouble(Sprinten)-10.0)/0.1)*10));
			int pktDauerlauf = 200 - ((int)(Double.parseDouble(Dauerlauf)-20.0/0.1*20));
			int pktWeitwurf = 200 - ((int)(Double.parseDouble(Weitwurf)*-1+30.0/0.1*10));
			int pktWeitsprung = 200 - ((int)(Double.parseDouble(Weitsprung)*-1+30.0/0.1*10));
			
			int[] punkte = new int[4];
			punkte[0] = pktSprint;
			punkte[1] = pktDauerlauf;
			punkte[2] = pktWeitwurf;
			punkte[3] = pktWeitsprung;
		Class.forName("com.mysql.jdbc.Driver");
		
		
		Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "");
		
		Statement myStmt = myCon.createStatement();
		String sq1 = "";
		ResultSet myRes = myStmt.executeQuery("SELECT * FROM ergebnissesportfest WHERE SchuelerID = " + uebergabe.getId() + " AND SportfestID = 1");
		int datensätze = 0;
		while(myRes.next()){
			datensätze++;
		}
		
		if(datensätze==0){
		for(int i = 0; i<sportarten.length; i ++){
			sq1 = "insert into ergebnissesportfest (EintragsID, SchuelerID, sportfestID, Sportart, Ergebnis, Punkte) Values (NULL, " + uebergabe.getId() +  ", 1, '" + sportarten[i] + "', '" + Double.toString(ergebnisse[i]) + "', '" + Integer.toString(punkte[i]) + "')";
			myStmt.executeUpdate(sq1);
		}
		return true;
		} else{
			return false;
		}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
			return false;
		}
	}
	
	public static BestenlisteObjekt bestenListeSportfestGesamt(){
		int[] id = new int[3];
		int[] punkte = new int[3];
		String [] vorname = new String[3];
		String[] nachname = new String[3];
		String[] stufe = new String[3];
		String[] klasse = new String[3];
		
		BestenlisteObjekt ausgabe;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "");
			
			Statement myStmt = myCon.createStatement();
			myStmt.executeUpdate("CREATE VIEW V_SportfestErgebnisse AS SELECT schuelersportfest.schuelerID, ergebnissesportfest.sportfestID, schuelersportfest.SchuelerNachname, schuelersportfest.SchuelerVorname, schuelersportfest.SchuelerStufe, schuelersportfest.SchuelerKlasse, ergebnissesportfest.Punkte FROM schuelersportfest JOIN ergebnissesportfest ON schuelersportfest.schuelerID = ergebnissesportfest.SchuelerID");	

			ResultSet myRes = myStmt.executeQuery("Select schuelerID, SchuelerNachname, SchuelerVorname, SchuelerStufe, SchuelerKlasse, sum(Punkte) From V_SportfestErgebnisse WHERE sportfestID = 1 group by schuelerID Order by sum(punkte) DESC");
			
			int i = 0;
			while(myRes.next()&& i<3){
				id[i] = myRes.getInt(1);
				punkte[i] = myRes.getInt(6);
				vorname[i] = myRes.getString(3);
				nachname[i] = myRes.getString(2);
				stufe[i] = myRes.getString(4);
				klasse[i] = myRes.getString(5);
				i++;
			}
			
			myStmt.execute("DROP VIEW V_SportfestErgebnisse");

				
			ausgabe = new BestenlisteObjekt(id, punkte, vorname, nachname, nachname, klasse);
			return ausgabe;
			} catch(Exception e){
				e.printStackTrace();
				return null;
			}
		
	}
	
}
