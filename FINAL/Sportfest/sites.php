<?php
  if($section == "Lehrer") {include("Lehrer.php");}
  elseif($section == "Sportfest") {include ("Sportfest.php");}
  elseif($section == "Logout") {include ("Logout.php");}
  elseif($section == "Verfassen") {include ("Verfassen.php");}
  elseif($section == "Kontakt") {include ("Kontakt.php");}
  elseif($section == "Events") {include ("Events.php");}
  elseif($section == "Impressum") {include ("Impressum.php");}
  else {include ("Startseite.php");}
?>
