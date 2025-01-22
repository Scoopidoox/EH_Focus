<!DOCTYPE html>
<html lang="fr">
    <head>
        <?php require_once("../includes/EH_head.php"); ?>
        <link rel="stylesheet" href="/styles/EH_format.css" />
    </head>
    <body>
        <?php require_once("../includes/EH_header.php"); ?>

        <section>
            <div class="cardContainerGenre">
                <?php
                    $EH_requete = "SELECT typeFormats, srcImage, description, idFormats FROM formats as F INNER JOIN images as I ON F.idImage=I.idImage";
                    $EH_resultat = $EH_connexion->query($EH_requete);

                    for ($i = 0; $i < $EH_resultat->num_rows; $i++) {
                        $EH_ligne = $EH_resultat->fetch_assoc();

                        $EH_side = $i % 2 == 0 ? "box-r" : "box-l";

                        $EH_text = "
                            <div class='text'>
                                <h1>" . $EH_ligne["typeFormats"] . "</h1>
                                <h2>" . $EH_ligne["description"] . "</h2>
                            </div>
                        ";
                        $EH_image = "
                            <a href='./EH_choixFormat.php?idFormats=" . $EH_ligne["idFormats"] . "'>
                                <img src='../assets/gif_format/" . $EH_ligne["srcImage"] . "' alt='info' />
                            </a>
                        ";

                        echo "
                            <div class='" . $EH_side . " box'>
                                " . ($EH_side == "box-r" ? $EH_text . $EH_image : $EH_image . $EH_text) . "
                            </div>
                        ";
                    }
                ?>
            </div>
        </section>

        <?php require_once("../includes/EH_footer.php"); ?>
    </body>
</html>