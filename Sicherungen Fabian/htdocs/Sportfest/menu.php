<ul class="nav nav-tabs">
  
	
	
	<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Home <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Über uns</a></li>
            <li><a href="#">Bildungsmöglichkeiten</a></li>
            <li><a href="#">Lehrer</a></li>
            <li><a href="#">Impressum</a></li>
          </ul>
    </li>
<<<<<<< Updated upstream
	
	
	<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sportfest <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="index.php?section=Sportfest">Informationen</a></li>
            <li><a href="#">Ergebnisse</a></li>
            <li><a href="#">Rekorde</a></li>
          </ul>
    </li>	
	
	
	<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Lehrer <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="index.php?section=Lehrer">Login</a></li>
            <?php if($db->isUserLoggedIn()) {?><li><a href="index.php?section=Logout">Logout</a></li><?php } ?>
=======

    <li class="dropdown">
      <a  class="dropdown-toggle" data-toggle="dropdown" href="index.php?section=Startseite"> Sportfest
          <b class="caret"></b>
          <a/>
        <ul class="dropdown-menu" role= "menu" aria-labelledby = "dropdownMenu">
            <li"><a tableindex ="-1" href="#">Informationen</a></li>
            <li><a tableindex ="-1" href="#">Ergebnisse</a></li>
            <li><a tableindex ="-1" href="#">Rekorde</a></li>
        </ul>
      </li>

    <li role = "presentation" class="dropdown">
        <a  class="dropdown-toggle" data-toggle="dropdown" href="index.php?section=Startseite"> Lehrer
            
            <a/>
			<ul class="dropdown-menu" role= "menu" aria-labelledby = "dropdownMenu">
              <li><a tableindex ="-1" href="#">Login</a></li>
              <li><a tableindex ="-1" href="#">Logout</a></li>
>>>>>>> Stashed changes
          </ul>
    </li>
	
	 <li><a href="index.php?section=Events">Events</a></li>
	 <li><a href="index.php?section=Kontakt">Kontakt</a></li>
	
	  <?php if($db->isUserLoggedIn()) {?>
	<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Inhalte aktualisieren <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Sportfest Ergebnisse</a></li>
            <li><a href="#">Artikel verfassen</a></li>
            <li><a href="#">Something else here</a></li>
            <li><a href="#">Separated link</a></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
    </li>
	<?php } ?>
	


  <?php if($db->isUserLoggedIn()) {?><li><a href="index.php?section=Logout">Logout</a></li><?php } ?>
  <?php if($db->isUserLoggedIn()) {?><li><a href="index.php?section=Verfassen">Verfassen</a></li><?php } ?>
</ul>
