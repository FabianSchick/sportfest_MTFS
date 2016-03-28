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
          klasse:
        </td>
        <td>
          <input type="text" name = "klasseSchueler" required  />
        </td>
    </tr>
    <tr>
    	<td>
    		Sportart
    	</td>
    	<td>
 			<form action="#"> 
   		   		<select name="listeSportarten" > 
        			<option>Dauerlauf</option> 
        			<option>Sprint</option> 
        			<option>Weitsprung</option> 
        			<option>Weitwurf</option> 
        			<option>Hochsprung</option> 
      			</select> 
    		</form>   		
    	</td>
    </tr>
    <tr>
        <td>
        test
        </td>
        <td>
          <input type="text" name = "klasseSchueler" required  />
        </td>
    </tr>
        <td>
          <input type="submit" name = "einloggen" value="Eintragen" />
        </td>
    </tr>
  </table>
</body>
</html>