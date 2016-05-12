<ul class="nav nav-tabs">
  <li class="dropdown">
    <a  class="dropdown-toggle"
        data-toggle="dropdown"
        href="index.php?section=Startseite">
        Home
        <b class="caret"></b>
        <a/>
      <ul class="dropdown-menu">
          <a class="menu"
          href="Über uns">
      </ul>
    </li>
  <li><a href="index.php?section=Sportfest">Sportfest</a></li>
  <li><a href="index.php?section=Lehrer">Lehrer</a></li>
  <li><a href="index.php?section=Kontakt">Kontakt</a></li>
  <?php if($db->isUserLoggedIn()) {?><li><a href="index.php?section=Logout">Logout</a></li><?php } ?>
  <?php if($db->isUserLoggedIn()) {?><li><a href="index.php?section=Verfassen">Verfassen</a></li><?php } ?>
</ul>
