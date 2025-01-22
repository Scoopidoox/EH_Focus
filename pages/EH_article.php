<!DOCTYPE html>
<html lang="fr">
    <head>
        <?php require_once("../includes/EH_head.php"); ?>
        <link rel="stylesheet" href="../styles/EH_articles.css" />
    </head>
    <body>
    <section>
        <?php require_once("../includes/EH_header.php"); ?>
        <main>
            <article>
                <?php
                    $EH_urlId = $_GET["idArticle"] ?? 1;
                    $EH_requete = "
                    SELECT idArticle, srcImage, titreArticle, texteArticle
                    FROM article as A INNER JOIN images as I ON A.idImage=I.idImage
                    WHERE idArticle =" . $EH_urlId;

                    $EH_resultat = $EH_connexion -> query($EH_requete);

                    $EH_ligne = $EH_resultat -> fetch_assoc();

                    echo "
                        <h1>" . $EH_ligne["titreArticle"] . "</h1>
                        <img src='../assets/images_article/" . $EH_ligne["srcImage"] . "'/>
                        <p>" . $EH_ligne["texteArticle"] . "</p>
                    ";
                ?>
            </article>
        </main>
    </section>
        <?php require_once("../includes/EH_footer.php"); ?>
    </body>
</html>
