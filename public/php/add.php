<?php
    session_start();
    //pripojit
    include "dbConnect.php";
    //pripravit query
    $stmt = $con->prepare("INSERT INTO mochurap_articles (title, tags, filedata, comments) VALUES (?,?,?,?)");
    $stmt2 = $con->prepare("INSERT INTO mochurap_authors (author_id,article_id) VALUES (?,?)");
    //id souboru-pro prirazeni autoru
    $id = $con->query("SELECT `AUTO_INCREMENT` FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'db1_vyuka' AND TABLE_NAME   = 'mochurap_articles'")->fetch_array();
    //upravnei parametru z postu
    $title=$_POST["title"];
    $tags=$_POST["tags"];
    $comm=$_POST["comments"];
    // kontroal typu
    if($_FILES["artFile"]["type"]!="application/pdf") {
        echo "ER_FILE_INVALID";
        exit;
    }
    // kontrola vleikosti
    if ($_FILES["artFile"]["size"] > 50000000) {
        echo "ER_FILE_BIG";
        exit;
    }
    //ulozeni dat souboru
    $fdata = file_get_contents($_FILES['artFile']['tmp_name']);
    //nastaveni autoru
    $author=$_SESSION["user_id"];
    $stmt2->bind_param("ii", $author,$id[0]);
    $stmt2->execute();
    if(isset($_POST["authors"])){
        for($i=0; $i < sizeof(explode( ";",$_POST[ "authors"])); $i++){
            $author=explode( ";",$_POST[ "authors"])[$i];
            $stmt2->execute();
        }
    }
    //priradit parametry
    $stmt->bind_param("ssss", $title,$tags,$fdata,$comm);
    //provest
    $stmt->execute();
    //ukoncit
    $stmt->close();
    $stmt2->close();
    $con->close();
    echo "OK_ADD";
?>
