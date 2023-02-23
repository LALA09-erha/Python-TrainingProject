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
-- Database: `apppayment`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `IDTRANSAKSI` int(11) NOT NULL,
  `IDUSER` int(11) DEFAULT NULL,
  `TOTALTRANSAKSI` varchar(255) DEFAULT NULL,
  `SESSIONID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`IDTRANSAKSI`, `IDUSER`, `TOTALTRANSAKSI`, `SESSIONID`) VALUES
(72, 59, '600000', '1676036552'),
(73, 58, '100', '1676036582'),
(74, 58, '100', '1676036593'),
(75, 58, '100', '1676036615'),
(76, 58, '15', '1676140111'),
(77, 58, '15', '1676140147'),
(78, 58, '15', '1676141342');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `IDTDETAIL` int(11) NOT NULL,
  `IDUSER` int(11) DEFAULT NULL,
  `IDTRANSAKSI` int(11) DEFAULT NULL,
  `JENIS_TRANSAKSI` char(100) DEFAULT NULL,
  `JUMLAH_TRANSAKSI` varchar(255) DEFAULT NULL,
  `SESSIONID` varchar(255) DEFAULT NULL,
  `VERIFIKASI` varchar(10) DEFAULT NULL,
  `KODE_REFERRAL` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`IDTDETAIL`, `IDUSER`, `IDTRANSAKSI`, `JENIS_TRANSAKSI`, `JUMLAH_TRANSAKSI`, `SESSIONID`, `VERIFIKASI`, `KODE_REFERRAL`) VALUES
(109, 59, 72, 'Penarikan', '200000', '1676036552', '0', 'X10HabX'),
(110, 59, 72, 'Penginputan', '200000', '1676036552', '0', 'X5JVkbX'),
(111, 59, 72, 'Penginputan', '200000', '1676036552', '0', 'X28IePX'),
(112, 58, 73, 'Penginputan', '50', '1676036582', '0', 'X28IePX'),
(113, 58, 73, 'Penginputan', '50', '1676036582', '1', 'X26GIKX'),
(114, 58, 74, 'Penginputan', '50', '1676036593', '1', 'X26GIKX'),
(115, 58, 74, 'Penginputan', '50', '1676036593', '1', 'X26GIKX'),
(116, 58, 75, 'Penginputan', '50', '1676036615', '1', 'X26GIKX'),
(117, 58, 75, 'Penginputan', '20', '1676036615', '1', 'X26GIKX'),
(118, 58, 75, 'Penginputan', '30', '1676036615', '1', 'X26GIKX'),
(119, 58, 76, 'Penarikan', '10', '1676140111', '1', 'X26GIKX'),
(120, 58, 76, 'Penarikan', '2', '1676140111', '1', 'X26GIKX');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `IDUSER` int(11) NOT NULL,
  `ROLE` char(50) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT NULL,
  `UPDATE_AT` timestamp NULL DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`IDUSER`, `ROLE`, `USERNAME`, `PASSWORD`, `CREATED_AT`, `UPDATE_AT`, `EMAIL`) VALUES
(1, 'Admin', 'erha', '1', '2021-06-12 14:41:30', '2021-12-16 06:20:42', 'keluarga.erha@gmail.com'),
(41, 'Guest', 'fikri', '$2y$10$qdxGzZA5JBLFLMQgtEpnT.9zWHLGwfqZ3wDiwk3XOZc2cxINb9zD.', '2021-06-13 12:38:17', '2021-12-16 18:32:11', 'lala@gmail.com'),
(53, 'Guest', 'caca', '$2y$10$9qRwFnJoXO6q7xpcx9yFpu72WJDdN0ESDTySuXKY6KA1eovK3Jt5K', '2021-12-07 16:30:49', '2021-12-16 04:22:19', 'ainunajib2001@gmail.com'),
(54, 'Guest', 'cacaca', '$2y$10$H7sgxOX4dYt/maoUw8CIQunGP6bb.jqkHXg4enLsVkZHgj5q8nn0m', '2021-12-16 05:13:53', '2021-12-16 06:11:25', 'cacala424@gmail.com'),
(55, 'Guest', 'lalalala', '$2y$10$wbEIpHj2VGGmvYpAnNADYOTI4xOZrPfOvOpfam8BKjmbXue.vHE5u', '2021-12-16 05:24:42', '2021-12-16 19:55:45', 'toram.online201801@gmail.com'),
(56, 'Guest', 'dada', '$2y$10$YJa8ux8wOZIEA9nuFwrGd.oqsInDYYIR7JClwEOrauJf0/YzksgXi', '2021-12-16 19:54:25', '2021-12-16 19:54:25', 'toram@gmail.com'),
(57, 'Guest', 'wawa', '1', '2023-01-19 17:13:59', '2023-01-19 17:13:59', 'keluarga@gmail.com'),
(58, 'Guest', 'lana', 'lana', '2023-01-30 13:48:07', '2023-01-30 13:48:07', 'lana@gmail.com'),
(59, 'Guest', 'lanaa', 'lana', '2023-01-30 14:28:51', '2023-01-30 14:28:51', 'lanaa@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`IDTRANSAKSI`),
  ADD UNIQUE KEY `TRANSAKSI_PK` (`IDTRANSAKSI`),
  ADD KEY `RELATIONSHIP_1_FK` (`IDUSER`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`IDTDETAIL`),
  ADD UNIQUE KEY `TRANSAKSI_DETAIL_PK` (`IDTDETAIL`),
  ADD KEY `RELATIONSHIP_2_FK` (`IDUSER`),
  ADD KEY `RELATIONSHIP_3_FK` (`IDTRANSAKSI`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`IDUSER`),
  ADD UNIQUE KEY `USERS_PK` (`IDUSER`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `IDTRANSAKSI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `IDTDETAIL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `IDUSER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `FK_TRANSAKS_RELATIONS_USERS` FOREIGN KEY (`IDUSER`) REFERENCES `users` (`IDUSER`);

--
-- Constraints for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `FK_TRANSAKS_RELATIONS_TRANSAKS` FOREIGN KEY (`IDTRANSAKSI`) REFERENCES `transaksi` (`IDTRANSAKSI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
