-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 20 déc. 2024 à 11:48
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `eh_site_statique`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteurs`
--

DROP TABLE IF EXISTS `acteurs`;
CREATE TABLE IF NOT EXISTS `acteurs` (
  `idActeurs` int NOT NULL AUTO_INCREMENT,
  `prenomActeurs` varchar(30) NOT NULL,
  `nomActeurs` varchar(30) NOT NULL,
  PRIMARY KEY (`idActeurs`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `acteurs`
--

INSERT INTO `acteurs` (`idActeurs`, `prenomActeurs`, `nomActeurs`) VALUES
(1, 'Timothée', 'Chalamet'),
(2, 'Rebecca', 'Ferguson'),
(3, 'Oscar', 'Isaac'),
(4, 'Victoria', 'Pedretti'),
(5, 'Olivier', 'Jackson-Cohen'),
(6, 'Carla', 'Gugino'),
(7, 'Miyu', ' Irino'),
(8, 'Saori ', 'Hayami'),
(9, 'Aoi', 'Yuki'),
(10, 'Francois ', 'Cluzet'),
(11, 'Omar', 'Sy'),
(12, 'Anne', 'Le Ny'),
(13, 'Tom ', 'Hardy'),
(14, 'Charlize', 'Theron'),
(15, 'Nicholas', 'Hoult'),
(16, 'Rumi', 'Hiragi'),
(17, 'Miyu', 'Irino'),
(18, 'Mari', 'Natsuki'),
(19, 'Brendan', 'Fraser'),
(20, 'Sadie', 'Sink'),
(21, 'Hong', 'Chau'),
(22, 'Camille', 'Cottin'),
(23, 'Thibault', 'de Montalembert'),
(24, 'Gregory', 'Montel'),
(25, 'Louis', 'Hofmann'),
(26, 'Lisa', 'Vicari'),
(27, 'Andreas', 'Pietschmann'),
(28, 'Jonathan', 'Groff'),
(29, 'Holt', 'McCallany'),
(30, 'Anna', 'Torv'),
(31, 'Jessie', 'Mei Li'),
(32, 'Ben ', 'Barnes'),
(33, 'Freddy', 'Carter'),
(34, 'Karl', 'Urban'),
(35, 'Jack', 'Quaid'),
(36, 'Antony', 'Starr'),
(37, 'Steven', 'Yeun'),
(38, 'J.K', 'Simmons'),
(39, 'Sandra', 'Oh'),
(40, 'Claire', 'Foy'),
(41, 'Olivia', 'Colman'),
(42, 'Imelda', 'Staunton'),
(43, 'Amy', 'Winehouse (images d\'archives)'),
(44, 'Pilotes de F1', 'et leurs équipes'),
(45, 'Narrateurs', 'et vétérans');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `idArticle` int NOT NULL AUTO_INCREMENT,
  `titreArticle` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dateArticle` date NOT NULL,
  `texteArticle` text NOT NULL,
  PRIMARY KEY (`idArticle`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`idArticle`, `titreArticle`, `dateArticle`, `texteArticle`) VALUES
