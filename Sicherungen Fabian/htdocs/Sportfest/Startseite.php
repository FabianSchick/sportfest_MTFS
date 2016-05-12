
<?php
  $entries = $db->getAllEntries();

  foreach($entries as $entry){
    echo "<div class=\"span8\">";
      echo "<h1>" . $entry['Ueberschrift'] . "</h1>";
      echo "<p>" . $entry['Inhalt'] . "</p>";
      echo "<footer> Geschrieben von: <b>" . $entry['Autor'] . "</b> am " .$entry['Datum'] . "</p>";
    echo "</div>";
  }

?>
