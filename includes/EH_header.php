<?php
    $EH_connexion = mysqli_connect("localhost", "root", "", "eh_focus"); # Pour se connecter à ma BD
    $EH_connexion->set_charset("utf8"); # Gère les charactères
?>

<header>
    <a href="/EH_index.php">
        <img src="/assets/images_logo/logoFocus.png" alt="Logo" />

    </a>
    <nav>
        <ul>
            <li><a href="/EH_index.php">Accueil</a></li>
            <li><a href="/pages/EH_actualites.php">Actualités</a></li>
            <li><a href="/pages/EH_genres.php">Genres</a></li>
            <li><a href="/pages/EH_formats.php">Formats</a></li>
        </ul>
    </nav>
</header>