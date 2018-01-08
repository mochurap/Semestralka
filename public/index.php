<?php 
    session_start();
    include "php/dbConnect.php";
    //kontrola trvaleho loginu
    if(isset($_COOKIE["user"]) && !isset($_SESSION["user_id"])){
        $usr=$_COOKIE["user"];
        $pass=$_COOKIE["pass"];
        $stmt = $con->prepare("SELECT id,username,fullname,rights FROM santoraj_users WHERE username = ? AND password = ?");
        $stmt->bind_param("ss", $usr,$pass);
        $stmt->execute();
        $stmt->bind_result($user_id,$user_un,$user_fn,$user_ri);
        while ($stmt->fetch()) {
            $_SESSION["user_id"]=$user_id;
            $_SESSION["user_un"]=$user_un;
            $_SESSION["user_fn"]=$user_fn;
            $_SESSION["user_ri"]=$user_ri;
        }
        //ukoncit
        $stmt->free_result();
        $stmt->close();
    }
?>
    <!DOCTYPE html>

    <html lang="cs">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0" />
        <title>Jitřenka</title>

        <link rel="icon" href="webicon.ico" type="image/x-icon" />

        <!-- CSS  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/materialize.min.css" type="text/css" rel="stylesheet" />
        <link href="css/main.css" type="text/css" rel="stylesheet" />
    </head>

    <body>
        <!--loader -->
        <div class="preloader-wrapper big active" id="pageLoader">
            <div class="spinner-layer spinner-green-only">
                <div class="circle-clipper left">
                    <div class="circle"></div>
                </div>
                <div class="gap-patch">
                    <div class="circle"></div>
                </div>
                <div class="circle-clipper right">
                    <div class="circle"></div>
                </div>
            </div>
        </div>
        <div id="pageOverlay">
        </div>
        <!-- php target -->
        <iframe name="php_target" id="php_target" tabindex="-1"></iframe>
        <!-- navigace -->
        <div class="navbar-fixed">
            <nav class="green darken-3">
                <div class="nav-wrapper container">
                    <a id="logo-container" href="index.php#!" class="brand-logo"> <img src="img/logo64.png" alt="Jitrenka" class="img-responsive left"> Jitřenka </a>
                    <ul class="right hide-on-med-and-down">
                        <li><a href="index.php">Úvod</a></li>
                        <li><a href="index.php?page=galerie">Galerie</a></li>
                        <li><a href="index.php?page=info">Informace</a></li>
                        <?php
                        if(isset($_SESSION["user_id"])){
                            $user_rights=$_SESSION["user_ri"];
                            echo' 
                                <li>
                                    <li><a class="dropdown-button" href="#!" data-activates="userDropdown" data-beloworigin="true">'.$_SESSION["user_fn"];
                                if($user_rights==3){
                                    echo ' <i class="material-icons left">build</i> ';
                                }
                                else if ($user_rights==2){
                                   echo '<i class="material-icons left">rate_review</i>';
                                }
                                else{
                                    echo '<i class="material-icons left">account_circle</i>';
                                }
                                echo' 
                                </li> </a>
                            <ul id="userDropdown" class="dropdown-content">';
                            if($user_rights>=1){
                                    echo ' <li><a href="index.php?page=prispevky">Příspěvky</a></li>';
                            }
                            if($user_rights>=2){
                                    echo ' <li>  <a href="index.php?page=hodnotit">Hodnocení</a> </li>';
                            } 
                           if($user_rights>=3){
                                    echo ' <li>  <a href="index.php?page=priradit"> Schvalování </a> </li>';
                            }   
                            echo '
                                <li class="divider"></li>
                                <li><a href="php/logout.php" target="php_target">Odhlásit se</a></li>
                                </ul>';
                            }
                        else{
                            echo'<li> <a class="modal-trigger" href="#loginModal">Přihlásit / Registrovat</a></li>';
                        }
                        ?>
                    </ul>

                    <ul id="nav-mobile" class="side-nav">
                        <li><a href="index.php">Úvod</a></li>
                        <li><a href="index.php?page=galerie">Galerie</a></li>
                        <li><a href="index.php?page=info">Informace</a></li>
                        <?php
                        if(isset($_SESSION["user_id"])){
                            $user_rights=$_SESSION["user_ri"];
                            echo' 
                                <li>
                                    <a href="#!" dsiabled>'.$_SESSION["user_fn"];
                                if($user_rights==3){
                                    echo ' (ADMIN) ';
                                }
                                else if ($user_rights==2){
                                   echo '(RECENZENT)';
                                }
                                else{
                                    echo '(UŽIVATEL)';
                                }
                                echo' 
                                </a>
                                </li> 
                            <hr> <div class="containter">';
                            if($user_rights>=1){
                                    echo ' <li><a href="index.php?page=prispevky">Příspěvky</a></li>';
                            }
                            if($user_rights>=2){
                                    echo ' <li>  <a href="index.php?page=hodnotit">Hodnocení</a> </li>';
                            } 
                           if($user_rights>=3){
                                    echo ' <li>  <a href="index.php?page=priradit"> Schvalování </a> </li>';
                            }   
                            echo '
                                <hr>
                                <li><a href="php/logout.php" target="php_target">Odhlásit se</a></li>
                                </div>';
                            }
                        else{
                            echo'<li> <a class="modal-trigger" href="#loginModal">Přihlásit / Registrovat</a></li>';
                        }
                        ?>
                    </ul>
                    <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
                </div>
            </nav>
        </div>
        <!-- login modal -->
        <div id="loginModal" class="modal">
            <div class="modal-content">
                <!-- login -->
                <div>
                    <a href="#!" class="modal-action waves-effect waves-green btn-flat right">Registrovat</a>
                    <h4>Přihlášení</h4>
                    <div class="row">
                        <form method="post" action="php/login.php" target="php_target">
                            <div class="row">
                                <div class="input-field col s12 m6">
                                    <input id="username" type="text" required name="username">
                                    <label for="username">Uživatelské jméno</label>
                                </div>
                                <div class="input-field col s12 m6">
                                    <input id="password" type="password" required name="password">
                                    <label for="password">Heslo</label>
                                </div>
                            </div>
                            <div class="modal-footer valign-wrapper col s12 m6 push-m6">
                                <button type="submit" class="modal-action waves-effect waves-green btn-flat">Přihlásit</button> &nbsp;
                                <input type="checkbox" id="keepLog" class="valign" name="keepLog" />
                                <label for="keepLog">Trvale</label>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- registrace -->
                <div hidden>
                    <a href="#!" class="modal-action waves-effect waves-green btn-flat right">Zpět k přihlášení</a>
                    <h4>Nová registrace</h4>
                    <form id="regForm" method="POST" action="php/register.php" target="php_target">
                        <div class="row">
                            <div class="input-field col s6">
                                <input id="fullnameR" type="text" class="validate" name="fullname" required>
                                <label for="fullnameR">Celé jméno</label>
                            </div>
                            <div class="input-field col s6">
                                <input type="text" id="usernameR" class="validate" name="username" required>
                                <label for="usernameR">Uživatelské jméno</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <input type="password" id="passR" class="validate" name="password" required>
                                <label for="passR">Heslo</label>
                            </div>
                            <div class="input-field col s6">
                                <input type="password" id="passRC" class="validate" required>
                                <label for="passRC">Heslo znovu</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <input type="text" id="emailR" class="validate" name="email" required>
                                <label for="emailR">E-mail</label>
                            </div>
                            <div class="input-field col s6">
                                <input type="text" id="emailRC" class="validate" required autocomplete="off">
                                <label for="emailRC">E-mail znovu</label>
                            </div>
                        </div>
                        <div class="modal-footer s12 m6 push-m6">
                            <button type="submit" class="modal-action waves-effect waves-green btn-flat">Registrovat</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- page -->
        <?php 
        if(!isset($_GET["page"])){
            include "pages/intro.php";
        }
        elseif($_GET["page"]=="galerie"){
            include "pages/galerie.php";
        }
         elseif($_GET["page"]=="info"){
            include "pages/info.php";
        }
        elseif(($_GET["page"])=="prispevky"){ 
            if (isset($user_rights) && $user_rights>0){
                include "pages/prispevky.php";
            }
            else{
                include "pages/401.php";
            }
        }
        elseif(($_GET["page"])=="hodnotit"){ 
            if (isset($user_rights) && $user_rights>1){
                include "pages/hodnotit.php";
            }
            else{
                include "pages/401.php";
            }
        }
        elseif(($_GET["page"])=="priradit"){
            if (isset($user_rights) && $user_rights>2){
                include "pages/priradit.php";
            }
            else{
                include "pages/401.php";
            }
        }
        elseif(($_GET["page"])=="404"){
            include "pages/404.php";
        }
        elseif(($_GET["page"])=="401"){
            include "pages/401.php";
        }
        else{
            include "pages/404.php";
        }
    ?>
            <footer class="page-footer green darken-3">
                <div class="container">
                    <div class="row">
                        <div class="col m6 s12">
                            <h5 class="white-text">Jitřenka 2015</h5>
                            <p class="grey-text text-lighten-4">Klasická konference na téma Pionýr, konkrétně činnost pionárské skupiny Jitřenka. Představování nejnovějších vzdělávacích plánů pro děti a budoucí činnost pionýrské skupiny Jitřenka.
                            </p>


                        </div>
                        <div class="col m4 s12 push-m2">
                            <h5 class="white-text">Sledujte nás také na...</h5>
                            <ul>
                                <li>
                                    <a class="white-text" href="#!"><img class="socLogo" src="img/icons/fb.png" alt="fb icon">facebooku</a>
                                </li>
                                <li>
                                    <a class="white-text" href="#!"><img class="socLogo" src="img/icons/twitter.png" alt="twitter icon">twitteru</a>
                                </li>
                                <li>
                                    <a class="white-text" href="#!"><img class="socLogo" src="img/icons/steam.png" alt="steam icon">steam community</a>
                                </li>
                                <li>
                                    <a class="white-text" href="#!"><img class="socLogo" src="img/icons/yt.png" alt="yt logo">youtube</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="footer-copyright">
                    <div class="container">
                        Vytvořeno díky <a class="lime-text text-lighten-3" href="http://materializecss.com">Materialize</a>,
                        <a class="lime-text text-lighten-3" href="http://jquery.com"> jQuery</a>
                    </div>
                </div>
            </footer>
            <!-- JS -->
            <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js "></script>
            <script type="text/javascript" src="js/materialize.js "></script>
            <script type="text/javascript" src="js/main.js "></script>
    </body>

    </html>
    <?php $con->close() ?>
