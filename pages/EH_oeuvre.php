<!DOCTYPE html>
<html lang="fr">
    <head>
        <?php require_once("../includes/EH_head.php"); ?>
        <link rel="stylesheet" href="/styles/EH_articles.css" />
    </head>
    <body>
    <section>
        <?php require_once("../includes/EH_header.php"); ?>
        <main>
            <article>
                <?php
                    $EH_urlId = $_GET["idOeuvre"] ?? 1;

                    $EH_ORDRE_SQL_oeuvre = "
                        SELECT O.idOeuvre, O.titreOeuvre, O.synopsisOeuvre, O.dateOeuvre, O.dureeOeuvre, I.srcImage, I.catImage, A.prenomAuteurs, A.nomAuteurs, S.prenomScenaristes, S.nomScenaristes, AC.prenomActeurs, AC.nomActeurs
                        FROM oeuvre as O INNER JOIN images as I ON O.idImage=I.idImage
                        INNER JOIN oeuvre_auteurs as OA ON O.idOeuvre=OA.idOeuvre
                        INNER JOIN auteurs as A ON OA.idAuteurs=A.idAuteurs
                        INNER JOIN oeuvre_scenaristes as OS ON O.idOeuvre=OS.idOeuvre
                        INNER JOIN scenaristes as S ON OS.idScenaristes=S.idScenaristes
                        INNER JOIN oeuvre_acteurs as OAC ON O.idOeuvre=OAC.idOeuvre
                        INNER JOIN acteurs as AC ON OAC.idActeurs=AC.idActeurs
                        WHERE O.idOeuvre=" . $EH_urlId
                    ;

                    $EH_resultat = $EH_connexion -> query($EH_ORDRE_SQL_oeuvre);
                    $EH_ligne = $EH_resultat -> fetch_assoc();

                    echo "
                        <h2>" . $EH_ligne["titreOeuvre"] . "</h2>
                        <img src='../assets/images_" . $EH_ligne["catImage"] . "/" . $EH_ligne["srcImage"] . "'/>
                        <div class='details'>
                            <p><strong>Synopsis : </strong>" . $EH_ligne["synopsisOeuvre"] . "</p>
                            <p><strong>Auteur : </strong>" . $EH_ligne["prenomAuteurs"] . $EH_ligne["nomAuteurs"] . "</p>
                            <p><strong>Scénariste : </strong>" . $EH_ligne["prenomScenaristes"] . $EH_ligne["nomScenaristes"] . "</p>
                            <p><strong>Date de réalisation : </strong>" . $EH_ligne["dateOeuvre"] . "</p>
                            <p><strong>Durée : </strong>" . $EH_ligne["dureeOeuvre"] . "</p>
                            <p><strong>Acteurs principaux : </strong>" . $EH_ligne["prenomActeurs"] . $EH_ligne["nomActeurs"] . "</p>
                        </div>
                    ";
                ?>
            </article>
        </main>
    </section>
    <?php require_once("../includes/EH_footer.php"); ?>
    </body>
</html>