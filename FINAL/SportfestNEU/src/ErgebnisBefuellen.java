import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/*
 * Diese Klasse ist lediglich eine Hilfsklasse, die die DB zun Testzwcken bef¸llt
 */
public class ErgebnisBefuellen {
	public static void main(String args[]){
		String[] sportarten = {"Sprinten", "Dauerlauf", "Weitwurf", "Weitsprung", "Kugelstossen", "Schlagball"};

		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "secret");
		
		Statement myStmt = myCon.createStatement();
		Statement update = myCon.createStatement();
		String sq2 = "Select * FROM schuelersportfest";
		ResultSet myRes = myStmt.executeQuery(sq2);
		
		while(myRes.next()){
			double ergebisse[] = ergebnis();
			int punkte [] = punkte(ergebisse);
			for(int i = 0;i<6;i++){
				String sq1 = "insert into ergebnissesportfest (EintragsID, SchuelerID, sportfestID, Sportart, Ergebnis, Punkte) Values (NULL, " + myRes.getString(1) +  ", 1, '" + sportarten[i] + "', '" + ergebisse[i] + "', '" + punkte[i] + "')";
				update.executeUpdate(sq1);
			}
		}
				}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static double[] ergebnis(){
		double tmp = 0;
		double Sprinten = 10.5 + (Math.random()*13);
		tmp =Sprinten*100;
		Sprinten = ((Math.round(tmp))/100);
		
		
		double Dauerlauf = 8.5 + (Math.random()*13);
		tmp =Dauerlauf*100;
		Dauerlauf = ((Math.round(tmp))/100);
		while(Dauerlauf-((int)Dauerlauf)>0.59){
			Dauerlauf = 8.5 + (Math.random()*13);
			tmp =Dauerlauf*100;
			Dauerlauf = ((Math.round(tmp))/100);
		}
		
		double Weitwurf = 25+(Math.random()*25);
		tmp =Weitwurf*100;
		Weitwurf = ((Math.round(tmp))/100);

		double Weitsprung = 2.5+ (Math.random()*2);
		tmp =Weitsprung*100;
		Weitsprung = ((Math.round(tmp))/100);

		double Kugelstoﬂen = 3+(Math.random()*19);
		tmp =Kugelstoﬂen*100;
		Kugelstoﬂen = ((Math.round(tmp))/100);

		double Schlagball = 8+(Math.random()*70);
		tmp =Schlagball*100;
		Schlagball = ((Math.round(tmp))/100);

		
		double ergebnisse[] = new double[6];
		ergebnisse[0] = Sprinten;
		ergebnisse[1] = Dauerlauf;
		ergebnisse[2] = Weitwurf;
		ergebnisse[3] = Weitsprung;
		ergebnisse[4] = Kugelstoﬂen;
		ergebnisse[5] = Schlagball;
		
		return ergebnisse;
	}
	
	private static int[] punkte(double[] ergebnisse){
		int punkte[] = new int[6];
		punkte[0] = EingabeMaskeFunktionen.hundertMeterSprint(ergebnisse[0]);
		punkte[1] = EingabeMaskeFunktionen.dreitausendMeter((int)ergebnisse[1]);
		punkte[2] = (int) (200/30*(ergebnisse[2]));
		punkte[3] = EingabeMaskeFunktionen.weitsprung(ergebnisse[3]);
		punkte[4] = EingabeMaskeFunktionen.kugelstossen(ergebnisse[4]);
		punkte[5] = EingabeMaskeFunktionen.schlagball(ergebnisse[5]);
		
		return punkte;
		
	}
}
