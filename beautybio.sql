-- phpMyAdmin SQL Dump
-- version 3.4.3.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 08, 2022 at 09:31 AM
-- Server version: 5.0.77
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `beautybio`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(15) NOT NULL auto_increment,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;


--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL auto_increment,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `product_code` (`product_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'BIO1', 'CINQ HUILES ESSENTIELLES', 'Tea tree, Hélichryse italienne, Lavande aspic, Menthe poivrée et Gaulthérie couchée sauvage : 5 huiles essentielles indispensables en voyage pour soulager les bobos du quotidien : coups de soleil, piqûres d’insectes, maux de tête, courbatures, mal des transports, bleus et bosses...', 'FT_trombone_Coffret-trio-HE_Trousse-Urgence.png', 26, 5000.00),
(2, 'BIO2', 'HUILE VÉGÉTALE MOUTARDE BIO', 'Utilisée en Inde dans les soins capillaires, cette huile puissante est réputée pour favoriser la pousse des cheveux et lutter contre leur chute. De plus, elle apporte à vos préparations une action gainante et fortifiante sur les longueurs. .', 'catalogue_hv_moutarde_bio_3.jpg', 7, 200.00),
(3, 'BIO3', 'HUIDE DE MORINGA BIOo', 'Très efficace sur les cheveux frisés ou crépus, l huile de Moringa est traditionnellement utilisée pour nourrir, fortifier et protéger les cheveux, ou encore pour discipliner et dessiner les boucles des cheveux afro. Sa teneur en acide béhénique fait de cette huile vierge pressée à froid un actif capillaire d exception, qui gaine les cheveux et protège les pointes abîmées. Cette huile douce et nourrissante est également fabuleuse pour réparer et adoucir les peaux desséchées et sensibles. En plus de ses multiples bienfaits, son excellente stabilité à l oxydation en fait une huile très intéressante en cosmétique.', 'gamme-huile-de-moringa-diongoma-bio.jpg', 34, 1000.00);




-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL default 'user',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'Omayma', 'chahbar', 'lyon', 'Lyon', 69000, 'ochahbar@beautybio.com`', '1234', 'user'),
(2, 'Admin', 'Webmaster', 'admin', 'admin', 69000, 'admin@admin.com', 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
