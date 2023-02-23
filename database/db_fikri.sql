-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 02:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fikri`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_153`
--

CREATE TABLE `tbl_153` (
  `id_153` int(11) NOT NULL,
  `nama_153` varchar(255) NOT NULL,
  `email_153` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_153`
--

INSERT INTO `tbl_153` (`id_153`, `nama_153`, `email_153`) VALUES
(5, 'dafadanada', 'dafa_romadhon@gmail.com'),
(6, 'kalamun', 'kalamun@gmail.com'),
(7, 'aufa bihar izqi', 'aufabihar@gmail.com'),
(9, 'Caca Handika', 'cacala424@gmail.com'),
(10, 'Fikri', 'keluarga.erha@gmail.com'),
(11, 'da', 'dada@gmail.com'),
(12, 'caca lala', 'toram.online201801@gmail.com'),
(13, 'Fikri Ainun Najib', 'fikri_erha@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_153`
--
ALTER TABLE `tbl_153`
  ADD PRIMARY KEY (`id_153`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_153`
--
ALTER TABLE `tbl_153`
  MODIFY `id_153` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
