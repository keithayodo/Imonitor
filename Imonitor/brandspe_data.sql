-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2016 at 09:56 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brandspe_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `collect`
--

CREATE TABLE `collect` (
  `phonetype` varchar(20) NOT NULL,
  `operator` varchar(20) NOT NULL,
  `airtimeused` int(11) NOT NULL,
  `purchasing` varchar(100) NOT NULL,
  `selling` varchar(100) NOT NULL,
  `difficultiesbuying` varchar(100) NOT NULL,
  `difficultiesselling` varchar(100) NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collect`
--

INSERT INTO `collect` (`phonetype`, `operator`, `airtimeused`, `purchasing`, `selling`, `difficultiesbuying`, `difficultiesselling`, `counter`) VALUES
('Xiaomi Redmi Note 2', 'Safaricom', 200, '', '0', '', '', 1),
('Nokia 2100', 'Safaricom', 300, 'earphones, laptop, phone, memorycard, clothes', '', '', '', 2),
('Moto', 'yu', 100, 'sandles, tv, laptop', '', '', '', 3),
('sony xperia Z2', 'Safaricom', 200, 'shoes, shirts, ironbox', 'used phone, laptop, tv', 'no internet, delays', 'i don''t know', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(16) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(16) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `age` int(4) NOT NULL,
  `password` varchar(16) COLLATE latin1_general_ci NOT NULL,
  `national` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `username`, `email`, `age`, `password`, `national`, `count`) VALUES
('Keith Ayodo', 'kayodo', 'keithayodo@brandspeak.co.ke', 23, '29854603', 29854603, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collect`
--
ALTER TABLE `collect`
  ADD PRIMARY KEY (`counter`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`count`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collect`
--
ALTER TABLE `collect`
  MODIFY `counter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `count` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
