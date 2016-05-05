<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table>
	<tr>
		<td>Vorname</td>
		<td>Nachname</td>
		<td>Mail</td>
	</tr>
<%

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "");
	
	Statement myStmt = myCon.createStatement();
	myStmt.executeUpdate("CREATE VIEW V_SportfestErgebnisse AS SELECT schuelersportfest.schuelerID, ergebnissesportfest.sportfestID, schuelersportfest.SchuelerNachname, schuelersportfest.SchuelerVorname, schuelersportfest.SchuelerStufe, schuelersportfest.SchuelerKlasse, ergebnissesportfest.Punkte FROM schuelersportfest JOIN ergebnissesportfest ON schuelersportfest.schuelerID = ergebnissesportfest.SchuelerID");	

	ResultSet myRes = myStmt.executeQuery("Select schuelerID, SchuelerNachname, SchuelerVorname, SchuelerStufe, SchuelerKlasse, sum(Punkte) From V_SportfestErgebnisse WHERE sportfestID = 1 group by schuelerID Order by sum(punkte) DESC");
	
	while(myRes.next()){%>
		<tr>
			<td><%=myRes.getString(2) %></td>
			<td><%=myRes.getString(3) %></td>
			<td><%=myRes.getString(6) %></td>
		</tr>
	
	<%}
	myStmt.execute("DROP VIEW V_SportfestErgebnisse");
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

%>

</table>
</body>
</html>