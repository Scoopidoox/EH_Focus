<!DOCTYPE html>
<html lang="fr">
    <head>
        <?php require_once("../includes/EH_head.php"); ?>
    </head>
    <body>
    <section>
    <?php require_once("../includes/EH_header.php"); ?>
        <div class="cardContainer">

            <?php
                $EH_urlId = $_GET["id"] ?? 1;
                $EH_requete = "SELECT idArticle, titreArticle, srcImage FROM article as A INNER JOIN images as I ON A.idImage=I.idImage ORDER BY dateArticle";
                $EH_resultat = $EH_connexion -> query($EH_requete);

                $EH_ligne = $EH_resultat -> fetch_assoc();

                while ($EH_ligne) {
                    echo "
                        <a href='./EH_article.php?idArticle=" . $EH_ligne["idArticle"] . "'>
                        <img src='../assets/images_article/" . $EH_ligne["srcImage"] . "'/>
                            <div>
                                <h3>" . $EH_ligne["titreArticle"] . "</h3>
                            </div>
                        </a>
                    ";

                    $EH_ligne = $EH_resultat -> fetch_assoc();
                }
            ?>
        </div>
    </section>
        <?php require_once("../includes/EH_footer.php"); ?>
    </body>
</html>
