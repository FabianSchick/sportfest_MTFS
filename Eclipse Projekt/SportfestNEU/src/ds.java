import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ds {

	public static void main(String[] args) {
		doIT();


	}
	
	public static void doIT(){
		try {
			Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "secret");
			
			Statement myStmt = myCon.createStatement();
			
			ResultSet myRes = myStmt.executeQuery("select * from users");
			
			while(myRes.next()){
				System.out.println(myRes.getString(1) + " | " + myRes.getString(2) + " | " +  myRes.getString(3) + " | " +  myRes.getString(4));
			}
			
			System.out.println("Test");
			
			/*
			String [] vorname = {"Jan", "Thomas", "Jens", "Maurice", "Thorsten"};
			String [] nachname = {"Meier", "Beck", "Tank", "Groﬂ", "Schmidt"};
			String sq1 = "";
			
			for(int i = 0; i<6;i++){
				int rVN = (int) (Math.random()*5);
				int rNN = (int) (Math.random()*5);
				String mail= "info@"+ vorname[rVN] + "-" + nachname[rNN]+ ".de";
				
			sq1 = "insert into users " +
								" (Vorname, Nachname, Email, Passwort, Status, session_id) " +
								" values('"+ vorname[rVN] + "', '" + nachname[rNN] + "', '"+ mail + "', '12345678', 1, '')";
				
				myStmt.executeUpdate(sq1);
			}
			
			System.out.println("done");
			
			*/
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