(1, 'L\'Amour Ouf : la « love story » qui fait', '2024-11-20', 'Le film \"L\'Amour Ouf\" raconte une histoire captivante sur les relations amoureuses à l\'ère moderne. Ce drame romantique explore les thèmes de la jeunesse, de l\'amour et du cinéma, et a conquis un large public. <br />\r\nSorti récemment, ce film a non seulement attiré des spectateurs de tous âges mais a aussi redéfini la manière dont nous percevons les histoires d\'amour à l\'écran. Découvrez pourquoi \"L\'Amour Ouf\" est considéré comme une révolution culturelle. '),
(2, 'Bread and Roses : Le combat des Afghanes', '2024-11-21', 'Ce documentaire poignant suit le parcours de trois femmes afghanes courageuses qui, malgré les obstacles, se battent pour leurs droits fondamentaux. Un regard intime et émouvant sur une réalité souvent invisible. <br />\r\nSorti récemment, ce film a non seulement attiré des spectateurs de tous âges mais a aussi redéfini la manière dont nous percevons les histoires d\'amour à l\'écran. Découvrez pourquoi \"L\'Amour Ouf\" est considéré comme une révolution culturelle. '),
(3, 'Deadpool & Wolverine : Le duo le plus im', '2024-11-22', 'Deadpool et Wolverine, deux personnages que tout oppose, se retrouvent forcés de collaborer dans une mission où tout peut arriver. Entre punchlines assassines et scènes d\'action spectaculaires, ce duo casse les codes des films de super-héros. <br />\r\nC’est le mariage parfait entre humour noir et adrénaline. Ryan Reynolds et Hugh Jackman brillent à l’écran. '),
(4, 'Inside Out 2 : Quand Riley grandit, les émotions aussi', '2024-11-23', 'Riley est maintenant une adolescente, et ses émotions doivent faire face à de nouveaux défis. Avec l’arrivée de nouvelles émotions, les choses se compliquent dans le Quartier Général. <br />\r\nPixar réussit encore une fois à toucher le cœur avec des thématiques universelles. Préparez vos mouchoirs ! '),
(5, 'Gladiator II : Retour dans l\'arène : l\'héritage sanglant de Rome renaît', '2024-11-24', 'Après des années, Ridley Scott nous ramène dans l’arène avec une nouvelle génération de gladiateurs. Le film suit Lucius, le fils de Lucilla, qui cherche à honorer l’héritage de Maximus tout en affrontant les ténèbres de Rome. <br />\r\nDes batailles épiques, une esthétique magistrale, et une histoire pleine de vengeance et de rédemption. '),
(6, 'Juré n°2 : Un thriller captivant signé Clint Eastwood', '2024-11-25', 'Lors d’un procès pour meurtre, un juré est déchiré entre son devoir de justice et un terrible secret personnel. Clint Eastwood livre un thriller psychologique intense où la tension est palpable. <br /> \r\nEastwood excelle à mêler drame humain et suspense, créant une œuvre fascinante.'),
(7, 'Megalopolis : Quand Coppola bâtit l\'utopie', '2024-11-26', 'Dans un futur proche, une métropole est reconstruite sur les ruines d’un désastre. Entre utopie et dystopie, Megalopolis explore les rêves et les conflits de la société humaine. <br />\r\nCoppola livre un film ambitieux, mêlant réflexion philosophique et spectacle visuel.'),
(8, 'The Substances : Une expérience scientifique qui vire au cauchemar', '2024-11-27', 'Un groupe de chercheurs découvre une substance étrange capable d’altérer la conscience. Mais l’expérience prend une tournure effrayante lorsque les sujets commencent à perdre pied avec la réalité. <br />\r\nUn mélange glaçant de science-fiction et de thriller psychologique, avec une atmosphère oppressante. '),
(9, 'Vaiana 2 : Revoilà le gros thon', '2024-11-28', 'Dans cette suite, Vaiana doit sauver son île d’une menace écologique et affronter de nouveaux défis avec ses amis. Humour et chansons entraînantes sont au rendez-vous. <br />\r\nDisney revisite l’univers de Vaiana avec un message environnemental fort et des personnages attachants. '),
(10, 'Un film qui questionne la célébrité et l’identité dans une narration pleine de surprises', '2024-11-30', 'Un héros déchu tente de retrouver sa gloire passée. Mais est-ce encore possible dans un monde qui semble l’avoir oublié ? <br />\r\nUn film qui questionne la célébrité et l’identité dans une narration pleine de surprises');

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

