<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../Sportfest/style.css">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<script src="http://code.jquery.com/jquery.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<body>
	<div class="container">
		<header class="shadow"> </header>
		<nav class="navbar navbar-inverse ">
			<jsp:include page="menu.jsp" flush="true" />
		</nav>

		<div class="panel panel-default">
			<div class="panel-body">
				<div id="demo">
					<h2>Unsere Bildungsangebote</h2>
					In unserer Schule können Sie diverse Bildungsangebote wahrnehmen.
					Wir bieten ab der Oberstufe vielfältige Profilkurse an. Dazu
					gehören zum Beispiel Elektrotechnik, Gestaltungstechnik, Wirtschaft
					und Mediendesign.
					<button type="button" onclick="loadDoc()">Erfahren Sie
						mehr</button>
				</div>
				<script>
					//Diese Funktion lädt die Datei Info_Bildungsangebote.txt dynamisch nach
					function loadDoc() {
						var xhttp = new XMLHttpRequest();
						xhttp.onreadystatechange = function() {
							if (xhttp.readyState == 4 && xhttp.status == 200) {
								document.getElementById("demo").innerHTML = xhttp.responseText;
							}
						};
						xhttp.open("GET",
								"../SportfestNEU/Info_Bildungsangebote.txt",
								true);
						xhttp.send();
					}
				</script>
			</div>
			<div class="panel-footer">
				<div class="container text-center">
					<jsp:include page="footer.html" flush="true" />
				</div>
			</div>
		</div>
</body>
</html>
