<h2>Herzlich Willkommen auf unserer Webseite!</h2>
Hier finden Sie aktuelle Informationen, über unsere Schule und bildungspolitische Themen aus NRW.</br></br>
<div class="list-group">
<?php
  $entries = $db->getAllEntries();

  foreach($entries as $entry){
    echo "<div class=\"span8\">";
	echo "<li class=\"list-group-item\">";
	echo "<div class=\"well\">";
      echo "<h3>" . $entry['Ueberschrift'] . "</h3>";
      echo "<p>" . $entry['Inhalt'] . "</p>";
	  echo "</div>";
      echo "<footer> Geschrieben von: <b>" . $entry['Autor'] . "</b> am " .$entry['Datum'] . "</p>";
    
	echo "</div>";
  }

?>
</div>