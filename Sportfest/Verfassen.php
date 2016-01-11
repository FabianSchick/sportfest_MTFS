<h1> News Verfassen </h1>

<?php
  if(isset($_POST['eintragen'])){
    $autor = $_POST['autor'];
    $datum = $_POST['datum'];
    $titel = $_POST['titel'];
    $news = $_POST['news'];

    if($db->eintragenNews($autor, $titel, $datum, $news)){
      echo "Erfolgreich hinzugefügt";
    } else{
      echo "Eintrag konnte nicht hinzugefügt werden!";
    }
  }
?>

<form action="index.php?section=Verfassen" method="POST">
  <table border="0">
    <tr>
        <td> Autor:</td>
        <td><input type ="text" name="autor" placeholder="Autorname" required=""/></td>
    </tr>
    <tr>
        <td> Datum:</td>
        <td>  <input type ="text" name="datum" placeholder="Datum" required=""/></td>
    </tr>
    <tr>
        <td> Titel:</td>
        <td>  <input type ="text" name="titel" placeholder="Titel" required=""/></td>
    </tr>
    <tr>
        <td> News:</td>
        <td><textarea name = "news" cols="80" rows="20"="" required=""></textarea></td>
    </tr>
    <tr>
        <td></td>
        <td><input type="submit" value="Eintragen" name="eintragen"/></td>
    </tr>



</form>
