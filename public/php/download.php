<?php
    //pripojit
    include "dbConnect.php";
    $filedata=$con->query("SELECT filedata FROM mochurap_articles WHERE id =".$_GET["id"]);
    $file=$filedata->fetch_array();
    header("Content-length:".strlen($file["filedata"]));
    header("Content-type: application/pdf");
    header("Content-Disposition: attachment; filename=article.pdf");
    $con->close();
    echo $file["filedata"];
    exit();
?>
