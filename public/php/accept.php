<?php 
    //pripojit
    include "dbConnect.php";
    //pripravit query
    $stmt=$con->prepare("UPDATE mochurap_articles SET accepted=? WHERE id=?");
    //upravnei parametru z postu
    $choice=$_GET["choice"];
    $id=$_GET["id"];
    //priradit parametry
    $stmt->bind_param("ii", $choice, $id);
    //provest
    $stmt->execute();
    //ukoncit
    $stmt->close();
    $con->close();
    if($choice==1){
        echo'OK_ACCEPT';
    }
    else{
        echo'OK_DENY';
    }
    

?>
