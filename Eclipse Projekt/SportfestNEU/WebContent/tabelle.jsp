<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../Sportfest/style.css">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" media="screen">
   <script src="http://code.jquery.com/jquery.js"></script>
   <script src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>


<body>
	<div class="container">
		<header class = "shadow">
		</header>
		<nav class="navbar navbar-inverse">
			<jsp:include page="menu.html" flush="true"/>
		</nav>
    	
		<div class="panel panel-default">
			<div class="panel-body"> 
		  		<table class="table">
				    <thead>
				      <tr>
				        <th>Name</th>
				        <th>Vorname</th>
				        <th>Stufe</th>
				        <th>Klasse</th>
				        <th>Disziplin</th>
				        <th>Ergebnis</th>
				      </tr>
				    </thead>
				    <tbody>
				    <%
				    
				    try{
						Class.forName("com.mysql.jdbc.Driver");
						Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "secret");
						
						Statement myStmt = myCon.createStatement();
						Statement delete = myCon.createStatement();
						myStmt.executeUpdate("CREATE VIEW V_SportfestErgebnisse AS SELECT schuelersportfest.schuelerID, ergebnissesportfest.sportfestID, schuelersportfest.SchuelerNachname, schuelersportfest.SchuelerVorname, schuelersportfest.SchuelerStufe, schuelersportfest.SchuelerKlasse, ergebnissesportfest.Punkte, ergebnisseSportfest.Sportart, ergebnisseSportfest.Ergebnis FROM schuelersportfest JOIN ergebnissesportfest ON schuelersportfest.schuelerID = ergebnissesportfest.SchuelerID");	
						ResultSet myRes = myStmt.executeQuery("Select schuelerID, SchuelerNachname, SchuelerVorname, SchuelerStufe, SchuelerKlasse, Punkte, Sportart, Ergebnis From V_SportfestErgebnisse WHERE sportfestID = 1 Order by SchuelerVorname, SchuelerNachname, SchuelerStufe, SchuelerKlasse, Sportart");
						int counter = 1;
						while(myRes.next()){
				  		 
					  		if(counter==1){
					  		for(int i = 0; i<6;i++){%>
					  			<tr class="success">
							        <td><%=myRes.getString(3)%></td>
							        <td><%=myRes.getString(2)%></td>
							        <td><%=myRes.getString(4)%></td>
							        <td><%=myRes.getString(5)%></td>
							        <td><%=myRes.getString(7) %></td>
							        <td><%=myRes.getString(8)%> </td>
						      </tr>
					  		<% 
					  		myRes.next();
					  		}
					  		counter =2;
					  		} 
					  		
					  		int stop = 0;
					  		if(counter==2){
					  		for(int i = 0; i<6;i++){%>
					  			<tr class="danger">
							        <td><%=myRes.getString(3)%></td>
							        <td><%=myRes.getString(2)%></td>
							        <td><%=myRes.getString(4)%></td>
							        <td><%=myRes.getString(5)%></td>
							        <td><%=myRes.getString(7) %></td>
							        <td><%=myRes.getString(8)%></td>
						      </tr>
					  		<% 
					  		stop++;
					  		if(stop<6){
					  			myRes.next();
					  		}
					  		}
					  		
					  		counter =1;
					  		} 
						}

				    }catch(Exception e){
						e.printStackTrace();
					}finally{
						Class.forName("com.mysql.jdbc.Driver");
						Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "secret");
						
						Statement myStmt = myCon.createStatement();
						myStmt.execute("DROP View V_SportfestErgebnisse");
					}
					%>
				    </tbody>
				  </table>
		  
		  
		  
		  
		  
			</div>
			<div class="panel-footer"> 
				<div class="container text-center">
					<jsp:include page="footer.html" flush="true"/>
				</div>
			</div>
		</div>
	</div>
</body>

</html>