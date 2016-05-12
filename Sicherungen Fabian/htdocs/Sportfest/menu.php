<ul class="nav nav-tabs">
  <li class="dropdown">
    <a  class="dropdown-toggle" data-toggle="dropdown" href="index.php?section=Startseite"> Home
        <b class="caret"></b>
        <a/>
      <ul class="dropdown-menu" role= "menu" aria-labelledby = "dropdownMenu">
          <li class = "active"><a tableindex ="-1" href="#">Über uns</a></li>
      </ul>
      <ul class="dropdown-menu" role= "menu" aria-labelledby = "dropdownMenu">
          <li class = "active"><a tableindex ="-1" href="#">Bildungsmöglichkeiten</a></li>
      </ul>
      <ul class="dropdown-menu" role= "menu" aria-labelledby = "dropdownMenu">
          <li class = "active"><a tableindex ="-1" href="#">Lehrer</a></li>
      </ul>
      <ul class="dropdown-menu" role= "menu" aria-labelledby = "dropdownMenu">
          <li class = "active"><a tableindex ="-1" href="#">Impressum</a></li>
      </ul>
    </li>

    <li class="dropdown">
      <a  class="dropdown-toggle" data-toggle="dropdown" href="index.php?section=Startseite"> Sportfest
          <b class="caret"></b>
          <a/>
        <ul class="dropdown-menu" role= "menu" aria-labelledby = "dropdownMenu">
            <li class = "active"><a tableindex ="-1" href="#">Informationen</a></li>
        </ul>
        <ul class="dropdown-menu" role= "menu" aria-labelledby = "dropdownMenu">
            <li class = "active"><a tableindex ="-1" href="#">Ergebnisse</a></li>
        </ul>
        <ul class="dropdown-menu" role= "menu" aria-labelledby = "dropdownMenu">
            <li class = "active"><a tableindex ="-1" href="#">Rekorde</a></li>
        </ul>
      </li>

      <li class="dropdown">
        <a  class="dropdown-toggle" data-toggle="dropdown" href="index.php?section=Startseite"> Lehrer
            <b class="caret"></b>
            <a/>
          <ul class="dropdown-menu" role= "menu" aria-labelledby = "dropdownMenu">
              <li class = "active"><a tableindex ="-1" href="#">Login</a></li>
          </ul>
          <ul class="dropdown-menu" role= "menu" aria-labelledby = "dropdownMenu">
              <li class = "active"><a tableindex ="-1" href="#">Logout</a></li>
          </ul>
        </li>

  <li><a href="index.php?section=Kontakt">Kontakt</a></li>

  <li class="dropdown">
    <a  class="dropdown-toggle" data-toggle="dropdown" href="index.php?section=Startseite"> Inhalte aktualisieren
        <b class="caret"></b>
        <a/>
      <ul class="dropdown-menu" role= "menu" aria-labelledby = "dropdownMenu">
          <li class = "active"><a tableindex ="-1" href="#">Inhalte aktualisieren</a></li>
      </ul>
    </li>

  <?php if($db->isUserLoggedIn()) {?><li><a href="index.php?section=Logout">Logout</a></li><?php } ?>
  <?php if($db->isUserLoggedIn()) {?><li><a href="index.php?section=Verfassen">Verfassen</a></li><?php } ?>
</ul>
