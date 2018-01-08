$(document).ready(function () {
    // modaly
    $('.modal-trigger').leanModal();
    //selecty s material designem
    $('select').material_select();
    //mobilni burger
    $(".button-collapse").sideNav();
    //overlay
    $("#pageOverlay").hide();
    $("#pageLoader").hide();
    //prirazeni trigger
    //registrace
    $("#loginModal a:first").on("click", function () {
        $($("#loginModal>.modal-content>div")[0]).slideToggle(200, function () {
            $($("#loginModal>.modal-content>div")[0]).hide;
            $($("#loginModal>.modal-content>div")[1]).slideToggle(200, function () {
                $($("#loginModal>.modal-content>div")[1]).show;
            });
        });

    });
    //zpet na prihlaseni
    $("#loginModal > div > div:nth-child(2) > a").on("click", function () {
        $($("#loginModal>.modal-content>div")[1]).slideToggle(200, function () {
            $($("#loginModal>.modal-content>div")[1]).hide;
            $($("#loginModal>.modal-content>div")[0]).slideToggle(200, function () {
                $($("#loginModal>.modal-content>div")[0]).show;
            });
        });

    });

    //tagy
    $("#tags").on("input", function () {
        tag = $(this).val();
        if (tag[tag.length - 1] == " ") {
            tag = tag.trim();
            $(this).val(" ");
            if (tag.length == 0) {
                return;
            }
            $("#tags+span").append("<div class = 'chip'>" + tag + "<i class = 'material-icons'> close </i> </div> ");
            $("#tags~input").val($("#tags~input").val() + tag + ";");
        }

    });
    $("#addForm").on("submit", function () {
        var tagy = ""
        $("#tags+span>div").each(function () {
            tagy = tagy + $(this).contents().get(0).nodeValue + ";";
        })
        $("#tags~input").val(tagy);
    });
    //hodnoceni-hvezdy
    $(".rateStars").on("mouseover", "a", function () {
        $($(this).closest("div").find("i:lt(" + ($(this).index() + 1) + ")").text("star"));

    });
    $(".rateStars").on("mouseout", "a", function () {
        $($(this).closest("div").find("i")).text("star_border");
        var rated = $($(this).closest("form").find("input")[$($(this).closest("div.row")).index() + 1]).val();
        if (rated != "") {
            $($(this).closest("div").find("i:lt(" + rated + ")").text("star"));
        }
    });
    $(".rateStars").on("click", "a", function () {
        $($(this).closest("form").find("input")[$($(this).closest("div.row")).index() + 1]).val($(this).index() + 1);
        $($(this).closest("div").find("i:lt(" + ($(this).index() + 1) + ")").text("star"));
    });
    //odeslani hodnoceni
    $(".ratingForm").on("submit", function (e) {
        var invalid = false;
        $(this).find("input:not([name='id'])").each(function () {
            if ($(this).val() == "" || $(this).val() < 1 || $(this).val() > 5) {
                invalid = true;
            }
        });
        if (invalid) {
            e.preventDefault();
            Materialize.toast('Vyplň prosím všechny kategorie!', 5000, 'rounded');
        } else {
            return true;
        }
    });
    //invalidace inputu
    $("input").on("invalid", function () {
        $(this).removeClass("valid");
        $(this).addClass("invalid");
    });
    //oodstraneni mezer v inputech
    $("input").on("blur", function () {
        $(this).val($(this).val().trim());
    });
    //revalidace zpatky
    $("input").on("input", function () {
        if ($(this).val() != "") {
            $(this).removeClass("invalid");
            $(this).addClass("valid");
        }
    });
    //porovnani hesel pri registraci
    $("#passRC").on("blur", function () {
        if ($(this).val() != $("#passR").val()) {
            $(this).addClass("invalid");
            $("#passR").addClass("invalid");
            Materialize.toast('Hesla se neshodují!', 1500, 'rounded');
        } else {
            $(this).removeClass("invalid");
            $("#passR").removeClass("invalid");
        }
    });
    $("#passR").on("blur", function () {
        if ($(this).val() != $("#passRC").val() && $("#passRC").val() != "") {
            $(this).addClass("invalid");
            $("#passRC").addClass("invalid");
            Materialize.toast('Hesla se neshodují!', 1500, 'rounded');
        } else {
            $(this).removeClass("invalid");
            $("#passRC").removeClass("invalid");
        }
    });
    //porovnani mailu pri registraci a kontrola proti regexu
    $("#emailRC").on("blur", function () {
        if ($(this).val().toLowerCase() != $("#emailR").val().toLowerCase()) {
            $(this).addClass("invalid");
            $("#emailR").addClass("invalid");
            Materialize.toast('Maily se neshodují!', 1500, 'rounded');
        } else {
            $(this).removeClass("invalid");
            $("#emailR").removeClass("invalid");
        }
    });
    $("#emailR").on("blur", function () {
        if (!$(this).val().match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {
            $(this).addClass("invalid");
            $("#emailRC").addClass("invalid");
            Materialize.toast('Neplatný formát e-mailu!', 1500, 'rounded');
            return;
        }
        if ($(this).val().toLowerCase() != $("#emailRC").val().toLowerCase() && $("#emailRC").val() != "") {
            $(this).addClass("invalid");
            $("#emailRC").addClass("invalid");
            Materialize.toast('Maily se neshodují!', 1500, 'rounded');
        } else {
            $(this).removeClass("invalid");
            $("#emailR").removeClass("invalid");
        }
    });
    //odeslani formu - invalidace a loader
    $("form").on("submit", function (e) {
        if ($(this).find(".invalid").length != 0) {
            e.preventDefault();
            Materialize.toast('Ve formuláři je chyba!', 5000, 'rounded');
        } else {
            $("#pageOverlay").show();
            $("#pageLoader").show();
        }
    });
    //priradeni rcenzentu - zmena hidden
    $("#assForm").find("select").on("change", function () {
        $($(this).closest("input:hidden")).val($(this).val());
    });
    //ajax
    $("#php_target").load(function () {
        $("#pageOverlay").hide();
        $("#pageLoader").hide();
        var result = $(this).contents().find("body").text();
        //registrace
        if (result == "ER_USR_EXISTS") {
            $("#usernameR").addClass("invalid");
            Materialize.toast('Uživatelské jméno je již registované!', 1500, 'rounded');
        } else if (result == "ER_MAIL_EXISTS") {
            $("#emailR").addClass("invalid");
            $("#emailRC").addClass("invalid");
            Materialize.toast('E-mail je již zaregistrovaný!', 1500, 'rounded');
        } else if (result == "OK_REG") {
            Materialize.toast('Registrace byla úspěšná!', 1500, 'rounded');
            setTimeout(function () {
                window.top.location.reload();
            }, 1500);
        }
        //login
        else if (result == "ER_LOG_INVALID") {
            Materialize.toast('Neplatné jméno nebo heslo!', 1500, 'rounded');
            $("#password").addClass("invalid");
        } else if (result == "OK_LOG") {
            Materialize.toast('Přihlášení úspěšné!', 1500, 'rounded');
            setTimeout(function () {
                window.top.location.reload();
            }, 1500);
        } else if (result == "OK_LOGOUT") {
            Materialize.toast('Odhlášení úspěšné!', 1500, 'rounded');
            setTimeout(function () {
                window.top.location.replace("index.php");
            }, 1500);
        }
        //pridavani
        else if (result == "ER_FILE_INVALID") {
            Materialize.toast('Neplatný soubor!', 1500, 'rounded');
            $("#fileInput").addClass("invalid");

        } else if (result == "ER_FILE_BIG") {
            Materialize.toast('Soubor je příliš velký!', 1500, 'rounded');
            $("#fileInput").addClass("invalid");
        } else if (result == "OK_ADD") {
            Materialize.toast('Příspěvek přidán!', 1500, 'rounded');
            setTimeout(function () {
                window.top.location.reload();
            }, 1500);
        }
        //prirazovani
        else if (result == "OK_ASSIGN") {
            Materialize.toast('Příspěvek přiřazen!', 1500, 'rounded');
            setTimeout(function () {
                window.top.location.reload();
            }, 1500);
        } else if (result == "ER_ASSIGN") {
            Materialize.toast('Chyba piř přiřazení', 1500, 'rounded');
        } else if (result == "OK_ASS_DEL") {
            Materialize.toast('Přiřazení odstraněno!', 1500, 'rounded');
            setTimeout(function () {
                window.top.location.reload();
            }, 1500);
        } else if (result == "ER_ASS_DEL") {
            Materialize.toast('Chyba při odstranění!', 1500, 'rounded');
        }
        //hodncoeni
        else if (result == "OK_REVIEW") {
            Materialize.toast('Hodnocení odesláno!', 1500, 'rounded');
            setTimeout(function () {
                window.top.location.reload();
            }, 1500);
        }
        //schvalovani
        else if (result == "OK_ACCEPT") {
            Materialize.toast('Příspěvek přijmut!', 1500, 'rounded');
            setTimeout(function () {
                window.top.location.reload();
            }, 1500);
        } else if (result == "OK_DENY") {
            Materialize.toast('Příspěvek zamítnut!', 1500, 'rounded');
            setTimeout(function () {
                window.top.location.reload();
            }, 1500);
        }
        //mazani prispevku
        else if (result == "OK_DEL_ARTICLE") {
            Materialize.toast('Příspěvek smazán!', 1500, 'rounded');
            setTimeout(function () {
                window.top.location.reload();
            }, 1500);
        } else if (result == "ER_DEL_ARTICLE") {
            Materialize.toast('Příspěvek se nepodařilo smazat!', 1500, 'rounded');
        }
        //db error
        else if (result == "ER_DB_CON") {
            Materialize.toast('Chyba připojení k databázi!', 1500, 'rounded');
            setTimeout(function () {
                window.top.location.reload();
            }, 1500);
        }
    });

});
