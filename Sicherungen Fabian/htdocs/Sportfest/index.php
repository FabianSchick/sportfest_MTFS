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
   <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" media="screen">
   <script src="http://code.jquery.com/jquery.js"></script>
   <script src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   


<head>
  <title>Schul-Website</title>
</head>


<body>

<div class="container">





    <header class = "shadow">

    </header>
      <nav class="navbar navbar-inverse ">
	  
        
          <?php include("menu.php"); ?>
       
      </nav>


     <div class="panel panel-default">
  <div class="panel-body"> 
        <?php include("sites.php"); ?>
		</div>

    
     <div class="panel-footer"> 
	 <div class="container text-center">
	 <?php include ("footer.php");?></div>
	 </div>
</div>
   

  </body>
</div>

</html>
