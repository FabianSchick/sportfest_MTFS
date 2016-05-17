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
		AusgabeBestenliste.bestenListeSportfest();
		Class.forName("com.mysql.jdbc.Driver");
		Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "secret");
		
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
			System.out.println("Es gibt " + i + "Sch¸ler mit diesem namen");

			String ausgabe  = "Es gibt " + i + "Sch¸ler mit diesem namen";
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
	
	
	
	public static boolean ergebnisEintragen(String Sprinten, String Dauerlauf, String Weitwurf, String Weitsprung, String Kugelstoﬂen, String Schlagball){
		try {
			String[] sportarten = {"Sprinten", "Dauerlauf", "Weitwurf", "Weitsprung", "Kugelstoﬂen", "Schlagball"};
			double[] ergebnisse = {Double.parseDouble(Sprinten), Double.parseDouble(Dauerlauf), Double.parseDouble(Weitwurf), Double.parseDouble(Weitsprung), Double.parseDouble(Kugelstoﬂen), Double.parseDouble(Schlagball)};
			int pktSprint = hundertMeterSprint(Double.parseDouble(Sprinten));
			int pktDauerlauf = dreitausendMeter(sekundenAusMinuten(Double.parseDouble(Dauerlauf)));
			int pktWeitwurf = 200 - ((int)(Double.parseDouble(Weitwurf)*-1+30.0/0.1*10));
			int pktWeitsprung = weitsprung(Double.parseDouble(Weitsprung));
			int pktKugelstoﬂen = kugelstossen(Double.parseDouble(Kugelstoﬂen));
			int pktSchlagball = schlagball(Double.parseDouble(Schlagball));
			
			int[] punkte = new int[6];
			punkte[0] = pktSprint;
			punkte[1] = pktDauerlauf;
			punkte[2] = pktWeitwurf;
			punkte[3] = pktWeitsprung;
			punkte[4] = pktKugelstoﬂen;
			punkte[5] = pktSchlagball;
			
		Class.forName("com.mysql.jdbc.Driver");
		
		
		Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "secret");
		
		Statement myStmt = myCon.createStatement();
		String sq1 = "";
		ResultSet myRes = myStmt.executeQuery("SELECT * FROM ergebnissesportfest WHERE SchuelerID = " + uebergabe.getId() + " AND SportfestID = 1");
		int datens‰tze = 0;
		while(myRes.next()){
			datens‰tze++;
		}
		
		if(datens‰tze==0){
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
	
	public static BestenlisteObjekt bestenListeSportfestObj(){
		int[] id = new int[3];
		int[] punkte = new int[3];
		String [] vorname = new String[3];
		String[] nachname = new String[3];
		String[] stufe = new String[3];
		String[] klasse = new String[3];
		
		BestenlisteObjekt ausgabe;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "secret");
			
			Statement myStmt = myCon.createStatement();
			myStmt.executeUpdate("CREATE VIEW V_SportfestErgebnisse AS SELECT schuelersportfest.schuelerID, ergebnissesportfest.sportfestID, schuelersportfest.SchuelerNachname, schuelersportfest.SchuelerVorname, schuelersportfest.SchuelerStufe, schuelersportfest.SchuelerKlasse, ergebnissesportfest.Punkte WHERE Schuelersportfest.Schuelerklasse = a AND Schuelersportfest.Schuelerstufe = 11 FROM schuelersportfest JOIN ergebnissesportfest ON schuelersportfest.schuelerID = ergebnissesportfest.SchuelerID");	

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
	
	public static int hundertMeterSprint (double sekunden){
		   if (sekunden < 10.5) {
		     return 200;
		     }
		   else if (sekunden > 23.4){
		     return 0;
		   }
		   else {
		     return (int) (-250 * Math.log(sekunden) + 790);
		   }
		 }

		 public static int dreitausendMeter (int sekunden){
		   if (sekunden > 492) {
		     return (int) (873*Math.pow(Math.E, -0.003*sekunden));
		   }
		   else return 200;
		 }

		 public static int weitsprung (double meter){
		   if (meter < 1.33){
		     return 0;
		   }
		   else if (meter > 8.05){
		     return 200;
		   }
		   else {
		     return (int)(29.76 * meter - 39.58);
		   }
		 }

		 public static int schlagball (double meter){
		   if (meter < 8){
		     return 0;
		   }
		   else if (meter > 80){
		     return 200;
		   }
		   else {
		     return (int)(2.78 * meter - 22.24);
		   }
		 }

		 public static int kugelstossen (double meter){
		   if (meter < 2.1){
		     return 0;
		   }
		   else if (meter > 20.5){
		     return 200;
		   }
		   else {
		     return (int)(10.87 * meter - 22.84);
		   }
		 }
		 
		 public static int sekundenAusMinuten(double d){
			 double zeit = d;
			 int min = (int) zeit;
			 int sek = (int)(zeit-min)*100  + min*60;
			 return sek;
			 
		 }
	
}
