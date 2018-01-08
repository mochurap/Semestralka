<?php 
    session_start();
    //pripojit
    include "dbConnect.php";
    //pripravit query
    $stmt = $con->prepare("SELECT id,username,fullname,rights FROM mochurap_users WHERE username = ? AND password = ?");

        //parametry z postu
        $usr=$_POST["username"];
        $pass=sha1($_POST["password"]);    
    //priradit parametry
    $stmt->bind_param("ss", $usr,$pass);
    //provest
    $stmt->execute();
    $stmt->bind_result($user_id,$user_un,$user_fn,$user_ri);
    while ($stmt->fetch()) {
       $_SESSION["user_id"]=$user_id;
       $_SESSION["user_un"]=$user_un;
       $_SESSION["user_fn"]=$user_fn;
       $_SESSION["user_ri"]=$user_ri;
    }
    if(!isset($user_id)){
        echo "ER_LOG_INVALID";
        exit;
    }
    //trvale
    if($_POST["keepLog"]){
        setcookie("user",$usr,2000000000, "/~mochurap/");
        setcookie("pass",$pass,2000000000, "/~mochurap/");
    }
    //ukoncit
    $stmt->free_result();
    $stmt->close();
    $con->close();
    echo'OK_LOG';
?>
