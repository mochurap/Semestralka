<div class="container">
    <!-- bg images -->
    <img src="img/bgLogo.png" class="hide-on-med-and-down" id="bgLogo" alt="logo in background">
    <!-- nadpis -->
    <div class="section" id="indexHeader">
        <h1 class="header center green-text text-darken-1">Jitřenka 2017</h1>
        <div class="row center">
            <h5 class="header col s12">Každoroční konference o plánech pionýrské skupiny Jitřenka</h5>
        </div>
        <div class="row center">
            <?php
            if(!isset($_SESSION["user_id"])){
                echo'<a class="modal-trigger btn-large waves-effect waves-green lime" href="#loginModal">Zapojte se</a>';
            }else{
                echo'<a class="modal-trigger btn-large waves-effect waves-green lime" href="index.php?page=prispevky">Zapojte se</a>';
            }
            ?>

        </div>

    </div>

    <!--   souhrn   -->
    <div class="section">
        <div class="row">
            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center lime-text"><i class="material-icons medium">new_releases</i></h2>
                    <h5 class="center">Objevte novinky!</h5>

                    <p class="light">Získejte zkušenosti z oblasti plánoví akcí pro děti. A to nejenom ze stránky zajímavosti pro děti, ale též z finanční nebo organizační stránky.</p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center lime-text"><i class="material-icons medium">help_outline</i></h2>
                    <h5 class="center">Ptejte se!</h5>

                    <p class="light">Na Jitřenkovské konferenci můžete vidět špičkové odborníky i různé poradce pro vývoj dětí do 18 let. Neváhejte se během jednotlivích diskuzí ptát na cokoli co Vás může zajímat.</p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center lime-text"><i class="material-icons medium">people</i></h2>
                    <h5 class="center">Navažte kontakt!</h5>

                    <p class="light">NA Jitřenkovské konferenci potkáte mnoho vedoucích, ci jejich zástupců ze všech možných pionýrských skupin z celé České republiky a případně s nimi spolupracovat.</p>
                </div>
            </div>

        </div>

    </div>
</div>
