<?php 
    session_start();
    session_unset();
    session_destroy();
        setcookie("user",$usr,time()-10000, "/~mochurap/");
        setcookie("pass",$pass,time()-10000, "/~mochurap/");
    echo"OK_LOGOUT";
?>
