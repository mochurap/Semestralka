<?php
    //pripojit
    include "dbConnect.php";
    if(isset($_POST["del"])){
        $result = $con->query("DELETE FROM mochurap_reviews WHERE id = ".$_POST["del"]);
        if(!$result){
            echo "ER_ASS_DEL";
            exit();
        }
        $result = $con->query("UPDATE mochurap_articles SET review".$_POST["nr"]."=NULL WHERE id=".$_POST["id"]);
        if(!$result){
            echo "ER_ASS_DEL";
            exit();
        }
        echo "OK_ASS_DEL";
    }else{
        $id = $con->query("SELECT `AUTO_INCREMENT` FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'db1_vyuka' AND   TABLE_NAME   = 'mochurap_reviews'")->fetch_array()[0];
        //vytvorit recenzi
        $result = $con->query("INSERT INTO mochurap_reviews (reviewer_id) VALUES (".$_POST["reviewer"].")");
        if(!$result){
            echo "ER_ASSIGN";
            exit();
        }
        //priradit ji ke clanku
        $result = $con->query("UPDATE mochurap_articles SET review".$_POST["nr"]."=".$id." WHERE id=".$_POST["id"]);
        if(!$result){
            echo "ER_ASSIGN";
            exit();
        }
        $con->close();
        echo "OK_ASSIGN";
    }

?>
