<?php
    session_start();    
    //pripojit
    include "dbConnect.php";
    //zkontrolovat jeslti je autor
    $authored = $con->query("SELECT * FROM mochurap_authors WHERE author_id = ".$_SESSION["user_id"]." AND article_id = ".$_GET["article"]);
    if($authored->num_rows==0){
        echo "ER_DEL_ARTICLE";
        exit();
    }
    $article=$con->query("SELECT * FROM mochurap_articles WHERE id = ".$_GET["article"])->fetch_array();
    //vymazat recenze
    for($i=1;$i<=3;$i++){
            $con->query("DELETE FROM mochurap_reviews WHERE id = ".$article["review".$i.""]);
    }
    //vymazat clanek
    $con->query("DELETE FROM mochurap_articles WHERE id = ".$_GET["article"]);
    //vymazat z autoru
    $con->query("DELETE FROM mochurap_authors WHERE article_id = ".$_GET["article"]);        
    echo "OK_DEL_ARTICLE";
    $con->close();
