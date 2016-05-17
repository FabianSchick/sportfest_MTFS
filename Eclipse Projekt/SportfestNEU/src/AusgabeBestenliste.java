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

    public static void zeichne(BestenlisteObjekt ausgabe, String k, String p){
    	BufferedImage bild;
		try {
			System.out.println("1");
			bild = ImageIO.read(new File("C:/Users/Fabian/workspace/SportfestNEU/WebContent/bilder/anzeige.jpg"));
			Graphics2D g = bild.createGraphics();
			
			g.setColor(Color.black);
			g.fillRect(0, 0, 500, 500);
			g.setColor(Color.white);
			g.fillRect(10, 10, 480, 480);
			g.setColor(Color.black);
			g.drawLine(25, 475, 475, 475);
			
			g.setColor(Color.yellow);
			g.fillRect(25, 325, 150, 150);
			g.setColor(Color.green);
			g.fillRect(175, 275, 150, 200);
			g.setColor(Color.red);
			g.fillRect(325, 375, 150, 100);
			
			String[] VN = ausgabe.getVorname();
			String[] NN = ausgabe.getNachname();
			int[] punkte = ausgabe.getPunkte();
			
			g.setColor(Color.black);
			g.drawString(VN[0], 50, 350);
			g.drawString(NN[0], 50, 375);
			g.drawString(VN[1], 200, 300);
			g.drawString(NN[1], 200, 325);
			g.drawString(VN[2], 350, 400);
			g.drawString(NN[2], 350, 425);
			
			g.dispose();
			
			String pfad = "C:/Users/Fabian/workspace/SportfestNEU/Webcontent/bilder/anzeige_" + k + "_" + p +".jpg";


			File outputfile = new File(pfad);
			ImageIO.write(bild, "jpg", outputfile);


			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	public static void bestenListeSportfest(){
		int[] id = new int[3];
		int[] punkte = new int[3];
		String [] vorname = new String[3];
		String[] nachname = new String[3];
		String[] stufe = new String[3];
		String[] klasse = new String[3];
		
		BestenlisteObjekt ausgabe;
		
		try{
			String[] sportarten = {"Sprinten", "Dauerlauf", "Weitwurf", "Weitsprung", "Kugelstoﬂen", "Schlagball"};
			String[] ansichten = {"5", "6", "7", "8", "9", "10", "11", "12"};
			Class.forName("com.mysql.jdbc.Driver");
			Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "secret");
			
			Statement myStmt = myCon.createStatement();
			myStmt.executeUpdate("CREATE VIEW V_SportfestErgebnisse AS SELECT schuelersportfest.schuelerID, ergebnissesportfest.sportfestID, schuelersportfest.SchuelerNachname, schuelersportfest.SchuelerVorname, schuelersportfest.SchuelerStufe, schuelersportfest.SchuelerKlasse, ergebnissesportfest.Punkte, ergebnissesportfest.sportart, ergebnisseSportfest.ergebnis FROM schuelersportfest JOIN ergebnissesportfest ON schuelersportfest.schuelerID = ergebnissesportfest.SchuelerID");	

			for(int i = 0; i<ansichten.length;i++){
				for(int j = 0; j<sportarten.length;j++){
					ResultSet myRes = myStmt.executeQuery("Select schuelerID, SchuelerNachname, SchuelerVorname, SchuelerStufe, SchuelerKlasse, Punkte, Ergebnis From V_SportfestErgebnisse WHERE sportfestID = 1 AND Sportart = '" + sportarten[j] + "' AND SchuelerStufe = '" + ansichten[i] +"' group by schuelerID Order by punkte DESC");
				
					int k = 0;
					while(myRes.next()&& k<3){
						id[k] = myRes.getInt(1);
						punkte[k] = myRes.getInt(6);
						vorname[k] = myRes.getString(3);
						nachname[k] = myRes.getString(2);
						stufe[k] = myRes.getString(4);
						klasse[k] = myRes.getString(5);
						k++;
					}
					
								
					ausgabe = new BestenlisteObjekt(id, punkte, vorname, nachname, stufe, klasse);
					zeichne(ausgabe, ansichten[i], sportarten[j]);
				}
			}
			myStmt.execute("DROP VIEW V_SportfestErgebnisse");
			myCon.close();
			bestenListeSportfestGesamt();
			} catch(Exception e){
				e.printStackTrace();
			}
		
	}
	
	public static void bestenListeSportfestGesamt(){
		int[] id = new int[3];
		int[] punkte = new int[3];
		String [] vorname = new String[3];
		String[] nachname = new String[3];
		String[] stufe = new String[3];
		String[] klasse = new String[3];
		
		BestenlisteObjekt ausgabe;
		
		try{
			String[] sportarten = {"Sprinten", "Dauerlauf", "Weitwurf", "Weitsprung", "Kugelstoﬂen", "Schlagball"};
			Class.forName("com.mysql.jdbc.Driver");
			Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "secret");
			
			Statement myStmt = myCon.createStatement();
			myStmt.executeUpdate("CREATE VIEW V_SportfestErgebnisse AS SELECT schuelersportfest.schuelerID, ergebnissesportfest.sportfestID, schuelersportfest.SchuelerNachname, schuelersportfest.SchuelerVorname, schuelersportfest.SchuelerStufe, schuelersportfest.SchuelerKlasse, ergebnissesportfest.Punkte, ergebnissesportfest.sportart, ergebnisseSportfest.ergebnis FROM schuelersportfest JOIN ergebnissesportfest ON schuelersportfest.schuelerID = ergebnissesportfest.SchuelerID");	

				for(int j = 0; j<sportarten.length;j++){
					ResultSet myRes = myStmt.executeQuery("Select schuelerID, SchuelerNachname, SchuelerVorname, SchuelerStufe, SchuelerKlasse, Punkte, Ergebnis From V_SportfestErgebnisse WHERE sportfestID = 1 AND Sportart = '" + sportarten[j] + "' group by schuelerID Order by punkte DESC");
				
					int k = 0;
					while(myRes.next()&& k<3){
						id[k] = myRes.getInt(1);
						punkte[k] = myRes.getInt(6);
						vorname[k] = myRes.getString(3);
						nachname[k] = myRes.getString(2);
						stufe[k] = myRes.getString(4);
						klasse[k] = myRes.getString(5);
						k++;
					}
					
								
					ausgabe = new BestenlisteObjekt(id, punkte, vorname, nachname, stufe, klasse);
					zeichne(ausgabe, "gesamt", sportarten[j]);
				}
			
			myStmt.execute("DROP VIEW V_SportfestErgebnisse");

			myCon.close();
			} catch(Exception e){
				e.printStackTrace();
			}
		
	}
}