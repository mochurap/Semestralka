<?php
      ini_set("display_errors", 1);
  error_reporting(E_ERROR | E_WARNING);
    //db connection
    define('DB_HOST', 'localhost');
    define('DB_NAME', 'db1_vyuka');
    define('DB_USER','root');
    define('DB_PASSWORD','');
    $con=new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);
   // $con=new PDO("mysql:host=localhost;dbname=db1_vyuka","db1_vyuka","db1_vyuka");
    $con->query("SET NAMES utf8");
    if (!$con) {
        echo "ER_DB_CON";
        exit;
    }
?>
