-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2016 at 01:38 AM
-- Server version: 10.0.26-MariaDB
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `brandspe_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `collect`
--

CREATE TABLE IF NOT EXISTS `collect` (
  `phonetype` varchar(20) NOT NULL,
  `operator` varchar(20) NOT NULL,
  `airtimeused` int(11) NOT NULL,
  `purchasing` varchar(100) NOT NULL,
  `selling` varchar(100) NOT NULL,
  `difficultiesbuying` varchar(100) NOT NULL,
  `difficultiesselling` varchar(100) NOT NULL,
  `counter` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`counter`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `collect`
--

INSERT INTO `collect` (`phonetype`, `operator`, `airtimeused`, `purchasing`, `selling`, `difficultiesbuying`, `difficultiesselling`, `counter`) VALUES
('Apple', 'Saf', 100, 'Phone accessories', 'Idea', 'Risk of fraud people selling', 'Not good', 6),
('Htc', 'Airtel', 150, 'Clothes', 'Things I don''t want', 'No', 'No', 7),
('Tecno', 'Airtel', 30, 'Fashion accessories', 'Fashion accessories', 'Fake products', 'Trust of customers', 8),
('htc', 'safaricom', 100, 'shoes', 'phone', 'no', 'no', 9),
('LG', 'Safaricom', 100, 'Clothes', 'Nothing', 'None', 'None', 10),
('Infinix', 'Safaricom', 50, 'Shoes', 'Clothes', 'Zero', 'Zero', 11),
('iPhone', 'Safaricom', 100, '', '', '', '', 12),
('Samsung', 'Airtel', 50, 'phones', 'phones', 'place of purchace', 'place of selling', 13),
('Xperia Z1', 'Airtel', 15, 'Electronics', 'Musical Instruments', 'The return policies for damaged goods received doesn''t always apply, I was told to use warranty yet ', 'No', 14),
('htc', 'safaricom', 100, 'shoes', 'phone', 'no', 'no', 15),
('Samsung galaxy A5', 'Safaricom', 50, 'Accessories', 'Accessories', 'Not yet', 'Not yet', 16),
('Huawei', 'Safaricom', 20, 'Phone', 'Laptops', 'No', 'No', 17),
('Huawei', 'Safaricom', 20, 'Phone', 'Laptops', 'No', 'No', 18),
('Htc', 'Airtel', 150, 'Clothes and accessories', 'Unnecessay Items', 'No', 'No', 19),
('Nokia lumia 620', 'safaricom', 50, 'Clothes, accessories', 'services', 'difficult to receive parcel', '', 20),
('iPhone', 'Safaricom', 100, 'Soccer shoes', 'Phones', 'Quality of products', 'the price needed is too high then what the customer wants to buy it for', 21),
('Infinix', 'Safaricom', 100, 'Make up', 'Clothes', 'The picture may differ with the kind of product you may receive later', 'Insecurities', 22),
('Huawei', 'Safaricom', 20, 'Phone', 'Laptops', 'No', 'No', 23),
('Kindle fire', 'Safaricom', 250, 'Electronics', 'Articles', 'Trust', 'Flooding', 24),
('Huawei', 'Safaricom', 20, 'Phone', 'Laptops', 'No', 'No', 25),
('Samsung', 'safaricom', 20, 'clothes', 'shoes', 'none', 'none', 26),
('Lumia 620', 'safaricom', 50, 'clothes', 'services', 'rates', 'sending items', 27),
('Samsung', 'safaricom', 20, 'clothes', 'shoes', 'none', 'I', 28),
('LENOVO', 'SAFARICOM', 100, 'AN ELECTRONIC', 'NOTHING', 'NONE', 'NONE', 29),
('Android', 'Safaricom', 100, 'Phones and jewelry', 'Clothes and jewelry', 'Trusting some sellers', 'The distance with your clients', 30);

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
  `national` int(11) NOT NULL,
  `count` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`count`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `username`, `email`, `age`, `password`, `national`, `count`) VALUES
('Leina', 'Leina', 'leina.meoli@yahoo.com', 1997, 'qlienation', 650297, 15),
('Aniker', 'Aniker', 'nikkiredanietpelslesh@gmail.com', 1996, 'redanietpels', 647874, 16),
('Donna', 'DonnaAsingo', 'donnaasingo@gmail.com', 1996, 'salvatore', 646677, 17),
('Rashida', 'Rashida Khanbhai', 'rkhanbhai@usiu.ac.ke', 1997, '649880.ab', 649880, 18),
('Abdibasid', 'Aiissack', 'issack286@gmail.com', 1996, 'barigi570234', 650439, 19),
('anitha', 'atimothy', 'anithatimothy@gmail.com', 1997, 'mereaimerais', 648973, 20),
('Nicole', 'CoCo', 'nicolesian88@gmail.com', 1997, 'iambeautiful', 650101, 21),
('sharuk', 'pro sharuk', 'sharukabba9@gmail.com', 1996, 'sharuk786', 650807, 22),
('RAJ SAVALA', 'rsavala@usiu.ac.', 'rsavala@usiu.ac.ke', 1994, 'cricketer', 650438, 23),
('Jack', 'Jack Oj', 'jackoj91@gmail.com', 1991, 'susclass2016', 649679, 24),
('Ann', 'kemmy', 'annwanza951@gmail.com', 1997, 'annkemmy951', 650424, 25),
('Bena', 'benamecha', 'benamecha@usiu.ac.ke', -1, 'Kerubo82', 650268, 26),
('Leina', 'Leina', 'leinameoli@gmail.com', 1997, 'alienation', 650297, 27),
('Nyiva', 'Barbie', 'Itumonyiva@gmail.com', 1995, 'pesasafi', 649795, 28),
('Brian', 'Yobrasquared', 'Yobrasquared@gmail.com', 1996, 'briannjaria', 650821, 29),
('Harsh', 'Harsh425', 'harshpatel42596@gmail.com', 1996, 'harsh25', 650842, 30),
('Diana', 'Ongoro', 'dongoro@usiu.ac.ke', 0, '', 650243, 31),
('caroline gacheru', 'carol', 'cwambo42@gmail.com', 1996, 'carrie', 650822, 32),
('Khevan', 'Khevan_15', 'khevan.shah@gmail.com', 1996, 'khevan15', 650096, 33),
('', '', '', 0, '', 0, 34),
('Nihad', 'Niha', 'nihadahmed30@gmail.com', 1998, 'Jazakallah', 649205, 35),
('Bilha Wachira', 'bmwachira@usiu.a', 'bmwachira@usiu.ac.ke', 1979, '649326.ab', 649326, 36),
('KEITH', 'keith14', 'itugikeith14@usiu.ac.ke', 1997, 'harden14', 34199806, 37),
('lily', 'lwanja', 'lwanja303@gmail.com', 1997, 'Lilianwanja', 34029959, 38),
('Polly', 'Juma', 'pollyjuma97naliaka@gmail.com', 1997, 'bungoma97.', 650497, 39),
('Diana', 'Ongoro', 'diannaongoro@gmail.com', 1995, 'ongorodee', 32518898, 40),
('Benny', 'bwaihenya@usiu.a', 'bennytip2000@gmail.com', 1996, '#usrael#', 650427, 41),
('Balya Brenda', 'iremera_', 'brendahbalya25@gmail.com', 1997, 'cupboards1', 650720, 42),
('Mercy Rutto', 'rchebet', 'mrutto@gmail.com', 1998, '19â…ž4', 650741, 43);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
