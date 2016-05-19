<?php
  class DB{
    private static $_db_username = "root";
    private static $_db_password = "secret";
    private static $_db_host     = "localhost";
    private static $_db_name     = "newsblog";
    private static $_db;

    function __construct(){
      try{
          self::$_db =  new PDO("mysql:host=" . self::$_db_host . ";dbname=" . self::$_db_name, self::$_db_username, self::$_db_password);
      } catch(PDOException $e) {
          echo"Datenbankverbindung gescheitert!";
          die();
      }
    }

    function isUserLoggedIn(){
        $stmt = self::$_db->prepare("SELECT UserID FROM users WHERE session_ID=:sID");
        $sID = session_id();
        $stmt->bindParam(":sID", $sID);
        $stmt->execute();

        if($stmt->rowCount() === 1){
          return true;
        } else{
          return false;
        }
    }

    function login($userMail, $pw){
      $stmt = self::$_db->prepare("SELECT UserID FROM users WHERE Email=:userMail AND Passwort=:pw");
      $stmt->bindParam(":userMail", $userMail);
      $stmt->bindParam(":pw", $pw);
      $stmt->execute();

      if($stmt->rowCount()===1){
        $stmt = self::$_db->prepare("UPDATE users SET session_ID=:sID WHERE Email=:userMail AND Passwort=:pw");
        $sID = session_id();
        $stmt->bindParam(":sID", $sID);
        $stmt->bindParam(":userMail", $userMail);
        $stmt->bindParam(":pw", $pw);
        $stmt->execute();

        return true;
      	} else{
          return false;
        }
    }

    function logout(){
      $stmt = self::$_db->prepare("UPDATE users SET session_ID='' WHERE session_ID=:sID");
      $sID = session_id();
      $stmt->bindParam(":sID", $sID);
      $stmt->execute();
    }

    function getAllEntries($sort = "DESC"){
      if($sort != "ASC" && $sort != "DESC"){
        return -1;
      }
      $stmt = self::$_db->prepare("SELECT * FROM news ORDER BY EintragsID " . $sort);
      $stmt->execute();

      return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
	
	function getAllEvents($sort = "DESC"){
      if($sort != "ASC" && $sort != "DESC"){
        return -1;
      }
      $stmt = self::$_db->prepare("SELECT * FROM events ORDER BY EventID " . $sort);
      $stmt->execute();

      return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    function eintragenNews($autor, $titel, $datum, $news){
      $stmt = self::$_db->prepare("INSERT INTO news VALUES('', :Autor, :Ueberschrift, :Datum, :Inhalt)");
      $stmt->bindParam(":Autor", $autor);
      $stmt->bindParam(":Ueberschrift", $titel);
      $stmt->bindParam(":Datum", $datum);
      $stmt->bindParam(":Inhalt", $news);
      if($stmt->execute()){
        return true;
      } else{
        return false;
      }
    }
  }
?>
