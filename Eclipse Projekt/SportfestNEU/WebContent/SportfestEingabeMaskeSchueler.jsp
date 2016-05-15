<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css"href="style.css">
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
    <form action="${pageContext.request.contextPath}/myservletEingabeMaskeSportfest" method="post">
<table>
    <tr>
        <td>
          Vorname:
        </td>
        <td>
          <input type="text" name = "vornameSchueler" required  />
        </td>
    </tr>
    <tr>
        <td>
          Nachname:
        </td>
        <td>
          <input type="text" name = "nachnameSchueler" required  />
        </td>
    </tr>
      <tr>
        <td>
          Stufe:
        </td>
        <td>
          <input type="text" name = "stufeSchueler" required  />
        </td>
    </tr>
      <tr>
        <td>
          Klasse:
        </td>
        <td>
          <input type="text" name = "klasseSchueler" required  />
        </td>
    </tr>
   	<tr>
        <td>
          <input type="submit" name = "SchuelerPruefen" value="SchuelerPruefen" />
        </td>
    </tr>
  </table>
  </form>
 </div>
<div class="panel-footer"> 
	 <div class="container text-center">
	 <jsp:include page="footer.html" flush="true"/>
		</div>
		</div>
		</div>

  

</body>
</html>