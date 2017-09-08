-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 31 Août 2017 à 13:06
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `microcms`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_article`
--

CREATE TABLE `t_article` (
  `art_id` int(11) NOT NULL,
  `art_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `art_content` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_comment`
--

CREATE TABLE `t_comment` (
  `com_id` int(11) NOT NULL,
  `com_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `art_id` int(11) NOT NULL,
  `usr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_experience`
--

CREATE TABLE `t_experience` (
  `xp_id` int(11) NOT NULL,
  `xp_contrat` varchar(255) NOT NULL,
  `xp_debut` date NOT NULL,
  `xp_fin` date NOT NULL,
  `xp_descriptif` varchar(255) NOT NULL,
  `xp_poste` varchar(255) NOT NULL,
  `xp_img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_experience`
--

INSERT INTO `t_experience` (`xp_id`, `xp_contrat`, `xp_debut`, `xp_fin`, `xp_descriptif`, `xp_poste`, `xp_img`) VALUES
(1, 'Stage', '2011-12-10', '2011-12-16', 'Réservations de produits', 'FLY - CLAYE SOUILLY', 'images/Fly_logo_2012.png'),
(4, 'Diplome', '2013-09-02', '2015-07-05', 'Système d''information et numérique', 'Baccalauréat STI2D', 'images/bac.png'),
(8, 'CDD', '2015-06-25', '2015-08-29', 'Tri des courriers internationaux et affranchissement', 'LA POSTE - GONESSE', 'images/laposte.png'),
(9, 'Benevolat', '2015-10-25', '2017-05-31', 'Coach de football en catégorie u15', 'MONTREUIL SOUVENIRS 93', 'images/montreuil.png'),
(10, 'CDD', '2015-12-08', '2016-01-31', 'Tri de courriers internationaux et affranchissement', 'LA POSTE - ROISSY CDG', 'images/laposte.png'),
(11, 'CDD', '2016-04-11', '2016-05-28', 'Tri de courriers internationaux et affranchissement', 'LA POSTE - ROISSY CDG', 'images/laposte.png'),
(12, 'CDD', '2017-01-16', '2017-02-17', 'Animation pause midi', 'ECOLE ELEMENTAIRE DE LA BOISSIERE - MONTREUIL', 'images/cantine.jpg'),
(13, 'CDD', '2017-02-20', '2017-12-19', 'Intégrateur - Développeur Web', 'LE POLES - PANTIN', 'images/lepoles.png');

-- --------------------------------------------------------

--
-- Structure de la table `t_loisirs`
--

CREATE TABLE `t_loisirs` (
  `loisir_id` int(11) NOT NULL,
  `loisir_nom` varchar(255) NOT NULL,
  `loisir_descriptif` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_perso`
--

CREATE TABLE `t_perso` (
  `perso_id` int(11) NOT NULL,
  `perso_nom` varchar(255) NOT NULL,
  `perso_prenom` varchar(255) NOT NULL,
  `perso_poste` varchar(255) NOT NULL,
  `perso_img` varchar(300) NOT NULL,
  `perso_facebook` varchar(300) NOT NULL,
  `perso_github` varchar(300) NOT NULL,
  `perso_codepen` varchar(300) NOT NULL,
  `perso_linkedin` varchar(300) NOT NULL,
  `perso_cv` varchar(255) NOT NULL,
  `perso_tel` varchar(255) NOT NULL,
  `perso_adresse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_perso`
--

INSERT INTO `t_perso` (`perso_id`, `perso_nom`, `perso_prenom`, `perso_poste`, `perso_img`, `perso_facebook`, `perso_github`, `perso_codepen`, `perso_linkedin`, `perso_cv`, `perso_tel`, `perso_adresse`) VALUES
(1, 'HERICOURT', 'Rudy', 'Intégrateur - Développeur Web', 'https://media.licdn.com/mpr/mpr/shrink_100_100/AAEAAQAAAAAAAAufAAAAJDJkYTRiZjdlLTYzZmEtNGM4OC04MTEwLWY0N2Y1ZWMwNTVlNw.jpg', 'https://www.facebook.com/rudaxx.mrb', 'https://github.com/RudyMrb', 'https://codepen.io/RudyMrb/', 'https://www.linkedin.com/in/rudy-hericourt-84a2b8140/', 'CV_rudy_hericourt_5cd0715a.pdf', '0698920504', '50 Allée Daniel FERY');

-- --------------------------------------------------------

--
-- Structure de la table `t_portfolio`
--

CREATE TABLE `t_portfolio` (
  `port_id` int(11) NOT NULL,
  `port_name` varchar(255) NOT NULL,
  `port_lieu` varchar(255) NOT NULL,
  `port_descriptif` varchar(1000) NOT NULL,
  `port_date` date NOT NULL,
  `port_img` varchar(300) NOT NULL,
  `port_lien` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `t_portfolio`
--

INSERT INTO `t_portfolio` (`port_id`, `port_name`, `port_lieu`, `port_descriptif`, `port_date`, `port_img`, `port_lien`) VALUES
(2, 'Site Perso', 'Pantin', 'Mon site personnel', '2017-08-17', 'images/Capture.PNG', 'http://rudy.hericourt.ma6tvacoder.org'),
(3, 'Projet Collectif', 'Pantin', 'Projet collectif sur le site ACleFeu', '2017-09-05', 'images/projet.jpg', 'http://ACleFeu.com/'),
(4, 'Travaux Pratique', 'Pantin', 'Creation de la page du site Apple', '2017-04-17', 'images/apple.png', 'http://apple.com/'),
(5, 'Travaux Pratique', 'Pantin', 'Creation du site Burger', '2017-03-17', 'images/burger.png', 'http://RudyBurger.com/');

-- --------------------------------------------------------

--
-- Structure de la table `t_user`
--

CREATE TABLE `t_user` (
  `usr_id` int(11) NOT NULL,
  `usr_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(88) COLLATE utf8_unicode_ci NOT NULL,
  `usr_salt` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `usr_role` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `t_user`
--

INSERT INTO `t_user` (`usr_id`, `usr_name`, `usr_password`, `usr_salt`, `usr_role`) VALUES
(7, 'RudyMrb', '$2y$13$zwL7zfuyFEkk00FUqXtHau9no/XPGz7miQX8h07shCFtHYp7OMQsq', 'd37bb26fdcef55412ee2a76', 'ROLE_ADMIN');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `t_article`
--
ALTER TABLE `t_article`
  ADD PRIMARY KEY (`art_id`);

--
-- Index pour la table `t_comment`
--
ALTER TABLE `t_comment`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `fk_com_art` (`art_id`),
  ADD KEY `fk_com_usr` (`usr_id`);

--
-- Index pour la table `t_experience`
--
ALTER TABLE `t_experience`
  ADD PRIMARY KEY (`xp_id`);

--
-- Index pour la table `t_loisirs`
--
ALTER TABLE `t_loisirs`
  ADD PRIMARY KEY (`loisir_id`);

--
-- Index pour la table `t_perso`
--
ALTER TABLE `t_perso`
  ADD PRIMARY KEY (`perso_id`);

--
-- Index pour la table `t_portfolio`
--
ALTER TABLE `t_portfolio`
  ADD PRIMARY KEY (`port_id`);

--
-- Index pour la table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `t_article`
--
ALTER TABLE `t_article`
  MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_comment`
--
ALTER TABLE `t_comment`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_experience`
--
ALTER TABLE `t_experience`
  MODIFY `xp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `t_loisirs`
--
ALTER TABLE `t_loisirs`
  MODIFY `loisir_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_perso`
--
ALTER TABLE `t_perso`
  MODIFY `perso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_portfolio`
--
ALTER TABLE `t_portfolio`
  MODIFY `port_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `t_comment`
--
ALTER TABLE `t_comment`
  ADD CONSTRAINT `fk_com_art` FOREIGN KEY (`art_id`) REFERENCES `t_article` (`art_id`),
  ADD CONSTRAINT `fk_com_usr` FOREIGN KEY (`usr_id`) REFERENCES `t_user` (`usr_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
