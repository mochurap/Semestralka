<?php 
    //pripojit
    include "dbConnect.php";
    //pripravit query
    $stmt = $con->prepare("INSERT IGNORE INTO mochurap_users (username, fullname, password, email) VALUES (?,?,?,?)");
    $test_user=$con->prepare("SELECT * FROM mochurap_users WHERE username=?");
    $test_email=$con->prepare("SELECT * FROM mochurap_users WHERE email=?");
    //upravnei parametru z postu
    $usr=$_POST["username"];
    $full=$_POST["fullname"];
    $pass=sha1($_POST["password"]);
    $mail=$_POST["email"];
    //priradit parametry
    $stmt->bind_param("ssss", $usr,$full,$pass,$mail);
    $test_user->bind_param("s",$usr);
    $test_user->execute();
    if($test_user->fetch()){
        echo "ER_USR_EXISTS";
        exit;
    }
    $test_email->bind_param("s",$mail);
    $test_email->execute();
    if($test_email->fetch()){
        echo "ER_MAIL_EXISTS";
        exit;
    }
    //provest
    $stmt->execute();
    //ukoncit
    $stmt->close();
    $test_email->close();
    $test_user->close();
    $con->close();
    echo "OK_REG";
?>
