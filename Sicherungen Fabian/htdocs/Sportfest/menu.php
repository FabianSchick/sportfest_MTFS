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
          </ul>
    </li>
	<?php } ?>
	


  <?php if($db->isUserLoggedIn()) {?><li><a href="index.php?section=Logout">Logout</a></li><?php } ?>
  <?php if($db->isUserLoggedIn()) {?><li><a href="index.php?section=Verfassen">Verfassen</a></li><?php } ?>
</ul>
