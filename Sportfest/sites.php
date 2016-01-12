<?php
  if($section == "Lehrer") {include("Lehrer.php");}
  elseif($section == "Sportfest") {include ("Sportfest.php");}
  elseif($section == "Logout") {include ("Logout.php");}
  elseif($section == "Verfassen") {include ("Verfassen.php");}
  elseif($section == "Kontakt") {include ("Kontakt.php");}
  else {include ("Startseite.php");}
?>
