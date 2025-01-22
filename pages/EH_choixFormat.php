<!DOCTYPE html>
<html lang="fr">
    <head>
        <?php require_once("../includes/EH_head.php"); ?>
    </head>
    <body>
    <?php require_once("../includes/EH_header.php"); ?>
    <section>
        <div class="cardContainer">
            <?php
                $EH_urlId = $_GET["idFormats"] ?? 1;

                $EH_requete = "
                    SELECT I.srcImage, I.catImage, O.idOeuvre, O.titreOeuvre, O.idFormats
                    FROM oeuvre as O
                    INNER JOIN images as I ON O.idImage = I.idImage
                    INNER JOIN formats as F ON O.idFormats = F.idFormats
                    WHERE F.idFormats = $EH_urlId
                    ORDER BY O.dateOeuvre
                ";

                $EH_resultat = $EH_connexion -> query($EH_requete);

                while ($EH_ligne = $EH_resultat -> fetch_assoc()) {
                    echo "
                        <a href='./EH_oeuvre.php?idOeuvre=" . $EH_ligne["idOeuvre"] . "'>
                            <img src='../assets/images_" . $EH_ligne["catImage"] . "/" . $EH_ligne["srcImage"] . "'/>
                            <div>
                                <h3>" . $EH_ligne["titreOeuvre"] . "</h3>
                            </div>
                        </a>
                    ";
                }
            ?>
        </div>
    </section>
        <?php require_once("../includes/EH_footer.php"); ?>
    </body>
</html>
