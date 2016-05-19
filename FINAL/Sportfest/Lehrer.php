<?php

  if($db->isUserLoggedIn() === TRUE){
    echo"Du bist bereits eingeloggt - <a href='index.php?section=Logout' alt = 'Ausloggen'>(ausloggen)</a>";
  } else{
    if(isset($_POST['einloggen'])){
      $mail = $_POST['email'];
      $passwort = sha1($_POST['passwort']);

      if($db->login($mail, $passwort) === TRUE){
        echo"Erfolgreich eingeloggt";
        header("refresh:0;url=index.php?section=Startseite");
      } else{
        echo"Einloggen fehlgeschlagen";
      }
    }
?>

<h1>Hier ist der Lehrer Login<h1/>
<form action="index.php?section=Lehrer" method="POST">
  <table>
    <tr>
        <td>
          E-Mail:
        </td>
        <td>
          <input type="email" name = "email" required  />
        </td>
    </tr>
    <tr>
        <td>
          Passwort:
        </td>
        <td>
          <input type="password" name = "passwort" required  />
        </td>
    </tr>
    <tr>
        <td>
          <input type="submit" name = "einloggen" value="Einloggen" />
        </td>
    </tr>
  </table>
</form>
<?php
 }
?>
