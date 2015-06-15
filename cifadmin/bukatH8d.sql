-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 15 Juin 2015 à 08:23
-- Version du serveur: 5.5.43
-- Version de PHP: 5.4.41-0+deb7u1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bukatH8d`
--

-- --------------------------------------------------------

--
-- Structure de la table `db_cifa3com`
--

CREATE TABLE IF NOT EXISTS `db_cifa3com` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `video_link` varchar(255) NOT NULL,
  `synopsis` text NOT NULL,
  `modules` varchar(255) NOT NULL,
  `student_infos` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Contenu de la table `db_cifa3com`
--

INSERT INTO `db_cifa3com` (`id`, `title`, `video_link`, `synopsis`, `modules`, `student_infos`) VALUES
(12, 'Test avec liste Ã©tudiant', 'http://www.google.fr', 'aaaaaaaaaaaaaaaaaaaaaaa', 'Modules A', 'Jeremy SPAETH www.formation-wp.com'),
(13, 'Test avec liste Ã©tudiant', 'http://www.google.fr', 'aaaaaaaaaaaaaaaaaaaaaaa', 'Modules A', 'Jeremy SPAETH www.formation-wp.com'),
(14, 'Quelques exemples de vols - Dronelis Nantes', 'http://www.google.fr', 'ccc', 'Modules D', 'Gabriel SEN'),
(16, 'Quelques exemples de vols - Dronelis Nantes', 'https://www.youtube.com/watch?v=fUFjfJc2y8w', 'ddd', 'Modules A', 'SEN Gabriel - www.zeoctopus.com'),
(17, 'Quelques exemples de vols - Dronelis Nantes', 'https://www.youtube.com/watch?v=fUFjfJc2y8w', 'ddd', 'Modules A', 'SEN Gabriel - www.zeoctopus.com'),
(18, 'Quelques exemples de vols - Dronelis Nantes', 'https://www.youtube.com/watch?v=fUFjfJc2y8w', 'ddd', 'Modules A', 'SEN Gabriel - www.zeoctopus.com'),
(19, 'Quelques exemples de vols - Dronelis Nantes', 'https://www.youtube.com/watch?v=fUFjfJc2y8w', 'ddd', 'Modules A', 'SEN Gabriel - www.zeoctopus.com'),
(20, 'Quelques exemples de vols - Dronelis Nantes', 'https://www.youtube.com/watch?v=fUFjfJc2y8w', 'ddd', 'Modules A', 'SEN Gabriel - www.zeoctopus.com'),
(21, 'Quelques exemples de vols - Dronelis Nantes', 'https://www.youtube.com/watch?v=fUFjfJc2y8w', 'ddd', 'Modules A', 'SEN Gabriel - www.zeoctopus.com'),
(22, 'Quelques exemples de vols - Dronelis Nantes', 'https://www.youtube.com/watch?v=fUFjfJc2y8w', 'ddd', 'Modules A', 'SEN Gabriel - www.zeoctopus.com'),
(23, 'Quelques exemples de vols - Dronelis Nantes', 'https://www.youtube.com/watch?v=fUFjfJc2y8w', 'ddd', 'Modules A', 'SEN Gabriel - www.zeoctopus.com'),
(24, 'Quelques exemples de vols - Dronelis Nantes', 'https://www.youtube.com/watch?v=fUFjfJc2y8w', 'ddd', 'Modules A', 'SEN Gabriel - www.zeoctopus.com'),
(25, 'Quelques exemples de vols - Dronelis Nantes', 'https://www.youtube.com/watch?v=fUFjfJc2y8w', 'ddd', 'Modules A', 'SEN Gabriel - www.zeoctopus.com'),
(26, 'Quelques exemples de vols - Dronelis Nantes', 'https://www.youtube.com/watch?v=fUFjfJc2y8w', 'ddd', 'Modules A', 'SEN Gabriel - www.zeoctopus.com'),
(27, 'Titre de la video', 'https://www.youtube.com/watch?v=fUFjfJc2y8w', 'Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les annÃ©es 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte. Il n''a pas fait que survivre cinq siÃ¨cles, mais s''est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n''en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 'Modules A', 'SPAETH Jeremy - www.formation-wp.com');

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `modules`
--

INSERT INTO `modules` (`id`, `module_name`) VALUES
(1, 'Modules A'),
(2, 'Modules B'),
(3, 'Modules C'),
(4, 'Modules D'),
(5, 'Modules E'),
(6, 'Modules F');

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `students`
--

INSERT INTO `students` (`id`, `firstname`, `name`, `website`) VALUES
(1, 'Jeremy', 'SPAETH', 'www.formation-wp.com'),
(2, 'Gabriel', 'SEN', 'www.zeoctopus.com'),
(3, 'Jonathan', 'SIMONET', 'www.j-simonet.com');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `identifiant`, `password`) VALUES
(1, 'Jeremy', 'welcome'),
(2, 'Laurent', 'Cifacom');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
