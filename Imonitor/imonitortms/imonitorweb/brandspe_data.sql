-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 05, 2016 at 03:05 AM
-- Server version: 10.0.25-MariaDB
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `brandspe_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `collect`
--

CREATE TABLE IF NOT EXISTS `collect` (
  `location` varchar(20) NOT NULL,
  `drink` varchar(20) NOT NULL,
  `data` decimal(10,0) NOT NULL,
  `userid` int(11) NOT NULL,
  `transactionnumber` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`transactionnumber`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `collect`
--

INSERT INTO `collect` (`location`, `drink`, `data`, `userid`, `transactionnumber`) VALUES
('bachos', 'heiniken', '340090', 221, 3),
('bachos', 'heiniken', '340090', 220, 4),
('bachos', 'heiniken', '340090', 220, 5),
('bachos', 'pilsner', '8283838', 220, 6),
('bachos', 'pilsner', '8283838', 330, 7),
('bachos', 'heiniken', '28485849', 330, 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(16) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(16) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `age` int(4) NOT NULL,
  `password` varchar(16) COLLATE latin1_general_ci NOT NULL,
  `national` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `username`, `email`, `age`, `password`, `national`) VALUES
('oluoch', 'regus', '', 28, 'regus', 2895462),
('Christine', 'cmuthamia', '', 30, 'muthamia', 278562),
('keith', 'ayodo', '', 23, '29854603', 29854603),
('susan', 'owiyo', '', 56, 'owiyo', 29854276);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
