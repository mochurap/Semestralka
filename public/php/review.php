<?php
    //pripojit
    include "dbConnect.php";
    //pripravit query
    $stmt = $con->prepare("UPDATE mochurap_reviews SET criteria1=?, criteria2=?, criteria3=?, criteria4=?, criteria5=? , submitted=1 WHERE id=".$_POST["id"]);
    $c1=$_POST["criteria1"];
    $c2=$_POST["criteria2"];
    $c3=$_POST["criteria3"];
    $c4=$_POST["criteria4"];
    $c5=$_POST["criteria5"];

    //odeslat
    $stmt->bind_param("iiiii",$c1,$c2,$c3,$c4,$c5);
    $stmt->execute();

    //zavrit
    $stmt->close();
    $con->close();
    echo'OK_REVIEW'
?>
