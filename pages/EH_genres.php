<!DOCTYPE html>
<html lang="fr">
    <head>
        <?php require_once("../includes/EH_head.php"); ?>
        <link rel="stylesheet" href="/styles/EH_genre.css" />
    </head>
    <body>
        <?php require_once("../includes/EH_header.php"); ?>
    <body>
        <section class="titre_genres">
            <h1>
                Et vous ?
                <br />
                Vous êtes plutôt...
            </h1>
            <div class="cardContainerGenre">
                <?php
                    $EH_requete = "SELECT libelleGenres, srcImage, idGenres FROM genres as G INNER JOIN images as I ON G.idImage=I.idImage";
                    $EH_resultat = $EH_connexion -> query($EH_requete);

                    $EH_ligne = $EH_resultat -> fetch_assoc();

                    while ($EH_ligne) {
                        echo "
                            <a href='./EH_choixGenres.php?idGenres=" . $EH_ligne["idGenres"] . "'>
                            <img src='../assets/images_genres/" . $EH_ligne["srcImage"] . "'/>
                                <div>
                                    <h3>" . $EH_ligne["libelleGenres"] . "</h3>
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
