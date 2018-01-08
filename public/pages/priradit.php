<div class="container">
    <div class="section">
        <h3 class="header center">Přidělení recenzentům</h3>
        <ul class="collapsible" data-collapsible="expandable">
            <p class="hint"> Zde se přiřazují příspěvky recenzentům.
                <br>Příspěvky čekající na schválení jsou značeny <i class="material-icons lime-text text-ligthen-2">help</i>, schválené příspěvky <i class="material-icons green-text text-darken-3">thumb_up</i> a odmítnuté <i class="material-icons red-text text-darken-2">thumb_down</i>.
                <br>Schválení nebo zamítnutí po odeslání již nelze měnit. </p>
            <hr>
            <?php
                $active_found=false;
                $articles = $con->query("SELECT * FROM  mochurap_articles ORDER BY id DESC");
                while ($article = $articles->fetch_array()){
                    //promenne pro kazdy clanek
                    //autori
                    $authorsStr="";
                    $authors = $con->query("SELECT author_id FROM mochurap_authors WHERE article_id =".$article["id"]);
                    while ($author = $authors->fetch_array()){
                        $nameArr= $con->query("SELECT fullname FROM mochurap_users WHERE id = ".intval($author["author_id"]));
                        $name=$nameArr->fetch_array();
                        $authorsStr=$authorsStr.",".$name[0];
                    }
                    $authorsStr=trim($authorsStr, ",");
                    //pocet prirazenych
                    $assig_count=0;
                    if(isset($article["review1"])) $assig_count++;
                    if(isset($article["review2"])) $assig_count++;
                    if(isset($article["review3"])) $assig_count++;
                    //pocet vyplnenych
                    $submit_count=0;
                    for ($i = 1; $i <= 3; $i++){
                        $review=null;
                        if(isset($article["review".$i])){
                            $review = $con->query("SELECT * FROM mochurap_reviews WHERE id =".$article["review".$i])->fetch_Array();
                            if($review["submitted"]==1){
                                $submit_count++;
                            }   
                        }
                    }
                    echo'<li>
                            <div class="collapsible-header';
                    if(!$active_found && ($assig_count<3 || ($assig_count==3 && $article["accepted"]==-1))){
                        echo' active';
                        $active_found=true;
                    }
                            echo'">';
                    if($article["accepted"]==1){
                        echo '<i class="material-icons green-text text-darken-3">thumb_up</i>';
                    }
                    elseif($article["accepted"]==0){
                        echo '<i class="material-icons red-text text-darken-2">thumb_down</i>';
                    }
                    else{
                        echo '<i class="material-icons lime-text text-ligthen-2">help</i>';
                    }

                    echo        $article["title"].' - '.$authorsStr.' | Přiřazeno:'.$assig_count.'/3 | Vyplněno:'.$submit_count.'/'.$assig_count.'
                            </div>
                                <div class="collapsible-body">
                                    <div class="row center">
                                        <h5> '.$article["title"].' - <span class="light">'.$authorsStr.'</span> </h5>
                                    </div>';
                    for ($i = 1; $i <= 3; $i++){
                        $review=null;
                        $revSet=false;
                        if(isset($article["review".$i])){
                            $revSet=true;
                            $review = $con->query("SELECT * FROM mochurap_reviews WHERE id =".$article["review".$i])->fetch_Array();
                        }
                        echo'        <div class="row">
                                        <form  id="assForm" method="post" action="php/assign.php" target="php_target">
                                            <input type="hidden" name="nr" value="'.$i.'">
                                            <input type="hidden" name="id" value="'.$article["id"].'">
                                        <div class="col s12 m4 valign-wrapper">
                                            <div class="input-field col s9">';
                    if($revSet){
                        $revName =  $con->query("SELECT fullname FROM mochurap_users WHERE id =".$review["reviewer_id"])->fetch_Array();
                        echo'                   <h5 class="right">'.$revName[0].'</h5>
                                                <input type="hidden" name="del" value="'.$article["review".$i].'">';
                    }else{
                        echo'                   <select id="revSel" required name="reviewer">
                                                    <option value="" disabled selected>Přidělit k recenzi</option>';
                          $reviewers= $con->query("SELECT id, fullname FROM mochurap_users WHERE rights >=2");
                        while ($reviewer = $reviewers->fetch_array()){
                            $eligible=true;
                            $authors = $con->query("SELECT author_id FROM mochurap_authors WHERE article_id =".$article["id"]);
                            while ($author = $authors->fetch_array()){
                                if($author["author_id"]==$reviewer["id"]){
                                    $eligible=false;
                                }/*
                                $assigned = $con->query("SELECT reviewer_id FROM mochurap_reviews WHERE article_id =".$article["id"]);
                                while($assign=$assigned->fetch_array()){
                                    if($reviewer["id"]==$assign["reviewer_id"]){
                                            $eligible=false;
                                    }
                                }*/
                            }
                            if($eligible){
                                echo'                   <option value="'.$reviewer["id"].'">'.$reviewer["fullname"].'</option>';
                            }

                        }
                        echo'                       </select>
                                                    <label>Recenzent '.$i.'</label>';
                        }
                    echo'
                                            </div>
                                            <div class="col s3 center"> '; 
      
                        if($revSet) echo       '<button type="submit" class="btn red darken-2">
                                                    <i class="material-icons">cancel</i>
                                                </buttton>';
                        else echo '             <button type="submit" class="btn green darken-3">
                                                    <i class="material-icons">send</i>;
                                                </buttton>';
                                echo'  

                                            </div>
                                        </div>
                                        </form>
                                    <div class="col s12 m8" center valign>
                                        <div class="col m1 center">
                                        &nbsp;
                                        </div>
                                        ';
                        $criteria= array(1 => "Zajímavost", 2=> "Originalita",  3 => "Přínos",  4 => "Zpracování",  5 => "Doporučení");
                        for($j=1; $j<=5; $j++){
                                echo'   <div class="col s12 m2 center">
                                            <span class="ratingCard z-depth-1">'.$criteria[$j].' <br> ';
                            if(isset($review["criteria".$j])){
                                echo $review["criteria".$j];
                            } else{
                                echo '---';
                            }
                            echo'           </span>
                                        </div>';
                        }
                        echo'       </div>
                                </div>';
                    }
                    if($submit_count==3 && $article["accepted"]==-1){
                        echo'
                            <div class="row">
                                <div class="col s12 m6 push-m6 valign-wrapper">
                                    <h4 class="valign">Schválit:</h4>
                                    <a href = "./php/accept.php?choice=1&id='.$article["id"].'" target="php_target">
                                        <i class="material-icons right valign medium green-text text-darken-3">thumb_up</i>
                                    </a>
                                    <a href = "./php/accept.php?choice=0&id='.$article["id"].'" target="php_target">
                                        <i class="material-icons right valign medium red-text text-darken-2">thumb_down</i>
                                    </a>

                                </div>
                            </div>';
                    }
                    echo'
                        </div>                        
                 </li>';

                }
            ?>
        </ul>
    </div>
</div>
