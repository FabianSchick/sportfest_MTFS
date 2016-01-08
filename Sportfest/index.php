<?php
  if(isset($_GET["section"])){
    $section = $_GET("section);
  } else{
    $section ="";
  }
?>

<html>
<head>
  <title>Schul-Website</title>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css"href="style.css">
</head>

<body>
  <div id="wrapper">
    <header class = "shadow">

    </header>
    <div id="containerMenuContent" class="shadow">
      <nav>
        <?php include("menu.php"); ?>
      </nav>
      <div id="content">
        <? php include("Startseite.php"); ?>
      </div>
    </div>
  </div>

  <footer>
    <?php include ("footer.php");?>
  </footer>


</body>

</html>
