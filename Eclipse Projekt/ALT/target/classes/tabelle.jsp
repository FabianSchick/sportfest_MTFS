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
	
	ResultSet myRes = myStmt.executeQuery("select * from users order by Nachname");
	
	while(myRes.next()){%>
		<tr>
			<td><%=myRes.getString(2) %></td>
			<td><%=myRes.getString(3) %></td>
			<td><%=myRes.getString(4) %></td>
		</tr>
	
	<%}
	
	System.out.println("Test");
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

%>

</table>
</body>
</html>