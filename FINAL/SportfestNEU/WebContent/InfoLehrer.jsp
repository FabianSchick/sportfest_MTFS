<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <jsp:useBean id="lehrer" scope="application" class="top.AusgabeLehrer"/>
    	<jsp:setProperty property="ausgabe" name="lehrer" value="Diese Seite wird momentan bearbeitet! Wir bitten um Verständnis!"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<jsp:getProperty property="ausgabe" name="lehrer"/>
</div>
		<div class="panel-footer"> 
	 <div class="container text-center">
	 <jsp:include page="footer.html" flush="true"/>
		</div>
		</div>
</body>
</html>