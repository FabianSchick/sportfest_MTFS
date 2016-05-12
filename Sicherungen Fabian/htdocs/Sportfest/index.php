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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
   <!-- Bootstrap -->
   <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
   <script src="http://code.jquery.com/jquery.js"></script>


<head>
  <title>Schul-Website</title>
</head>

<body>






  <div id="wrapper">
    <header class = "shadow">

    </header>
      <nav>
        <div class="dropdown">
          <?php include("menu.php"); ?>
        </div>
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
