<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

	<form action="${pageContext.request.contextPath}/myservletEingabeMaskeSportfest" method="post">
	<table>
	    <tr>
	        <td>
	          Sprinten:
	        </td>
	        <td>
	          <input type="text" name = "ErgebnisSprinten" required  />
	        </td>
	    </tr>
	    <tr>
	        <td>
	          Dauerlauf:
	        </td>
	        <td>
	          <input type="text" name = "ErgebnisDauerlauf" required  />
	        </td>
	    </tr>
	      <tr>
	        <td>
	          Weitwurf:
	        </td>
	        <td>
	          <input type="text" name = "ErgebnisWeitwurf" required  />
	        </td>
	    </tr>
	      <tr>
	        <td>
	          Weitsprung:
	        </td>
	        <td>
	          <input type="text" name = "ErgebnisWeitsprung" required  />
	        </td>
	    </tr>
	   	<tr>
	        <td>
	          <input type="submit" name = "ErgebnisEintragen" value="Eintragen" onclick =  />
	        </td>
	    </tr>
	  </table>
	  </form>

</body>
</html>