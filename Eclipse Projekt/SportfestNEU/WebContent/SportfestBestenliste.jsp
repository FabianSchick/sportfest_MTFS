<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sportfest Tabelle</title>
</head>
<body>


<jsp:plugin type="applet"
            code="AusgabeBestenliste.class"
            codebase="SportfestJ/Applets/"
            jreversion="1.5"
            width="500" height="500" >
  <jsp:params><jsp:param name="bgcolor" value="FFFFFF"/></jsp:params>
  <jsp:fallback>No Java support ?</jsp:fallback>
</jsp:plugin>


</body>
</html>