<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
			<jsp:include page="menu.jsp" flush="true"/>
    	</nav>
		<div class="panel panel-default">
			<div class="panel-body"> 
			<ul class="nav nav-tabs">
			  <li role="presentation"><a href="/SportfestNEU/Rekorde5.jsp">5. Klasse</a></li>
			  <li role="presentation"><a href="/SportfestNEU/Rekorde6.jsp">6. Klasse</a></li>
			  <li role="presentation"><a href="/SportfestNEU/Rekorde7.jsp">7. Klasse</a></li>
			  <li role="presentation"><a href="/SportfestNEU/Rekorde8.jsp">8. Klasse</a></li>
			  <li role="presentation"><a href="/SportfestNEU/Rekorde9.jsp">9. Klasse</a></li>
			  <li role="presentation"><a href="/SportfestNEU/Rekorde10.jsp">10. Klasse</a></li>
			  <li role="presentation"><a href="/SportfestNEU/Rekorde11.jsp">11. Klasse</a></li>
			  <li role="presentation"><a href="/SportfestNEU/Rekorde12.jsp">12. Klasse</a></li>
			  <li role="presentation"><a href="/SportfestNEU/RekordeGesamt.jsp">Gesamt</a></li>
			</ul>
			</br>
				<jsp:include page="Rek_7.html" flush="true"/>
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