<div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.php?section=Startseite">Schulwebseite</a>
    </div>
	
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Home <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="index.php?section=Startseite">Über uns</a></li>
            <li><a href="../SportfestNEU/Bildungsmoeglichkeiten.jsp">Bildungsmöglichkeiten</a></li>
            <li><a href="../SportfestNEU/InfoLehrer.jsp">Lehrer</a></li>
            <li><a href="index.php?section=Impressum">Impressum</a></li>
          </ul>
    </li>
	
	
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sportfest <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="index.php?section=Sportfest">Informationen</a></li>
            <li><a href="../SportfestNEU/tabelle.jsp">Ergebnisse</a></li>
            <li><a href="../SportfestNEU/Rekorde5.jsp">Rekorde</a></li>
          </ul>
    </li>	
	
	
    <li><a href="index.php?section=Events">Events</a></li>
	<li><a href="index.php?section=Kontakt">Kontakt</a></li>
	
	<?php if($db->isUserLoggedIn()) {?>
	<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Inhalte aktualisieren <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="../SportfestNEU/SportfestEingabeMaskeSchueler.jsp">Sportfest Ergebnisse</a></li>
            <li><a href="index.php?section=Verfassen">Artikel verfassen</a></li>
          </ul>
    </li>
	<?php }?>
	
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <?php if(!($db->isUserLoggedIn())) {?>
		<li class = "navbar-right"><a href="index.php?section=Lehrer"><span class="glyphicon glyphicon-log-in"></span>&nbsp Anmelden</a></li>
	<?php } ?>
	
	<?php if(($db->isUserLoggedIn())) {?>
		<li class = "navbar-right"><a href="index.php?section=Logout"><span class="glyphicon glyphicon-log-in"></span>&nbsp Abmelden</a></li>
	<?php } ?>
      </ul>
    </div>
  </div>
