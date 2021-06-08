-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 16 déc. 2020 à 15:24
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_gite`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `gite`
--

CREATE TABLE `gite` (
  `id_gite` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image_rect_1` varchar(255) DEFAULT NULL,
  `image_rect_2` varchar(255) DEFAULT NULL,
  `image_rect_3` varchar(255) DEFAULT NULL,
  `localisation` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `spec` varchar(255) DEFAULT NULL,
  `nbr_couchage` int(11) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `image_carre` varchar(255) DEFAULT NULL,
  `categorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gite`
--

INSERT INTO `gite` (`id_gite`, `name`, `image_rect_1`, `image_rect_2`, `image_rect_3`, `localisation`, `description`, `spec`, `nbr_couchage`, `prix`, `image_carre`, `categorie`) VALUES
(1, 'Les deux alpes 3', 'img/nice_rue_pietonne.jpg', 'img/nice_rue_pietonne.jpg', 'img/nice_rue_pietonne.jpg', 'Isére', 'Un chalet de jardin est une structure compacte offrant à ses propriétaires un vaste espace habitable. Son aspect cossu et élégant se combine parfaitement avec le caractère naturel que lui confère le bois de pin nordique ou le sapin. Cette maison est composée de différentes pièces pouvant abriter des chambres, un salon, une salle d’eau ou une cuisine. Certains modèles de notre catalogue sont dotés d’un étage et peuvent avoisiner les 120 m². Notre équipe de concepteurs peut développer des chalets sur mesure pour répondre à vos besoins personnels. Le chalet en bois est une option plaisante, durable et économique pour édifier une résidence secondaire sur un terrain de vacances ou pour recevoir ses invités dans un espace indépendant durant leur séjour.', 'location de ski', 5, 152, 'img/nice_rue_pietonne.jpg', 'chalet'),
(2, 'Les deux alpes 4', 'img/paris_vue_cathedrale.jpg', 'img/paris_vue_cathedrale.jpg', 'img/paris_vue_cathedrale.jpg', 'Isére', 'Un chalet de jardin est une structure compacte offrant à ses propriétaires un vaste espace habitable. Son aspect cossu et élégant se combine parfaitement avec le caractère naturel que lui confère le bois de pin nordique ou le sapin. Cette maison est composée de différentes pièces pouvant abriter des chambres, un salon, une salle d’eau ou une cuisine. Certains modèles de notre catalogue sont dotés d’un étage et peuvent avoisiner les 120 m². Notre équipe de concepteurs peut développer des chalets sur mesure pour répondre à vos besoins personnels. Le chalet en bois est une option plaisante, durable et économique pour édifier une résidence secondaire sur un terrain de vacances ou pour recevoir ses invités dans un espace indépendant durant leur séjour.', 'location de ski', 5, 152, 'img/paris_vue_cathedrale.jpg', 'chalet'),
(3, 'Les deux alpes 2', 'img/ibis-fontainebleau.jpg', 'img/ibis-fontainebleau.jpg', 'img/ibis-fontainebleau.jpg', 'Isére', 'Un chalet de jardin est une structure compacte offrant à ses propriétaires un vaste espace habitable. Son aspect cossu et élégant se combine parfaitement avec le caractère naturel que lui confère le bois de pin nordique ou le sapin. Cette maison est composée de différentes pièces pouvant abriter des chambres, un salon, une salle d’eau ou une cuisine. Certains modèles de notre catalogue sont dotés d’un étage et peuvent avoisiner les 120 m². Notre équipe de concepteurs peut développer des chalets sur mesure pour répondre à vos besoins personnels. Le chalet en bois est une option plaisante, durable et économique pour édifier une résidence secondaire sur un terrain de vacances ou pour recevoir ses invités dans un espace indépendant durant leur séjour.', 'location de ski', 5, 152, 'img/ibis-fontainebleau.jpg', 'maison'),
(4, 'Les deux alpes 2', 'img/porte_de_laon.jpg', 'img/porte_de_laon.jpg', 'img/porte_de_laon.jpg', 'Isére', 'Un chalet de jardin est une structure compacte offrant à ses propriétaires un vaste espace habitable. Son aspect cossu et élégant se combine parfaitement avec le caractère naturel que lui confère le bois de pin nordique ou le sapin. Cette maison est composée de différentes pièces pouvant abriter des chambres, un salon, une salle d’eau ou une cuisine. Certains modèles de notre catalogue sont dotés d’un étage et peuvent avoisiner les 120 m². Notre équipe de concepteurs peut développer des chalets sur mesure pour répondre à vos besoins personnels. Le chalet en bois est une option plaisante, durable et économique pour édifier une résidence secondaire sur un terrain de vacances ou pour recevoir ses invités dans un espace indépendant durant leur séjour.', 'location de ski', 5, 152, 'img/porte_de_laon.jpg', 'prestige'),
(6, 'Les deux alpes 2', 'img/les_deux_alpes.jpg', 'img/les_deux_alpes.jpg', 'img/les_deux_alpes.jpg', 'Isére', 'Un chalet de jardin est une structure compacte offrant à ses propriétaires un vaste espace habitable. Son aspect cossu et élégant se combine parfaitement avec le caractère naturel que lui confère le bois de pin nordique ou le sapin. Cette maison est composée de différentes pièces pouvant abriter des chambres, un salon, une salle d’eau ou une cuisine. Certains modèles de notre catalogue sont dotés d’un étage et peuvent avoisiner les 120 m². Notre équipe de concepteurs peut développer des chalets sur mesure pour répondre à vos besoins personnels. Le chalet en bois est une option plaisante, durable et économique pour édifier une résidence secondaire sur un terrain de vacances ou pour recevoir ses invités dans un espace indépendant durant leur séjour.', 'location de ski', 5, 152, 'img/les_deux_alpes.jpg', 'Chalet');

-- --------------------------------------------------------

--
-- Structure de la table `gite_reservation`
--

CREATE TABLE `gite_reservation` (
  `gite_id_gite` int(11) NOT NULL,
  `reservation_id_reservation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(11) NOT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `gite`
--
ALTER TABLE `gite`
  ADD PRIMARY KEY (`id_gite`);

--
-- Index pour la table `gite_reservation`
--
ALTER TABLE `gite_reservation`
  ADD PRIMARY KEY (`gite_id_gite`,`reservation_id_reservation`),
  ADD KEY `fk_gite_has_reservation_reservation1` (`reservation_id_reservation`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id_reservation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gite`
--
ALTER TABLE `gite`
  MODIFY `id_gite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id_reservation` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `gite_reservation`
--
ALTER TABLE `gite_reservation`
  ADD CONSTRAINT `fk_gite_has_reservation_gite1` FOREIGN KEY (`gite_id_gite`) REFERENCES `gite` (`id_gite`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_gite_has_reservation_reservation1` FOREIGN KEY (`reservation_id_reservation`) REFERENCES `reservation` (`id_reservation`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
