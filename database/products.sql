-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 02:40 PM
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
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `iditem` int(11) NOT NULL,
  `namaitem` varchar(255) DEFAULT NULL,
  `jumlahitem` char(255) DEFAULT NULL,
  `iduser` char(155) DEFAULT NULL,
  `idsession` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`iditem`, `namaitem`, `jumlahitem`, `iduser`, `idsession`) VALUES
(106, 'buku', '1', '10', '1673885457'),
(107, 'bulpen', '2', '10', '1673885457'),
(108, 'penghapus', '3', '10', '1673885457'),
(189, 'buku', '8', '22', '1675966552'),
(190, 'bulpen', '6', '22', '1675966552'),
(191, 'penghapus', '9', '22', '1675966552'),
(192, 'apa aja', '6', '22', '1674823059'),
(193, 'pensil', '6', '22', '1675858304'),
(194, 'buku', '5', '33', '1675968821'),
(195, 'bulpen', '17', '33', '1675968821'),
(196, 'penghapus', '18', '33', '1675968821'),
(197, 'pen', '5', '33', '1675966631');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `password`, `created_at`, `updated_at`, `email`) VALUES
(1, 'Admin', 'erha', '1', '2021-06-12 21:41:30', '2021-12-16 13:20:42', 'keluarga.erha@gmail.com'),
(41, 'Guest', 'fikri', '$2y$10$qdxGzZA5JBLFLMQgtEpnT.9zWHLGwfqZ3wDiwk3XOZc2cxINb9zD.', '2021-06-13 19:38:17', '2021-12-17 01:32:11', 'lala@gmail.com'),
(53, 'Guest', 'caca', '$2y$10$9qRwFnJoXO6q7xpcx9yFpu72WJDdN0ESDTySuXKY6KA1eovK3Jt5K', '2021-12-07 23:30:49', '2021-12-16 11:22:19', 'ainunajib2001@gmail.com'),
(54, 'Guest', 'cacaca', '$2y$10$H7sgxOX4dYt/maoUw8CIQunGP6bb.jqkHXg4enLsVkZHgj5q8nn0m', '2021-12-16 12:13:53', '2021-12-16 13:11:25', 'cacala424@gmail.com'),
(55, 'Guest', 'lalalala', '$2y$10$wbEIpHj2VGGmvYpAnNADYOTI4xOZrPfOvOpfam8BKjmbXue.vHE5u', '2021-12-16 12:24:42', '2021-12-17 02:55:45', 'toram.online201801@gmail.com'),
(56, 'Guest', 'dada', '$2y$10$YJa8ux8wOZIEA9nuFwrGd.oqsInDYYIR7JClwEOrauJf0/YzksgXi', '2021-12-17 02:54:25', '2021-12-17 02:54:25', 'toram@gmail.com'),
(57, 'Guest', 'wawa', '1', '2023-01-20 00:13:59', '2023-01-20 00:13:59', 'keluarga@gmail.com'),
(58, 'Guest', 'lana', 'lana', '2023-01-30 20:48:07', '2023-01-30 20:48:07', 'lana@gmail.com'),
(59, 'Guest', 'lanaa', 'lana', '2023-01-30 21:28:51', '2023-01-30 21:28:51', 'lanaa@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`iditem`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `iditem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
