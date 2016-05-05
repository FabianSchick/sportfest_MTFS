
<ul>
  <li><a href="index.php?section=Startseite">Home<a/></li>
  <li><a href="index.php?section=Sportfest">Sportfest</a></li>
  <li><a href="index.php?section=Lehrer">Lehrer</a></li>
  <li><a href="index.php?section=Kontakt">Kontakt</a></li>
  <li><a href="../SportfestNEU/SportfestEingabeMaskeSchueler.jsp">Eingabe</a></li>
  <?php if($db->isUserLoggedIn()) {?><li><a href="index.php?section=Logout">Logout</a></li><?php } ?>
  <?php if($db->isUserLoggedIn()) {?><li><a href="index.php?section=Verfassen">Verfassen</a></li><?php } ?>
</ul>
