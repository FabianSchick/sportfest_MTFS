import java.applet.*;
import java.awt.*;

public class AusgabeBestenliste extends Applet {
	
	BestenlisteObjekt ausgabe = EingabeMaskeFunktionen.bestenListeSportfestGesamt();
	
		public void paint(Graphics g){
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
		}
}
