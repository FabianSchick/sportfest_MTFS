<?php
  session_start();

  if(isset($_GET["section"]))
  {
    $section = $_GET["section"];
  } else{
    $section ="";
  }

  require_once 'mysql.php';
  $db = new DB();

?>

<html>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css"href="style.css">

<head>
  <title>Schul-Website</title>
</head>

<body>


  



  <div id="wrapper">
    <header class = "shadow">

    </header>
      <nav>
        <?php include("menu.php"); ?>
      </nav>
      <main>
        <?php include("sites.php"); ?>
      </main>
    </div>

    <footer>
      <?php include ("footer.php");?>
    </footer>
  </body>


</html>
