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
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `IDABSEN` int(11) NOT NULL,
  `IDUSER` int(11) DEFAULT NULL,
  `IDSISWA` char(50) DEFAULT NULL,
  `IDPELAJARAN` int(11) DEFAULT NULL,
  `TANGGAL` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `IDPELAJARAN` int(11) NOT NULL,
  `IDUSER` int(11) DEFAULT NULL,
  `NAMAPELAJARAN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`IDPELAJARAN`, `IDUSER`, `NAMAPELAJARAN`) VALUES
(363, 0, 'ipa'),
(852, 0, 'ipa');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `IDSISWA` char(50) NOT NULL,
  `IDUSER` int(11) DEFAULT NULL,
  `NAMASISWA` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`IDSISWA`, `IDUSER`, `NAMASISWA`) VALUES
('154', 0, 'owk'),
('2004111', 0, 'iuei3qui');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `IDUSER` int(11) NOT NULL,
  `ROLE` char(20) DEFAULT NULL,
  `USERNAME` char(20) DEFAULT NULL,
  `EMAIL` char(20) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`IDUSER`, `ROLE`, `USERNAME`, `EMAIL`, `PASSWORD`) VALUES
(0, 'user', 'caca', 'caca@gmail.com', '$2y$10$dz7wNDuIaVcEVDQgBfX0suu.gCi/efawtX9YKUms56rPksUhaH8jG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`IDABSEN`),
  ADD UNIQUE KEY `ABSEN_PK` (`IDABSEN`),
  ADD KEY `RELATIONSHIP_1_FK` (`IDUSER`),
  ADD KEY `RELATIONSHIP_2_FK` (`IDPELAJARAN`),
  ADD KEY `RELATIONSHIP_3_FK` (`IDSISWA`);

--
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`IDPELAJARAN`),
  ADD UNIQUE KEY `PELAJARAN_PK` (`IDPELAJARAN`),
  ADD KEY `RELATIONSHIP_4_FK` (`IDUSER`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`IDSISWA`),
  ADD UNIQUE KEY `SISWA_PK` (`IDSISWA`),
  ADD KEY `RELATIONSHIP_5_FK` (`IDUSER`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDUSER`),
  ADD UNIQUE KEY `USER_PK` (`IDUSER`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absen`
--
ALTER TABLE `absen`
  ADD CONSTRAINT `FK_ABSEN_RELATIONS_PELAJARA` FOREIGN KEY (`IDPELAJARAN`) REFERENCES `pelajaran` (`IDPELAJARAN`),
  ADD CONSTRAINT `FK_ABSEN_RELATIONS_SISWA` FOREIGN KEY (`IDSISWA`) REFERENCES `siswa` (`IDSISWA`),
  ADD CONSTRAINT `FK_ABSEN_RELATIONS_USER` FOREIGN KEY (`IDUSER`) REFERENCES `user` (`IDUSER`);

--
-- Constraints for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD CONSTRAINT `FK_PELAJARA_RELATIONS_USER` FOREIGN KEY (`IDUSER`) REFERENCES `user` (`IDUSER`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `FK_SISWA_RELATIONS_USER` FOREIGN KEY (`IDUSER`) REFERENCES `user` (`IDUSER`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
