<%@page import="java.sql.*" %>


<%
boolean b = false;
try{
		Cookie[] cookie = request.getCookies();
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection myCon = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblog", "root", "secret");
		
		Statement myStmt = myCon.createStatement();
		String sq2 = "Select * FROM users";
		ResultSet myRes = myStmt.executeQuery(sq2);

		if(cookie.length>0){	
			while(myRes.next()){
				for(int i = 0; i<cookie.length;i++){
					if(myRes.getString("session_id").equals(cookie[i].getValue())){
						b=true;
					}
				}
			}
		}
	}catch(Exception e){
		e.printStackTrace();
	}


%>

<div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="../Sportfest/index.php?section=Startseite">Schulwebseite</a>
    </div>
	
    <div class="collapse navbar-collapse" id="myNavbar">
    	<ul class="nav navbar-nav">
        	<li class="dropdown">
          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Home <span class="caret"></span></a>
          			<ul class="dropdown-menu">
            			<li><a href="../Sportfest/index.php?section=Startseite">Über uns</a></li>
            			<li><a href="../SportfestNEU/Bildungsmoeglichkeiten.jsp">Bildungsmöglichkeiten</a></li>
            			<li><a href="../SportfestNEU/InfoLehrer.jsp">Lehrer</a></li>
            			<li><a href="../Sportfest/index.php?section=Impressum">Impressum</a></li>
          			</ul>
    		</li>
	
	
        	<li class="dropdown">
          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sportfest <span class="caret"></span></a>
          			<ul class="dropdown-menu">
            			<li><a href="../Sportfest/index.php?section=Sportfest">Informationen</a></li>
            			<li><a href="../SportfestNEU/tabelle.jsp">Ergebnisse</a></li>
            			<li><a href="../SportfestNEU/Rekorde5.jsp">Rekorde</a></li>
          			</ul>
    		</li>	
	
	
    		<li><a href="../Sportfest/index.php?section=Events">Events</a></li>
			<li><a href="../Sportfest/index.php?section=Kontakt">Kontakt</a></li>
	
			<%if(b==true){ %>
			<li class="dropdown">
          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Inhalte aktualisieren <span class="caret"></span></a>
          			<ul class="dropdown-menu">
            			<li><a href="../SportfestNEU/SportfestEingabeMaskeSchueler.jsp">Sportfest Ergebnisse</a></li>
            			<li><a href="../Sportfest/index.php?section=Verfassen">Artikel verfassen</a></li>
          			</ul>
    		</li>
    		<%} %>
      	</ul>
      	
      <ul class="nav navbar-nav navbar-right">
      <%if(b==true){ %>
			<li><a href="../Sportfest/index.php?section=Logout"><span class="glyphicon glyphicon-log-in"></span>&nbsp Abmelden</a></li>
      <%}else{%>
      			<li class = "navbar-right"><a href="../Sportfest/index.php?section=Lehrer"><span class="glyphicon glyphicon-log-in"></span>&nbsp Anmelden</a></li>
      <%} %>
      </ul>
    </div>
  </div>
