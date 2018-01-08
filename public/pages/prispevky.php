<div class="container">
    <h3 class="center sectLabel">Vaše příspěvky</h3>
    <div class="section z-depth-1">
        <p class="hint"> Zde můžete vidět kompletní seznam vámi nahraných příspěvků.
            <br>Příspěvky čekající na schválení jsou značeny <i class="material-icons lime-text text-ligthen-2">help</i>, schválené příspěvky <i class="material-icons green-text text-darken-3">thumb_up</i> a odmítnuté <i class="material-icons red-text text-darken-2">thumb_down</i> .
            <br>
        </p>
        <?php
        echo '';
        $authored = $con->query("SELECT * FROM mochurap_authors WHERE author_id = ".$_SESSION["user_id"]);
        if($authored->num_rows<1){
            echo '<h5 class="center">  zatím jste nepřidali žádné příspěvky! </h5>';
        }
        else{
            echo'
                <table class="responsive-table highlight" >
                    <thead>
                        <tr>
                            <th>Název</th>
                            <th class="center">Schválení</th>
                            <th class="center">Smazání</th>
                        </tr>
                    </thead>
                <tbody>';
            while($row = $authored->fetch_array()){
                $article = $con->query("SELECT * FROM mochurap_articles WHERE id = ".$row["article_id"])->fetch_Array();
                echo'   <tr>
                            <td>'.$article["title"].'</td>';
                if($article["accepted"]==1){
                    echo'   <td class="center"><i class="material-icons green-text text-darken-3">thumb_up</i></td>';
                }
                elseif($article["accepted"]==0){
                    echo '  <td class="center"><i class="material-icons red-text text-darken-2">thumb_down</i></td>';
                } else{
                    echo '  <td class="center"><i class="material-icons lime-text text-ligthen-2">help</i></td>';
                }
                echo'       <td class="center"><a href="./php/delete.php?article='.$article["id"].'" target="php_target"> <i class="material-icons red-text">close</i> </a>
                        </tr>';
            }            
            echo'       </tbody>
                  </table>';

        }
        ?>
    </div>
    <h3 class="center sectLabel">Přidání nového příspěvku</h3>
    <div class="section z-depth-1">
        <p class="hint"> Zde můžete přidat nový příspěvek
            <br>Maximální velikost přiloženého PDF souboru je 5MB.
            <br>Povinný je pouze název a pdf soubor s příspěvkem, ale kvalitní popis a tagy zvýší šanci na přijetí.
        </p>
        <form id="addForm" method="post" action="php/add.php" enctype="multipart/form-data" target="php_target">
            <div class="row">
                <div class="col s6 input-field">
                    <input id="arTitle" type="text" class="validate" name="title" required>
                    <label for="arTitle ">Název příspěvku</label>
                </div>
                <div class="col s6 input-field">
                    <select multiple name="authors">
                        <option value="" disabled selected>Nikdo</option>
                        <?php 
                            $result = $con->query("SELECT id,fullname FROM mochurap_users WHERE id != ".$_SESSION["user_id"]);
                            while ($row = $result->fetch_array()){
                                echo '<option value="'.$row["id"].';">'.$row["fullname"].'</option>';
                            }
                            $result->close();
                        ?>
                    </select>
                    <label>Spoluautoři příspěvku</label>
                </div>
            </div>
            <div class=" row ">
                <div class="col s6 input-field">
                    <input id="tags" type="text" autocomplete="off">
                    <span>
                        </span>
                    <label for="tags">Tagy</label>
                    <input name="tags" type="hidden" value="">
                </div>
                <div class="file-field input-field col s6">
                    <div class="btn green darken-3">
                        <i class="material-icons">attach_file</i>
                        <input type="file" name="artFile">
                    </div>
                    <div class="file-path-wrapper">
                        <input class="file-path validate" placeholder="PDF soubor" type="text" id="fileInput" required>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col s8 input-field">
                    <textarea id="popis" class="materialize-textarea" length="500" name="comments"></textarea>
                    <label for="popis">Popis a poznámky</label>
                </div>
                <div class="col s2 valign-wrapper">
                    <button type="submit" class="btn btn-large green darken-3 valign">
                        Odeslat
                        <i class="material-icons valign right">send</i>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
