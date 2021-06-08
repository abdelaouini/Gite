-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 08 juin 2021 à 22:16
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.10

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

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `password`) VALUES
(1, 'abdel@gmail.com', 'azerty'),
(2, 'jc@gmail.com', 'azerty');

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
(15, 'Le Meleze', 'img/chalet-salon-le-meleze.jpg', 'img/chalet-cuisine-le-meleze.jpg', 'img/chalet-salle-a-manger-le-meleze.jpg', 'alpes', 'Le chalet Chez JC, se situe au cœur du village de VENOSC, en bas à droite du plan de la station.\r\nCe chalet vous permettra de vivre au cœur d’un village de montagne, au pied des massifs, dans un espace grandiose.\r\nLa liaison avec la station des 2 ALPES, se fait par télécabine, départ et retour.\r\nChalet à l’ambiance montagnarde sur 3 niveaux, comprenant :\r\n\r\nAu rez-de-chaussée : Une chambre avec 2 lits simples superposés, un séjour avec poêle à bois, télévision à écran plat, une grande salle à manger, cuisine équipée d’un lave-vaisselle, lave-linge\r\n\r\nAu niveau 1 : une chambre avec 2 lits simples, une chambre avec deux lits simples superposés, une salle d’eau avec toilettes.\r\n\r\nAu niveau 2 : une chambre avec 2 lits simples plus douche et toilettes privatives et un accès sur le balcon Sud, une chambre avec 3 lits simples plus douche et toilettes privatives.\r\n\r\nGrande terrasse exposée Sud/Est avec jacuzzi.\r\n\r\nDraps fournis et accueil personnalisé.', 'chalet', 7, 799, 'img/chalet-salon-le-meleze.jpg', 'Chalet'),
(17, 'La grange', 'img/chalet-cue-la-grange.jpg', 'img/chalet-salle-a-manger-la-grange.jpg', 'img/chalet-cuisine-la-grange.jpg', 'alpes', 'L\'appartement \"la grange d\'Auguste\", entièrement créé fin 2018, est prêt pour vous accueillir pour d\'agréables vacances en famille ou entre amis, que vous soyez 2... ou 11 !\r\n\r\nA 6 min des 2 Alpes en télécabine, 12 min de Bourg d’Oisans en voiture, et 30 min de l\'Alpe d’Huez !\r\n\r\nHIVER : Oubliez les difficultés de circulation des 25 derniers km de montée aux 2 Alpes, et de traversée de station le samedi !\r\n\r\nLaissez GRATUITEMENT votre MATÉRIEL DE SKI SUR LA STATION dans notre magasin partenaire.\r\n\r\nCelui-ci pourra également vous faire profiter de tarifs de location privilégiés ( de 30 à 50 % de réduction !).\r\ne de bain.', 'chalet', 7, 999, 'img/chalet-cue-la-grange.jpg', 'Chalet'),
(18, 'Chez les copain', 'img/chalet-interieur-50m-piste-les-deux-alpes.jpg', 'img/chalet-cuisine-50m-piste-les deux-alpes.jpg', 'img/chalet-vue-50m-piste-les-deux-alpes.jpg', 'alpes', 'Chalet neuf et indépendant avec situation idyllique ! Vue absolument magnifique sans vis-à-vis .\r\n\r\nC\'est le chalet le plus haut de la station de Villard Reculas faisant partie du Domaine de L\' Alpe d\' Huez .Vous partirez et reviendrai en skis sans effort en période de neige .\r\n\r\nLe Chalet est équipé de produits haut de gamme comprenant un local a ski ou VTT .\r\n\r\nIl est constitué de 3 salles de bains et 4 chambres , ainsi que d\' une très grande salle de séjour et terrasse, le tout sur plus de 170m² habitable.', 'chalet', 10, 526, 'img/chalet-vue-50m-piste-les-deux-alpes.jpg', 'Chalet'),
(19, 'Les bruyere', 'img/prestige-cue-les-bruyeres-les-deux-alpes.jpg', 'img/prestige-chambre-les-bruyeres-les-deux-alpes.jpg', 'img/prestige-les-bruyeres-les-deux-alpes.jpg', 'alpes', 'Grand appartement lumineux, très agréable, et de qualité offers accommodation in Les Deux Alpes, 1.1 km from Les Deux Alpes Ski School and 1.1 km from Les Deux Alpes.\r\n\r\nThe nearest airport is Chambéry-Savoie Airport, 71 km from the property.\r\n\r\nC\'est le quartier préféré des voyageurs visitant Les Deux Alpes, selon les commentaires clients indépendants.\r\n\r\nNous parlons votre langue !', 'prestige', 4, 1699, 'img/prestige-les-bruyeres-les-deux-alpes.jpg', 'Hotel'),
(20, 'Nemea', 'img/prestige-nemea-les-deux-alpes.jpg', 'img/prestige-salon-nemea-les-deux-alpes.jpg', 'img/prestige-hammam-nemea-les-deux-alpes.jpg', 'alpes', 'Le Boost Your Immo Les Deux Alpes 190 / Bel Alp 3 est situé aux Deux Alpes, à 1 km de l\'école de ski et à 100 mètres de la remontée mécanique du Diable, dans une région où vous pourrez skier. Cet appartement dispose d\'une connexion Wi-Fi gratuite, d\'une cuisine entièrement équipée et d\'un balcon.\r\n\r\nCet appartement comprend 3 chambres, une salle de bains et une télévision à écran plat.\r\n\r\nLors de votre séjour, vous pourrez profiter d\'un sauna.\r\n\r\nLe Boost Your Immo Les Deux Alpes 190 / Bel Alp 3 se trouve à proximité de lieux d\'intérêt comme les Gentianes, les remontées mécaniques des Rivets et le Grand Viking. L\'aéroport de Grenoble-Isère, le plus proche, est implanté à 103 km.\r\n\r\nC\'est le quartier préféré des voyageurs visitant Les Deux Alpes, selon les commentaires clients indépendants.\r\n\r\nNous parlons votre langue !', 'prestige', 6, 699, 'img/prestige-nemea-les-deux-alpes.jpg', 'Prestige'),
(21, 'Le soleil', 'img/prestige-terasse-les-deux-alpes.jpg', 'img/prestige-soleil-les-deux-alpes.jpg', 'img/prestige-soleil-salon-les-deux-alpes.jpg', 'alpes', 'Le Boost Your Immo Les Deux Alpes Balcons du Soleil 366 se trouve aux Deux Alpes, à 800 mètres de l\'école de ski et du domaine skiable.\r\n\r\nL’appartement comprend trois chambres séparées, une télévision, 1 salle de bains et une kitchenette entièrement équipée, avec un lave-vaisselle et un micro-ondes.\r\n\r\nEnfin, l’aéroport le plus proche, celui de Grenoble-Isère, est accessible à 73 km.\r\n\r\nC\'est le quartier préféré des voyageurs visitant Les Deux Alpes, selon les commentaires clients indépendants.\r\n\r\nNous parlons votre langue !', 'prestige', 15, 5999, 'img/prestige-terasse-les-deux-alpes.jpg', 'Prestige'),
(22, 'poulette', 'img/maison-salon-immo-les-deux-alpes.jpg', 'img/maison-cuisine-immo-les-deux-alpes.jpg', 'img/maison-chambre-immo-les-deux-alpes.jpg', 'alpes', 'Situé aux Deux Alpes, le Vacancéole - Résidence Meijotel propose des hébergements avec télévision à écran plat et kitchenette.\r\n\r\nL\'école de ski et la station des Deux Alpes se trouvent à 100 mètres. Enfin, l\'aéroport de Chambéry-Savoie, le plus proche, est implanté à 72 km du Vacancéole - Résidence Meijotel.\r\n\r\nC\'est le quartier préféré des voyageurs visitant Les Deux Alpes, selon les commentaires clients indépendants.\r\n\r\nNous parlons votre langue !', 'maison', 3, 299, 'img/maison-cuisine-immo-les-deux-alpes.jpg', 'Maison'),
(23, 'The Two', 'img/maison-chambre-the-two-one-les-deux-alpes.jpg', 'img/maison-salle-de-bain-the-two-one-les-deux-alpes.jpg', 'img/maison-salon-the-two-one-les-deux-alpes.jpg', 'alpes', 'Installé au pied des pistes de la station de sports d’hiver des Deux Alpes, à 1 650 mètres d’altitude, l’Atmosphere Hotel propose un accès skis aux pieds, une terrasse orientée plein sud et un bar. Tous les hébergements incluent une télévision.\r\n\r\nIls comprennent une connexion Wi-Fi gratuite et la plupart offrent une vue sur la roche de la Muzelle. Leur salle de bains privative est pourvue d’une baignoire.\r\n\r\nChaque matin, vous pourrez savourer un petit-déjeuner buffet. Le dîner se compose d’un buffet d’entrées ainsi que de 2 plats servis à table. Le bar donne sur les pistes de ski.', 'maison', 2, 82, 'img/maison-chambre-the-two-one-les-deux-alpes.jpg', 'Maison'),
(24, 'Piste', 'img/maison-salon-piste-les deux-alpes.jpg', 'img/maison-cuisine-piste-les deux-alpes.jpg', 'img/maison-salon-piste-les deux-alpes.jpg', 'alpes', 'L’Apartment Avenue de La Muzelle - 3 est située aux Deux Alpes. Doté d\'un parking privé gratuit, l\'établissement se trouve à moins de 1 km de l\'école de ski des Deux Alpes et à 10 minutes à pied des Deux Alpes.\r\n\r\nL’appartement comprend une connexion Wi-Fi gratuite, une télévision par satellite, un lave-linge ainsi qu’une cuisine équipée d’un micro-ondes et d’un réfrigérateur.\r\n\r\nL’aéroport le plus proche, celui de Grenoble-Isère, se trouve à 111 km.\r\n\r\nC\'est le quartier préféré des voyageurs visitant Les Deux Alpes, selon les commentaires clients indépendants.\r\n\r\nNous parlons votre langue !', 'maison', 2, 550, 'img/maison-chambre-piste-les deux-alpes.jpg', 'hotel'),
(25, 'Le cairn', 'img/hotel-chambre-le-cairn-les-deux-alpes.jpg', 'img/hotel-le-cairn-les-deux-alpes.jpg', 'img/hotel-vuele-cairn-les-deux-alpes.jpg', 'alpes', 'Installé sur les hauteurs de la station de ski des Deux Alpes, l\'hôtel Le Cairn propose un sauna et un bain à remous extérieur depuis lequel vous pourrez admirer le paysage environnant. Situé à 100 mètres d\'une remontée mécanique, le Cairn met gratuitement à votre disposition une connexion Wi-Fi dans les parties communes.\r\n\r\nLes chambres, dont le style évoque les chalets, sont toutes équipées d\'une télévision à écran plat. Certaines comprennent un balcon et chacune est pourvue d\'une salle de bains privative.', 'hotel', 2, 300, 'img/hotel-vuele-cairn-les-deux-alpes.jpg', 'Hotel'),
(26, 'Chez Abdel', 'img/hotel-chambre-les-deux-alpes.jpg', 'img/hotel-salle-de-bain-les-deux-alpes.jpg', 'img/hotel-les-deux-alpes.jpg', 'alpes', 'L\'Hôtel Les Flocons est situé aux Deux Alpes, à 11 minutes à pied de l\'école de ski des Deux Alpes. Il propose un bar, une terrasse bien exposée et une connexion Wi-Fi gratuite.\r\n\r\nLes chambres comportent une télévision à écran plat et une salle de bains privative pourvue d\'une douche.\r\n\r\nLe matin, vous pourrez déguster un petit-déjeuner buffet payant au restaurant, qui offre une vue sur le glacier de la Muzelle. Vous profiterez aussi d\'un salon commun et pourrez jouer au billard sur place.', 'hotel', 4, 10000, 'img/hotel-les-deux-alpes.jpg', 'Hotel'),
(27, 'La grande rousse', 'img/hotel-chambre-les-grande-rousse-les-deux-alpes.jpg', 'img/hotel-salle-de-bain-les-grande-rousse-les-deux-alpes.jpg', 'img/hotel-les-grande-rousse-les-deux-alpes.jpg', 'alpes', 'Installé au pied des pistes de la station de sports d’hiver des Deux Alpes, à 1 650 mètres d’altitude, l’Atmosphere Hotel propose un accès skis aux pieds, une terrasse orientée plein sud et un bar. Tous les hébergements incluent une télévision.\r\n\r\nIls comprennent une connexion Wi-Fi gratuite et la plupart offrent une vue sur la roche de la Muzelle. Leur salle de bains privative est pourvue d’une baignoire.\r\n\r\nChaque matin, vous pourrez savourer un petit-déjeuner buffet. Le dîner se compose d’un buffet d’entrées ainsi que de 2 plats servis à table. Le bar donne sur les pistes de ski.\r\n\r\nVous profiterez d’un service de location de ski à proximité de l’établissement. En été, la région est prisée pour le VTT et pour la randonnée.', 'hotel', 1, 400, 'img/hotel-chambre-les-grande-rousse-les-deux-alpes.jpg', 'Hotel'),
(28, 'Odalys', 'img/prestige-salon-odalys-paris.jpg', 'img/prestige-hammam-odalys-paris.jpg', 'img/prestige-salon-odalys-paris.jpg', 'paris', 'Situé à Paris, à 200 mètres du Sacré-Cœur, l\'Odalys City Paris Montmartre propose des studios et des appartements à 15 minutes à pied du Moulin Rouge. Vous pourrez vous détendre dans l\'espace bien-être moyennant des frais supplémentaires.\r\n\r\nTous les studios comprennent une télévision à écran plat, une kitchenette équipée et un coin repas. Leur salle de bains privative est pourvue d\'une baignoire et d\'un sèche-cheveux. Le linge de lit est fourni.\r\n\r\nLe petit-déjeuner buffet est servi dans la salle prévue à cet effet.', 'prestige', 9, 2300, 'img/prestige-chambre-odalys-paris.jpg', 'hotel'),
(29, 'Les etang', 'img/prestige-les-etangs-de-corot-paris.jpg', 'img/prestige-les-etangs-de-corot-paris.jpg', 'img/prestige-salle-de-bain-les-etangs-de-corot-paris.jpg', 'paris', 'L’Hôtel Vendôme Saint-Germain propose des hébergements à Paris, à seulement 700 mètres de la cathédrale Notre-Dame et à 5 minutes de marche du Panthéon. La réception est ouverte 24h/24. Une connexion Wi-Fi gratuite est disponible dans toutes les parties. La station de métro Cardinal Lemoine est accessible en une minute à pied.\r\n\r\nChaque chambre est équipée de la climatisation et d’une télévision à écran plat. Elles possèdent également une bouilloire, un réfrigérateur et un coffre-fort. Leur salle de bains privative est pourvue d’un sèche-cheveux.\r\n\r\nUn petit-déjeuner buffet est servi chaque matin sur place.\r\n\r\nVous séjournerez à 650 mètres de l’université de la Sorbonne et à 1,4 km du Centre Pompidou. Enfin, l’aéroport de Paris-Orly est distant de 13 km. La Seine, à seulement 3 minutes de marche, vous permettra d’accéder facilement à de nombreux sites touristiques de la ville.', 'prestige', 15, 5000, 'img/prestige-chambre-les-etangs-de-corot-paris.jpg', 'Hotel'),
(30, 'Villa Hussmann', 'img/prestige-piscine-villa-haussmann-paris.jpg', 'img/prestige-hammam-villa-haussmann-paris.jpg', 'img/prestige-piscine-villa-haussmann-paris.jpg', 'paris', 'Située à Paris, à 1,1 km de l\'opéra Garnier, La Villa Haussmann bénéficie d\'une piscine intérieure et d\'une salle de sport. Vous profiterez d\'une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux, tandis que vous aurez la possibilité de prendre un repas au restaurant sur place.\r\n\r\nLes chambres de La Villa Haussmann sont pourvues d\'une télévision à écran plat et certaines incluent un coin salon, pour plus de commodité. Toutes comportent une salle de bains privative, tandis que vous disposerez de peignoirs, de chaussons et d\'articles de toilette gratuits.\r\n\r\nLe petit-déjeuner est servi chaque matin et vous aurez la possibilité de prendre un verre au bar de l\'établissement.', 'prestige', 7, 8563, 'img/prestige-chambre-villa-haussmann-paris.jpg', 'Hotel'),
(31, 'AbdyAouini', 'img/maison-salle-a-manger-charles-floquet-paris.jpg', 'img/maison-chambre-eiffel-paris.jpg', 'img/maison-salle-a-manger-charles-floquet-paris.jpg', 'paris', 'Située au cœur de Paris, la Résidence Charles Floquet vous accueille à 50 mètres de la Tour Eiffel et à 20 minutes à pied du musée de l\'Armée. Occupant un bâtiment historique rénové, elle propose de grands appartements indépendants offrant une vue sur la Tour Eiffel.\r\n\r\nAffichant un style élégant, les appartements de la Résidence Charles Floquet présentent un balcon, des hauts plafonds et une cheminée. Après une longue journée de shopping et de visites, vous pourrez vous détendre en profitant d\'une télévision par satellite, d\'un lecteur Blu-Ray ainsi que d\'une connexion Wi-Fi gratuite.', 'maison', 3, 499, 'img/maison-terasse-eiffel-parisjpg.jpg', 'maison'),
(33, 'Opera', 'img/maison-chambre-opera-paris.jpg', 'img/maison-chambre-opera-paris.jpg', 'img/maison-terasse-opera-paris.jpg', 'paris', 'Doté d\'une connexion Wi-Fi gratuite, l\'Short Stay Group Eiffel Village Serviced Apartments Paris est situé à Paris, à 20 minutes à pied de la tour Eiffel. Vous rejoindrez le parc des expositions Paris Expo Porte de Versailles en 30 minutes en transports en commun.\r\n\r\nChaque appartement dispose d\'une télévision à écran plat, d\'une cuisine ou d\'une kitchenette équipées et d\'un coin repas. Certains sont pourvus d\'un balcon. Leur salle de bains est privative est munie d\'une douche. Les serviettes de toilette sont fournies.\r\n\r\nVous trouverez plusieurs restaurants et supermarchés dans ce quartier calme. La place du Trocadéro est à 25 minutes à pied ou en transports en commun de l\'Short Stay Group Eiffel Village Serviced Apartments Paris.', 'maison', 3, 789, 'img/maison-salle-de-bain-opera-paris.jpg', 'Maison'),
(34, 'Eiffel', 'img/maison-salon-charles-floquet-paris.jpg', 'img/maison-salon-charles-floquet-paris.jpg', 'img/maison-terasse-opera-paris.jpg', 'paris', 'Situé à quelques pas des Champs-Élysées et de la place de la Madeleine, l\'établissement de type palace Le Bristol Paris - an Oetker Collection Hotel propose une piscine sur le toit avec vue sur la Tour Eiffel, un authentique jardin intérieur à la française, ainsi que le spa primé Le Bristol by La Prairie.\r\n\r\nLes chambres spacieuses présentent une décoration élégante et personnalisée. Certaines affichent un mobilier de style Louis XV ou Louis XVI. Toutes comprennent une salle de bains privative munie d\'une double vasque et d\'une douche séparée. Vous apprécierez une vue sur le jardin intérieur à la française, la cour fleurie de l\'établissement ou la rue du Faubourg-Saint-Honoré.\r\n\r\nLe Bristol Paris - an Oetker Collection Hotel possède une piscine avec vue sur les toits de Paris et sur Montmartre en arrière-plan. Doté d\'un solarium, le spa et centre de bien-être Le Bristol by La Prairie dispense des massages et des soins La Prairie. Par ailleurs, l\'établissement comporte un jardin privé de 1 200 m² et une terrasse bien exposée.', 'maison', 3, 699, 'img/maison-cuisine-charles-floquet-paris.jpg', 'Maison'),
(35, 'Luteria', 'img/hotel-luteria-paris.jpg', 'img/hotel-vue-luteria-paris.jpg', 'img/hotel-salle-de-baoin-luteria-paris.jpg', 'paris', 'Situé à quelques pas des Champs-Élysées et de la place de la Madeleine, l\'établissement de type palace Le Bristol Paris - an Oetker Collection Hotel propose une piscine sur le toit avec vue sur la Tour Eiffel, un authentique jardin intérieur à la française, ainsi que le spa primé Le Bristol by La Prairie.\r\n\r\nLes chambres spacieuses présentent une décoration élégante et personnalisée. Certaines affichent un mobilier de style Louis XV ou Louis XVI. Toutes comprennent une salle de bains privative munie d\'une double vasque et d\'une douche séparée. Vous apprécierez une vue sur le jardin intérieur à la française, la cour fleurie de l\'établissement ou la rue du Faubourg-Saint-Honoré.\r\n\r\nLe Bristol Paris - an Oetker Collection Hotel possède une piscine avec vue sur les toits de Paris et sur Montmartre en arrière-plan. Doté d\'un solarium, le spa et centre de bien-être Le Bristol by La Prairie dispense des massages et des soins La Prairie. Par ailleurs, l\'établissement comporte un jardin privé de 1 200 m² et une terrasse bien exposée.', 'hotel', 3, 1099, 'img/hotel-luteria-paris.jpg', 'Hotel'),
(36, 'Bistrol', 'img/hotel-chambre-le-bristol-paris.jpg', 'img/hotel-salle-a-manger-le-bristol-paris.jpg', 'img/hotel-salle-de-bain-le-bristol-paris.jpg', 'paris', 'Le Bristol Paris - an Oetker Collection Hotel possède une piscine avec vue sur les toits de Paris et sur Montmartre en arrière-plan. Doté d\'un solarium, le spa et centre de bien-être Le Bristol by La Prairie dispense des massages et des soins La Prairie. Par ailleurs, l\'établissement comporte un jardin privé de 1 200 m² et une terrasse bien exposée.', 'hotel', 2, 3500, 'img/hotel-chambre-le-bristol-paris.jpg', 'Hotel'),
(37, 'Les-Jardin', 'img/hotel-spa-les-jardin-paris.jpg', 'img/hotel-chambre-les-jardin-paris.jpg', 'img/hotel-spa-les-jardin-paris.jpg', 'paris', 'L’Hotel Lutetia est un établissement de luxe emblématique situé dans le quartier de Saint-Germain-des-Prés à Paris. Implanté sur la rive gauche de la Seine, il se trouve à 5 minutes à pied du grand magasin Le Bon Marché et à 2 km du Musée du Louvre.\r\n\r\nVéritable lieu d’intérêt parisien, l’hôtel propose 184 chambres, dont 40 suites et 7 suites signature. Chacune d’entre elles dispose d’une connexion Wi-Fi gratuite, d’un système de divertissement Bang & Olufsen, d’une station multimédia et d’une salle de bains en marbre avec des articles de toilette Hermès gratuits. Certaines chambres comprennent un balcon donnant sur la tour Eiffel, tandis que certaines suites sont pourvues d’un toit-terrasse jouissant d’une vue à 360 ° sur Paris.', 'hotel', 4, 2999, 'img/hotel-salle-de-bain-les-jardin-paris.jpg', 'Hotel'),
(38, 'JC home', 'img/bain-prestige-fontainebleau.jpg', 'img/prestige-fontainebleau.jpg', 'img/bain-prestige-fontainebleau.jpg', 'fontainebleau', 'Situé à Fontainebleau, à 300 mètres du château de Fontainebleau, Le Home Fontainebleau possède un restaurant.\r\n\r\nTous les logements comprennent un coin salon, une télévision à écran plat, un lave-linge ainsi qu’une salle de bains privative avec douche et sèche-cheveux. Leur cuisine entièrement équipée dispose d’un micro-ondes. Un réfrigérateur, des plaques de cuisson, une bouilloire et une machine à café sont également disponibles.\r\n\r\nL’aéroport de Paris-Orly, le plus proche, est accessible à 44 km.\r\n\r\nC\'est le quartier préféré des voyageurs visitant Fontainebleau, selon les commentaires clients indépendants.\r\n\r\nNous parlons votre langue !', 'prestige', 8, 2300, 'img/salon-prestige-fontainebleau.jpg', 'Prestige'),
(39, 'Chez Pascal', 'img/piscine-villa-fontainebleau.jpg', 'img/cuisine-villa-fontainebleau.jpg', 'img/piscine-villa-fontainebleau.jpg', 'fontainebleau', 'Dotée d\'une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux, la maison d’hôtes La Guérinière est située à Fontainebleau, à moins de 200 mètres du château. Cet établissement possède des chambres familiales et une terrasse.\r\n\r\nLes chambres comprennent une armoire et une salle de bains privative.\r\n\r\nL\'aéroport de Paris-Orly, le plus proche, est implanté à 44 km.\r\n\r\nC\'est le quartier préféré des voyageurs visitant Fontainebleau, selon les commentaires clients indépendants.\r\n\r\nLes couples apprécient particulièrement l\'emplacement de cet établissement. Ils lui donnent la note de 10 pour un séjour à deux.\r\n\r\nNous parlons votre langue !', 'prestige', 4, 50000, 'img/salon-villa-fontainebleau.jpg', 'Prestige'),
(41, 'Le Vallona', 'img/villa-residence-fontainebleau.jpg', 'img/cuisine-villa-residence-fontainebleau.jpg', 'img/villa-residence-fontainebleau.jpg', 'fontainebleau', 'Doté d\'une connexion Wi-Fi gratuite, d\'un restaurant, d\'un bar et d\'une terrasse, l\'établissement La Demeure du Parc vous accueille à Fontainebleau, à 300 mètres du château.\r\n\r\nToutes les chambres disposent d\'un coin salon, d\'une télévision par satellite à écran plat ainsi que d\'une salle de bains pourvue d\'un sèche-cheveux et d\'articles de toilette gratuits.\r\n\r\nLa réception est ouverte 24h/24. Sur place, un service de location de vélos est assuré. D\'autre part, la région est prisée pour la randonnée à pied. L\'aéroport de Paris-Orly est accessible à 44 km.', 'prestige', 3, 789, 'img/piscine-villa-residence-fontainebleau.jpg', 'Prestige'),
(42, 'La guerniere', 'img/studio-royal.jpg', 'img/chambre-studio-royal.jpg', 'img/studio-royal.jpg', 'fontainebleau', 'Situé à Fontainebleau, à seulement 1 km du château de la ville, le Studio Royal, Place du marché avec parking privé propose une connexion Wi-Fi gratuite.\r\n\r\nLors de votre séjour, vous pourrez profiter d’une connexion à Netflix.\r\n\r\nL’aéroport de Paris-Orly est à 53 km.\r\n\r\nC\'est le quartier préféré des voyageurs visitant Fontainebleau, selon les commentaires clients indépendants.\r\n\r\nLes couples apprécient particulièrement l\'emplacement de cet établissement. Ils lui donnent la note de 9,5 pour un séjour à deux.\r\n\r\nNous parlons votre langue !', 'maison', 1, 250, 'img/salle-de-bain-studio-royal.jpg', 'Maison'),
(43, 'lelona', 'img/salon-la-gueriniere-fontainebleau.jpg', 'img/chambre-la-gueriniere-fontainebleau.jpg', 'img/cuisine-la-gueriniere-fontainebleau.jpg', 'fontainebleau', 'Le Sleepinfontainebleau est un établissement situé à Fontainebleau, à proximité du château de Fontainebleau.\r\n\r\nDoté d\'une connexion Wi-Fi gratuite, cet appartement dispose d\'une télévision par câble, d\'un lave-linge et d\'une cuisine avec four micro-ondes et réfrigérateur.\r\n\r\nL\'aéroport de Paris-Orly, le plus proche, est implanté à 53 km.\r\n\r\nC\'est le quartier préféré des voyageurs visitant Fontainebleau, selon les commentaires clients indépendants.\r\n\r\nLes couples apprécient particulièrement l\'emplacement de cet établissement. Ils lui donnent la note de 9,5 pour un séjour à deux.\r\n\r\nNous parlons votre langue !', 'maison', 2, 300, 'img/salon-la-gueriniere-fontainebleau.jpg', 'Maison'),
(44, 'Charmant Studio', 'img/salon-maison-fontainebleau.jpg', 'img/chambre-maison-fontainebleau.jpg', 'img/salon-maison-fontainebleau.jpg', 'fontainebleau', 'Situé à Fontainebleau, le Charmant studio dispose d’une connexion Wi-Fi gratuite et d’une terrasse.\r\n\r\nCet appartement comprend une chambre, une télévision par satellite à écran plat, un lave-linge et une salle de bains pourvue d’une douche. Sa cuisine équipée est munie d’un micro-ondes et d’un lave-vaisselle.\r\n\r\nVous pourrez profiter de la terrasse sur place et pêcher dans les environs.\r\n\r\nVous séjournerez à 1,9 km du château de Fontainebleau. Enfin, l’aéroport de Paris-Orly, le plus proche, se trouve à 54 km du Charmant studio.\r\n\r\nNous parlons votre langue !', 'maison', 1, 99, 'img/salle-de-bain-maison-fontainebleau.jpg', 'Maison'),
(45, 'Belle-Fontainebleau', 'img/accueil-belle-fontainebleau.jpg', 'img/chambe-belle-fontainebleaujpg.jpg', 'img/toilette-belle-fontainebleau.jpg', 'fontainebleau', 'Cet hôtel se situe au cœur de Fontainebleau, à 140 mètres du château de Fontainebleau et à moins de 15 minutes de marche de la forêt domaniale de Fontainebleau. Profitez de la connexion Wi-Fi gratuite.\r\n\r\nLes chambres de l\'Hôtel Belle Fontaine présentent un décor moderne pour votre confort. Chaque chambre dispose d\'une salle de bains privative et d\'une télévision satellite.\r\n\r\nLe Belle Fontaine Hôtel propose d\'autres services, comme une réception ouverte 24h/24 et une blanchisserie. Un petit-déjeuner buffet est servi tous les jours.\r\n\r\nLes activités et les sites de la région comprennent l\'équitation, le golf et le Musée napoléonien d\'art et d\'histoire militaire. Il se trouve à 2 km de la gare de Fontainebleau - Avon et à 13 km de Dammarie-les-Lys.\r\n\r\nC\'est le quartier préféré des voyageurs visitant Fontainebleau, selon les commentaires clients indépendants.\r\n\r\nLes couples apprécient particulièrement l\'emplacement de cet établissement. Ils lui donnent la note de 8,6 pour un séjour à deux.\r\n\r\nNous parlons votre langue !', 'hotel', 3, 77, 'img/accueil-belle-fontainebleau.jpg', 'Hotel'),
(46, 'Ibis fontainebleau', 'img/ibis-fontainebleau.jpg', 'img/hall-ibis-fontainebleau.jpg', 'img/chambre-ibis-fontainebleau.jpg', 'fontainebleau', 'Situé en plein cœur de Fontainebleau, à seulement 200 mètres du château, l\'ibis Château de Fontainebleau propose des chambres modernes. Vous aurez la possibilité de prendre un verre au bar sur place.\r\n\r\nToutes les chambres de l\'ibis Château de Fontainebleau comprennent la climatisation, un bureau et une télévision à écran plat. Leur salle de bains privative est pourvue d\'une baignoire ou d\'une douche.\r\n\r\nChaque jour, vous savourerez un petit-déjeuner buffet composé de plats sucrés et salés, tels que des œufs, de la salade de fruits, des yaourts et des jus de fruits. Des viennoiseries cuites sur place et des madeleines fraîches sont aussi proposées ainsi qu\'une boisson chaude et un fruit à emporter. Un petit-déjeuner plus léger est servi à partir de 4h00.\r\n\r\nNon-fumeurs, il propose une connexion Wi-Fi gratuite. Un parking privé est également mis à votre disposition sur place, moyennant des frais supplémentaires. Paris se trouve à 50 km de cet hôtel Ibis.\r\n\r\nC\'est le quartier préféré des voyageurs visitant Fontainebleau, selon les commentaires clients indépendants.\r\n\r\nLes couples apprécient particulièrement l\'emplacement de cet établissement. Ils lui donnent la note de 9,2 pour un séjour à deux.', 'hotel', 2, 109, 'img/salle-a-manger-ibis-fontainebleau.jpg', 'Hotel'),
(47, 'Mercure Fontainebleau', 'img/piscine-mercure-fontainebleau.jpg', 'img/chambre-mercure-fontainebleau.jpg', 'img/toilette-mercure-fontainebleau.jpg', 'fontainebleau', 'Installé dans un quartier résidentiel, le Mercure Demeure de Campagne Château de Fontainebleau est à 500 mètres du château de Fontainebleau et de ses jardins ainsi qu’à 10 minutes en voiture de la gare. Vous profiterez d’une connexion Wi-Fi gratuite et d’une piscine extérieure ouverte en haute saison.\r\n\r\nLe Carrousel, le bar-salon de l’établissement, est à votre disposition tous les jours. Vous bénéficierez d’un service d\'étage durant ses heures d’ouverture.\r\n\r\nSituée à 7 km et présentant un paysage varié, la forêt de Fontainebleau comprend plusieurs installations sportives pour faire de la randonnée, de l’escalade et du VTT. Sur place, le parking est gratuit.\r\n\r\nC\'est le quartier préféré des voyageurs visitant Fontainebleau, selon les commentaires clients indépendants.\r\n\r\nLes couples apprécient particulièrement l\'emplacement de cet établissement. Ils lui donnent la note de 8,6 pour un séjour à deux.\r\n\r\nNous parlons votre langue !', 'hotel', 4, 299, 'img/piscine-mercure-fontainebleau.jpg', 'Hotel');

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
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `gite`
--
ALTER TABLE `gite`
  MODIFY `id_gite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

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
