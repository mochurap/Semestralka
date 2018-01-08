<div class="container">
    <!-- nadpis -->
    <div class="section" id="indexHeader">
        <div class="row center">
            <h3 class="sectLabel">Galerie</h3>
        </div>
        <div class="row">
            <?php
        
        for($i=1;$i<=9;$i++){
            echo'      
                            <div class="col s12 m4">
                              <div class="card">
                                <div class="card-image">
                                  <img src="./img/gallery/'.$i.'.jpg">
                                  <span class="card-title">Foto '.$i.'</span>
                                </div>
                              </div>
                            </div>';
          
        }
        ?>


        </div>
    </div>
</div>
