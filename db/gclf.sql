-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2016 at 04:06 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gclf`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `cat_id` int(10) unsigned NOT NULL,
  `cat_nom` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `cat_created` datetime DEFAULT NULL,
  `cat_updated` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`cat_id`, `cat_nom`, `cat_created`, `cat_updated`) VALUES
(1, 'Science-fiction', '2016-01-13 11:50:33', '2016-01-13 11:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `fil_id` int(10) unsigned NOT NULL,
  `sup_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  `fil_titre` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `fil_filename` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `fil_annee` smallint(5) unsigned DEFAULT NULL,
  `fil_affiche` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `fil_synopsis` text CHARACTER SET latin1,
  `fil_acteurs` text CHARACTER SET latin1,
  `fil_description` text CHARACTER SET latin1,
  `fil_created` datetime DEFAULT NULL,
  `fil_updated` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`fil_id`, `sup_id`, `cat_id`, `fil_titre`, `fil_filename`, `fil_annee`, `fil_affiche`, `fil_synopsis`, `fil_acteurs`, `fil_description`, `fil_created`, `fil_updated`) VALUES
(3, 0, 1, 'Star Wars: Le réveil de la Force', 'fslkfjsdfjlsjf.fichier', 2015, 'Aucune affiche', 'Three decades after the defeat of the Galactic Empire, a new threat arises. The First Order attempts to rule the galaxy and only a ragtag group of heroes can stop them, along with the help of the Resistance.', 'Daisy Ridley, John Boyega, Oscar Isaac', 'Description ok', NULL, NULL),
(4, 0, 0, 'Rocky', '', 1976, 'http://ia.media-imdb.com/images/M/MV5BMTY5MDMzODUyOF5BMl5BanBnXkFtZTcwMTQ3NTMyNA@@._V1_SX300.jpg', 'Rocky Balboa, a small-time boxer gets a supremely rare chance to fight the heavy-weight champion, Apollo Creed, in a bout in which he strives to go the distance for his self-respect.', 'Sylvester Stallone, Talia Shire, Burt Young, Carl Weathers', 'Rocky Balboa, a small-time boxer gets a supremely rare chance to fight the heavy-weight champion, Apollo Creed, in a bout in which he strives to go the distance for his self-respect.', NULL, NULL),
(5, 0, 0, 'Dead Man', '', 1995, 'http://ia.media-imdb.com/images/M/MV5BMTIyNDQxNDUzNV5BMl5BanBnXkFtZTcwMzExMjAzMQ@@._V1_SX300.jpg', 'On the run after murdering a man, accountant William Blake encounters a strange North American man named Nobody who prepares him for his journey into the spiritual world.', 'Johnny Depp, Gary Farmer, Crispin Glover, Lance Henriksen', 'On the run after murdering a man, accountant William Blake encounters a strange North American man named Nobody who prepares him for his journey into the spiritual world.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE IF NOT EXISTS `support` (
  `sup_id` int(10) unsigned NOT NULL,
  `sup_nom` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `sup_created` datetime DEFAULT NULL,
  `sup_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`fil_id`),
  ADD KEY `film_FKIndex1` (`cat_id`),
  ADD KEY `film_FKIndex2` (`sup_id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`sup_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `fil_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `sup_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
