<h2>Events</h2>
Hier finden Sie alle Informationen über künftige und vergangene Events.</br></br>
<div class="list-group">
<?php
  $entries = $db->getAllEvents();

  foreach($entries as $entry){
    echo "<div class=\"span8\">";
	echo "<li class=\"list-group-item\">";
	echo "<div class=\"well\">";
      echo "<h3>" . $entry['Ueberschrift'] . "</h3>";
      echo "<p>" . $entry['Beschreibung'] . "</p>";
	  echo "</div>";
      echo "<footer> Ort: <b>" . $entry['Ort'] . "</b> am " .$entry['Datum'] . "</p>";
    
	echo "</div>";
  }

?>
</div>