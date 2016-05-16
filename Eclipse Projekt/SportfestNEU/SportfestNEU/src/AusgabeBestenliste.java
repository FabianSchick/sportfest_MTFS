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
    
    public static void zeichne(){
    	BestenlisteObjekt ausgabe = bestenListeSportfestGesamt();
    	
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
			


			File outputfile = new File("C:/Users/Fabian/workspace/SportfestNEU/Webcontent/bilder/anzeige2.jpg");
			ImageIO.write(bild, "jpg", outputfile);


			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
			Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "secret");
			
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