DROP TABLE IF EXISTS `auteurs`;
CREATE TABLE IF NOT EXISTS `auteurs` (
  `idAuteurs` int NOT NULL,
  `prenomAuteurs` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nomAuteurs` varchar(30) NOT NULL,
  PRIMARY KEY (`idAuteurs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `auteurs`
--

INSERT INTO `auteurs` (`idAuteurs`, `prenomAuteurs`, `nomAuteurs`) VALUES
(1, 'Frank', 'Herbert (roman)'),
(2, 'Denis', 'Villeneuve '),
(3, 'Shirley ', 'Jackson '),
(4, 'Mike', 'Flanagan'),
(5, 'Yoshitoki', 'Oima'),
(6, 'Naoko', 'Yamada'),
(7, 'Olivier ', 'Nakache'),
(8, 'Éric ', 'Todelano'),
(9, 'George', 'Miller'),
(10, 'Hayao', 'Miyazaki'),
(11, 'Samuel ', 'D. Hunter'),
(12, 'Darren ', 'Aronofsky'),
(13, 'Fanny', 'Herrero'),
(14, 'Baran ', 'bo Odar'),
(15, 'Jantje', 'Friese'),
(16, 'Joe ', 'Penhall'),
(17, 'Eric ', 'Heisserer'),
(18, 'Leigh', 'Bardugo'),
(19, 'Eric', 'Kripke'),
(20, 'Garth ', 'Ennis'),
(21, 'Robert', 'Kirkman'),
(22, 'Peter', 'Morgan'),
(23, 'Asif', 'Kapadia'),
(24, 'Netflix', '& Co'),
(25, 'Ken', 'Burns'),
(26, 'Lynn', 'Novick');

-- --------------------------------------------------------

--
-- Structure de la table `formats`
--

DROP TABLE IF EXISTS `formats`;
CREATE TABLE IF NOT EXISTS `formats` (
  `idFormats` int NOT NULL AUTO_INCREMENT,
  `typeFormats` varchar(15) NOT NULL,
  PRIMARY KEY (`idFormats`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `formats`
--

INSERT INTO `formats` (`idFormats`, `typeFormats`) VALUES
(1, 'Film'),
(2, 'Série'),
(3, 'Documentaire');

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `idGenres` int NOT NULL AUTO_INCREMENT,
  `libelleGenres` varchar(20) NOT NULL,
  PRIMARY KEY (`idGenres`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`idGenres`, `libelleGenres`) VALUES
(1, 'Action'),
(2, 'Animation'),
(3, 'Comédie'),
(4, 'Drame'),
(5, 'Fantaisie'),
(6, 'Français'),
(7, 'Guerre'),
(8, 'Histoire'),
(9, 'Horreur'),
(10, 'Musique'),
(11, 'Mystère'),
(12, 'Romance'),
(13, 'Science-fiction'),
(14, 'Super Héro'),
(15, 'Thriller'),
(16, 'Automobile');

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre`
--

DROP TABLE IF EXISTS `oeuvre`;
CREATE TABLE IF NOT EXISTS `oeuvre` (
  `idOeuvre` int NOT NULL AUTO_INCREMENT,
  `idFormats` int NOT NULL,
  `idGenres` int NOT NULL,
  `titreOeuvre` varchar(30) NOT NULL,
  `synopsisOeuvre` text NOT NULL,
  `dateOeuvre` year NOT NULL,
  `dureeOeuvre` varchar(50) NOT NULL,
  PRIMARY KEY (`idOeuvre`),
  UNIQUE KEY `idGenres` (`idGenres`) USING BTREE,
  KEY `idFormats_2` (`idFormats`,`idGenres`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `oeuvre`
--

INSERT INTO `oeuvre` (`idOeuvre`, `idFormats`, `idGenres`, `titreOeuvre`, `synopsisOeuvre`, `dateOeuvre`, `dureeOeuvre`) VALUES
(1, 2, 1, 'The Boys', 'Dans un monde où les super-héros sont corrompus, un groupe de justiciers décide de les traquer et de dévoiler leurs crimes. ', '2019', '4 saisons (40 épisodes à ce jour)'),
(2, 1, 2, 'Le Voyage de Chihiro', 'Une jeune fille se retrouve dans un monde magique peuplé d\'esprits et doit trouver un moyen de libérer ses parents transformés en cochons. ', '2001', '02h05'),
(3, 1, 3, 'Intouchables', 'Un aristocrate tétraplégique engage un aide-soignant d\'origine modeste. Leur relation dépasse leurs différences sociales. ', '2011', '01h52'),
(4, 1, 4, 'The Whale', 'Un homme reclus souffrant d\'obésité morbide tente de renouer avec sa fille adolescente. ', '2022', '01h57'),
(5, 2, 5, 'Shadow and Bone', 'Une jeune femme découvre qu\'elle possède un pouvoir unique qui pourrait unir son monde déchiré par la guerre. ', '2021', '2 saisons (16 épisodes)'),
(6, 2, 6, 'Dix pour cent', 'Le quotidien d\'une agence parisienne qui gère les carrières de stars du cinéma. ', '2015', '4 saisons (24 épisodes)'),
(7, 3, 7, 'The Vietnam War', 'Une série documentaire en dix parties qui explore en profondeur la guerre du Vietnam. ', '2017', '10 épisodes'),
(8, 2, 8, 'The Crown', 'La vie et le règne de la reine Élisabeth II au fil des décennies, explorant les tensions entre la vie publique et privée de la famille royale. ', '2016', '6 saisons (60 épisodes à ce jour)'),
(9, 2, 9, 'The Haunting of Hill House', 'Une famille hantée par les événements tragiques dans leur ancienne maison. ', '2018', '1 saison (10 épisodes)'),
(10, 3, 10, 'Amy', 'La vie de la chanteuse Amy Winehouse, de son ascension à sa chute tragique. ', '2015', '02h08'),
(11, 2, 11, 'Dark', '3 saisons (26 épisLes secrets d\'une petite ville allemande impliquent des disparitions mystérieuses, des voyages dans le temps, et des liens familiaux complexes. odes)', '2017', '3 saisons (26 épisodes)'),
(12, 1, 12, 'A Silent Voice', 'Un garçon harceleur tente de se racheter auprès de sa victime sourde des années après. ', '2016', '02h10'),
(13, 1, 13, 'Dune', 'Le fils d\'une noble famille se lance dans une quête pour protéger une ressource essentielle sur une planète désertique. ', '2021', '02h35'),
(14, 2, 14, 'Invincible', 'Un jeune homme découvre ses pouvoirs et tente de marcher dans les pas de son père, un super-héros légendaire, tout en faisant face à des secrets terrifiants. ', '2021', '2 saisons (épisodes d\'environ 45 minutes)'),
(15, 2, 15, 'Mindhunter', 'Deux agents du FBI explorent les esprits des tueurs en série pour mieux comprendre leurs motivations et résoudre des affaires. ', '2017', '2 saisons (19 épisodes)'),
(16, 3, 16, 'Formula 1', 'Une immersion dans le monde compétitif et dramatique de la Formule 1.', '2019', '5 saisons');

-- --------------------------------------------------------

--
-- Structure de la table `scenaristes`
--

DROP TABLE IF EXISTS `scenaristes`;
CREATE TABLE IF NOT EXISTS `scenaristes` (
  `idScenaristes` int NOT NULL AUTO_INCREMENT,
  `prenomScenaristes` varchar(30) NOT NULL,
  `nomScenaristes` varchar(30) NOT NULL,
  PRIMARY KEY (`idScenaristes`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `scenaristes`
--

INSERT INTO `scenaristes` (`idScenaristes`, `prenomScenaristes`, `nomScenaristes`) VALUES
(1, 'Eric', 'Roth'),
(2, 'Jon', 'Spaihts'),
(3, 'Denis', 'Villeneuve'),
(4, 'Mike', 'Flanagan'),
(5, 'Reiko', 'Yoshida'),
(6, 'Olivier ', 'Nakache'),
(7, 'Éric ', 'Toledano'),
(8, 'George', 'Miller'),
(9, 'Brendan', 'McCarthy'),
(10, 'Nick', 'Lathouris'),
(11, 'Hayao', 'Miyazaki'),
(12, 'Samuel', 'D.Hunter'),
(13, 'Fanny', 'Herrero'),
(14, 'Camille', 'Chamoux'),
(15, 'Jantje', 'Friese'),
(16, 'Joe', 'Penhall'),
(17, 'Eric ', 'Heisserer'),
(18, 'Eric ', 'Kripke'),
(19, 'Robert', 'Kirkman'),
(20, 'Ryan', 'Ottley'),
(21, 'Cory', 'Walker'),
(22, 'Peter', 'Morgan'),
(23, 'Non', 'Fiction'),
(24, 'Geoffrey ', 'C. Ward');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  ADD CONSTRAINT `oeuvre_ibfk_1` FOREIGN KEY (`idFormats`) REFERENCES `formats` (`idFormats`),
  ADD CONSTRAINT `oeuvre_ibfk_2` FOREIGN KEY (`idGenres`) REFERENCES `genres` (`idGenres`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
