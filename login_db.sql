-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2024 at 06:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `studentuser`
--

CREATE TABLE `studentuser` (
  `id` int(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `studentuser`
--

INSERT INTO `studentuser` (`id`, `username`, `password`) VALUES
(1, '22801', '2001'),
(2, '22867', '2002'),
(3, '22868', '2003'),
(4, '22869', '2004'),
(5, '22874', '2005'),
(6, '22898', '2006'),
(7, '22900', '2007'),
(8, '23558', '2008'),
(9, '22820', '2009'),
(10, '22827', '2010'),
(11, '22846', '2011'),
(12, '22850', '2012'),
(13, '22859', '2013'),
(14, '22883', '2014'),
(15, '22887', '2015'),
(16, '22909', '2016'),
(17, '22912', '2017'),
(18, '22916', '2018'),
(19, '22919', '2019'),
(20, '22922', '2020'),
(21, '22924', '2021'),
(22, '23265', '2022'),
(23, '23561', '2023'),
(24, '23562', '2024'),
(25, '23563', '2025'),
(26, '23564', '2026'),
(27, '23934', '2027');

-- --------------------------------------------------------

--
-- Table structure for table `teacheruser`
--

CREATE TABLE `teacheruser` (
  `id` int(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `teacheruser`
--

INSERT INTO `teacheruser` (`id`, `username`, `password`) VALUES
(1, 'teacherton', '1001'),
(2, 'teacherkan', '1002'),
(3, 'teacherjob', '1003'),
(4, 'teacherview', '1004');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
