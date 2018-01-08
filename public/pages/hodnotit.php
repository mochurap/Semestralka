<div class="container">
    <div class="section">
        <h3 class="header center">Hodnocení příspěvků</h3>
        <ul class="collapsible" data-collapsible="accordion">
            <p class="hint"> Zde vidíte příspěvky které vám byly přiřazeny k recenzi.
                <br>Již ohodnocené příspěvky jsou označeny <i class="material-icons green-text">done</i>, ještě nehodnocené <i class="material-icons red-text">new_releases</i>.
                <br>Hodnocení po odeslání již nelze měnit. </p>
            <hr>
            <?php
                $active_found=false;
                $reviews = $con->query("SELECT * FROM  mochurap_reviews WHERE reviewer_id = ".$_SESSION["user_id"]." ORDER BY id DESC"); 
                if($reviews->num_rows<1){
                    echo '<h5 class="center"> Zatím vám nic nebylo přiděleno! </h5> <br>';
                }
                else{
                //while pro prirazene recneze
                while($review = $reviews->fetch_Array()){
                    $review_data=$review;
                    //clanek
                    $article = $con->query("SELECT * FROM  mochurap_articles WHERE review1=".$review["id"]." OR review2=".$review["id"]." OR review3=".$review["id"]." ORDER BY id DESC")->fetch_Array();
                    //autori
                    $authorsStr="";
                    $authorsArr = $con->query("SELECT author_id FROM mochurap_authors WHERE article_id =".$article["id"]);
                    while ($author = $authorsArr->fetch_array()){
                        $nameArr= $con->query("SELECT fullname FROM mochurap_users WHERE id = ".intval($author["author_id"]));
                        $name=$nameArr->fetch_array();
                        $authorsStr=$authorsStr.",".$name[0];
                    }
                    $authorsStr=trim($authorsStr, ",");

                    echo'<li>
                            <div class="collapsible-header ';
                    if(!$active_found && $review_data["submitted"]==0 ){
                        echo'active';
                        $active_found=true;
                    }
                    echo '">';
                    if($review_data["submitted"]==0){
                        echo '<i class="material-icons red-text">new_releases</i>';
                    }
                    else{
                        echo '<i class="material-icons green-text">done</i>';
                    }
                    echo $article["title"].' - '.$authorsStr.'
                            </div>
                            <div class="collapsible-body">
                                <div class="row">
                                    <div class="col s12 m6">
                                        <a href="./php/download.php?id='.$article["id"].'" class="right black-text" target="_blank"> <i class="material-icons medium">file_download</i>
                                        <br>Stáhnout</a>
                                        <h4>'.$article["title"].'</h4>
                                        <h5 class="light">'.$authorsStr.'</h5>';
                    echo                    '<p> <h5>Popis a komentáře:</h5> '.$article["comments"].' </p>';
                                                    for($i=0; $i < (sizeof(explode(";" , $article["tags"])))-1; $i++){
                    echo                    '<div class="chip">'.explode(";" , $article["tags"])[$i].'</div> ';      
                                }
                    
                     echo'          </div>
                                    <form class="ratingForm" action="./php/review.php" method="post" target="php_target">
                                    <input type="hidden" required name="id" value="'.$review_data["id"].'">
                                    <div class="col s12 m6">';
                    $criteria= array(1 => "Zajímavost", 2=> "Originalita",  3 => "Přínos",  4 => "Zpracování",  5 => "Celkové doporučení");
                    for($i=1; $i<=5; $i++){
                        echo'           <div class="row">
                                            <div class="col s6">'.$criteria[$i].'</div>';
                        if($review_data["submitted"]==1){
                            echo'           <div class="col s6">';
                            for($j=0; $j<$review_data["criteria".$i]; $j++){
                                echo'           <i class="material-icons lime-text s6">star</i>';
                            }
                            for($j=0; $j<5-$review_data["criteria".$i]; $j++){
                                echo'           <i class="material-icons lime-text s6">star_border</i>';
                            }
                            echo'           </div>';
                        }
                        else{
                            echo'           <div class="col s6 rateStars">';
                            for($j=0; $j<5; $j++){
                                echo'<a href="#!">  <i class="material-icons lime-text s6">star_border</i> </a>';
                                
                            }
                            echo'
                                    </div>';
                        }
                        echo'</div>';
            
                    }
                    echo'           </div>                    
                                    <div class="row center">';
                    for($j=1; $j<=5; $j++){
                        echo'               <input type="hidden" required name="criteria'.$j.'">';
                    }
                    if($review_data["submitted"]==0){
                        echo'               <button class="btn waves-effect waves-light green darken-3" type="submit">Hodnotit
                                                <i class="material-icons right">send</i>
                                            </button>';
                    }echo'
                                    </div>
                                   </form>
                                </div>
                            </div>
                        </li>';
                }
            }
    
            ?>
        </ul>
    </div>
</div>
