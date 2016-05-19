import java.applet.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.imageio.ImageIO;

public class AusgabeBestenliste {
	/*
	 * Dient dem Zeicnen der Siegertreppen unter dem Reiter Sportfest - Rekorde
	 * lädt Bild Datei vom Server und zeichnet sie neu
	 */
    public static synchronized void zeichne(BestenlisteObjekt ausgabe, String k, String p, String einheit){
    	BufferedImage bild;
		try {
			System.out.println("1");
			bild = ImageIO.read(new File("C:/xampp/tomcat/webapps/SportfestNEU/bilder/anzeige.jpg"));
			Graphics2D g = bild.createGraphics();
			
			g.setColor(Color.black); 
			g.fillRect(0, 0, 500, 500);//alles übermalen
			g.setColor(Color.white);
			g.fillRect(10, 10, 480, 480);//Zeichenfläche schaffen
			g.setColor(Color.black);
			g.drawLine(25, 475, 475, 475);
			
			//Blöcke werden gemalt
			g.setColor(Color.yellow);
			g.fillRect(25, 325, 150, 150);
			g.setColor(Color.green);
			g.fillRect(175, 275, 150, 200);
			g.setColor(Color.red);
			g.fillRect(325, 375, 150, 100);
			
			String[] VN = ausgabe.getVorname();
			String[] NN = ausgabe.getNachname();
			double[] ergebnis = ausgabe.getErgbnisse();
			
			//Blöcke werden beschriftet
			g.setColor(Color.black);
			g.drawString(VN[1], 50, 350);
			g.drawString(NN[1], 50, 375);
			g.drawString(String.valueOf(ergebnis[1]) + " " + einheit, 50, 400);
			
			g.drawString(VN[0], 200, 300);
			g.drawString(NN[0], 200, 325);
			g.drawString(String.valueOf(ergebnis[0]) + " " + einheit, 200, 350);
			
			g.drawString(VN[2], 350, 400);
			g.drawString(NN[2], 350, 425);
			g.drawString(String.valueOf(ergebnis[2]) + " " + einheit, 350, 450);
			
			g.dispose();
			
			//Datei die über diesen Pfad zu finden ist wird erstellt/überschrieben
			String pfad = "C:/xampp/tomcat/webapps/SportfestNEU/bilder/anzeige_" + k + "_" + p +".jpg";


			File outputfile = new File(pfad);
			ImageIO.write(bild, "jpg", outputfile);


			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
    /*
     * Liefert die Daten für die Bestenliste pro Stufe
     * Daten werden aus der DB nach folgenden Kriterien gesucht:
     * Alle Ergebnisse der Klasse x in der Disziplin y . Die Zeilen sind nach vergebenen Punkten in der Höhe absteigend sortiert
     */
	public static synchronized void bestenListeSportfest(){
		int[] id = new int[3];
		double[] ergebnisse = new double[3];
		String [] vorname = new String[3];
		String[] nachname = new String[3];
		String[] stufe = new String[3];
		String[] klasse = new String[3];
		
		BestenlisteObjekt ausgabe;
		try{
			String[] sportarten = {"Dauerlauf", "Kugelstossen", "Schlagball", "Sprinten", "Weitsprung", "Weitwurf"};
			String[] ansichten = {"5", "6", "7", "8", "9", "10", "11", "12"};
			String[] einheiten = {"min", "m", "m", "s", "m", "m"};

			Class.forName("com.mysql.jdbc.Driver");
			Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "secret");
			
			Statement myStmt = myCon.createStatement();

			for(int i = 0; i<ansichten.length;i++){
				for(int j = 0; j<sportarten.length;j++){
					ResultSet myRes = myStmt.executeQuery("Select schuelerID, SchuelerNachname, SchuelerVorname, SchuelerStufe, SchuelerKlasse, Punkte, Ergebnis From V_SportfestErgebniss WHERE Sportart = '" + sportarten[j] + "' AND SchuelerStufe = '" + ansichten[i] +"' Order by Ergebnis" +findeOrderReihenfolge(sportarten[j]));
				
					int k = 0;
					while(myRes.next()&& k<3){
						id[k] = myRes.getInt(1);
						ergebnisse[k] = myRes.getDouble(7);
						vorname[k] = myRes.getString(3);
						nachname[k] = myRes.getString(2);
						stufe[k] = myRes.getString(4);
						klasse[k] = myRes.getString(5);
						k++;
					}
					
								
					ausgabe = new BestenlisteObjekt(id, ergebnisse, vorname, nachname, stufe, klasse);
					zeichne(ausgabe, ansichten[i], sportarten[j], einheiten[j]);
				}
			}
			myCon.close();
			bestenListeSportfestGesamt();
			} catch(Exception e){
				e.printStackTrace();
			}
		
	}
	
	/*
	 * siehe Funktion drüber. Einzige Änderung ist, dass nicht nach Stufen slektiert wird
	 */
	public static synchronized void bestenListeSportfestGesamt(){
		int[] id = new int[3];
		double[] ergebnis = new double[3];
		String [] vorname = new String[3];
		String[] nachname = new String[3];
		String[] stufe = new String[3];
		String[] klasse = new String[3];
		
		BestenlisteObjekt ausgabe;
		
		try{
			String[] sportarten = {"Dauerlauf", "Kugelstossen", "Schlagball", "Sprinten", "Weitsprung", "Weitwurf"};
			Class.forName("com.mysql.jdbc.Driver");
			Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "secret");
			
			Statement myStmt = myCon.createStatement();
			String[] einheiten = {"min", "m", "m", "s", "m", "m"};
				for(int j = 0; j<sportarten.length;j++){
					ResultSet myRes = myStmt.executeQuery("Select schuelerID, SchuelerNachname, SchuelerVorname, SchuelerStufe, SchuelerKlasse, Punkte, Ergebnis From V_SportfestErgebniss WHERE Sportart = '" + sportarten[j] + "' Order by Ergebnis" + findeOrderReihenfolge(sportarten[j]));
				
					int k = 0;
					while(myRes.next()&& k<3){
						id[k] = myRes.getInt(1);
						ergebnis[k] = myRes.getDouble(7);
						vorname[k] = myRes.getString(3);
						nachname[k] = myRes.getString(2);
						stufe[k] = myRes.getString(4);
						klasse[k] = myRes.getString(5);
						k++;
					}
					
								
					ausgabe = new BestenlisteObjekt(id, ergebnis, vorname, nachname, stufe, klasse);
					zeichne(ausgabe, "gesamt", sportarten[j], einheiten[j]);
				}
			

			myCon.close();
			} catch(Exception e){
				e.printStackTrace();
			}
		
	}
	
	public static String findeOrderReihenfolge(String s){
		if(s.equals("Sprinten")||s.equals("Dauerlauf")){
			return " ASC";
		} else{
			return " DESC";
		}
	}
}