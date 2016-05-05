<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css"href="style.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"href="../Sportfest/style.css">
<title>Insert title here</title>
</head>
<body>

<div id="wrapper">
    <header class = "shadow">
		
    </header>
    <nav>
		<jsp:include page="menu.html" flush="true"/>
    </nav>
    <main>
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
    </main>
</div>
<%
	
%>

  

</body>
</html>