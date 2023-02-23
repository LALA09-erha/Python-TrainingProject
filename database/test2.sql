-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 02:41 PM
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
-- Database: `test2`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `IDABSEN` int(11) NOT NULL,
  `TANGGAL` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `IDAGAMA` decimal(10,0) NOT NULL,
  `NAMAAGAMA` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `goldarah`
--

CREATE TABLE `goldarah` (
  `IDGOLDARAH` decimal(10,0) NOT NULL,
  `NAMAGOLDARAH` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jekel`
--

CREATE TABLE `jekel` (
  `IDJEKEL` decimal(10,0) NOT NULL,
  `NAMAJEKEL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `IDKAB` decimal(10,0) NOT NULL,
  `IDPROV` decimal(10,0) DEFAULT NULL,
  `NAMAKAB` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `IDKEC` decimal(10,0) NOT NULL,
  `IDKAB` decimal(10,0) DEFAULT NULL,
  `IDKEL` decimal(10,0) DEFAULT NULL,
  `NAMAKEC` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `IDKEL` decimal(10,0) NOT NULL,
  `NAMAKEL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kewarganegaraan`
--

CREATE TABLE `kewarganegaraan` (
  `IDKWN` decimal(10,0) NOT NULL,
  `NAMAKWN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kisdetail`
--

CREATE TABLE `kisdetail` (
  `IDKARTU` char(13) NOT NULL,
  `IDKEL` decimal(10,0) DEFAULT NULL,
  `IDKEC` decimal(10,0) DEFAULT NULL,
  `NAMAKIS` varchar(255) DEFAULT NULL,
  `TANGGALLAHIR` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ktpdetail`
--

CREATE TABLE `ktpdetail` (
  `NIK` char(16) NOT NULL,
  `IDKAB` decimal(10,0) DEFAULT NULL,
  `IDKARTU` char(13) DEFAULT NULL,
  `IDKEL` decimal(10,0) DEFAULT NULL,
  `IDSNIKAH` decimal(10,0) DEFAULT NULL,
  `IDKWN` decimal(10,0) DEFAULT NULL,
  `IDGOLDARAH` decimal(10,0) DEFAULT NULL,
  `IDJEKEL` decimal(10,0) DEFAULT NULL,
  `IDAGAMA` decimal(10,0) DEFAULT NULL,
  `IDPEKERJAAN` decimal(10,0) DEFAULT NULL,
  `TLAHIR` date DEFAULT NULL,
  `TCETAK` date DEFAULT NULL,
  `TAKHIR` date DEFAULT NULL,
  `NAMA` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `IDMATKUL` int(11) NOT NULL,
  `IDABSEN` int(11) DEFAULT NULL,
  `NAMAMATKUL` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pejabat`
--

CREATE TABLE `pejabat` (
  `NRP` char(8) NOT NULL,
  `NOSIM` char(12) DEFAULT NULL,
  `NAMAPEJABAT` varchar(255) DEFAULT NULL,
  `JABATAN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `IDPEKERJAAN` decimal(10,0) NOT NULL,
  `NAMAPEKERJAAN` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `IDPROV` decimal(10,0) NOT NULL,
  `NAMAPROV` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `simdetaik`
--

CREATE TABLE `simdetaik` (
  `NOSIM` char(12) NOT NULL,
  `IDTIPESIM` decimal(10,0) DEFAULT NULL,
  `IDPEKERJAAN` decimal(10,0) DEFAULT NULL,
  `IDGOLDARAH` decimal(10,0) DEFAULT NULL,
  `IDKEL` decimal(10,0) DEFAULT NULL,
  `NAMASIM` varchar(255) DEFAULT NULL,
  `TGLLAHIR` timestamp NULL DEFAULT NULL,
  `MASABERLAKU` timestamp NULL DEFAULT NULL,
  `TTERBIT` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `IDABSEN` int(11) DEFAULT NULL,
  `NIM` char(12) DEFAULT NULL,
  `NAMASISWA` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_menikah`
--

CREATE TABLE `status_menikah` (
  `IDSNIKAH` decimal(10,0) NOT NULL,
  `NAMASNIKAH` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipesim`
--

CREATE TABLE `tipesim` (
  `IDTIPESIM` decimal(10,0) NOT NULL,
  `NAMATIPESIM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `IDUSER` int(11) NOT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`IDABSEN`),
  ADD UNIQUE KEY `ABSEN_PK` (`IDABSEN`);

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`IDAGAMA`),
  ADD UNIQUE KEY `AGAMA_PK` (`IDAGAMA`);

--
-- Indexes for table `goldarah`
--
ALTER TABLE `goldarah`
  ADD PRIMARY KEY (`IDGOLDARAH`),
  ADD UNIQUE KEY `GOLDARAH_PK` (`IDGOLDARAH`);

--
-- Indexes for table `jekel`
--
ALTER TABLE `jekel`
  ADD PRIMARY KEY (`IDJEKEL`),
  ADD UNIQUE KEY `JEKEL_PK` (`IDJEKEL`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`IDKAB`),
  ADD UNIQUE KEY `KABUPATEN_PK` (`IDKAB`),
  ADD KEY `MENEMPATKAN_FK` (`IDPROV`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`IDKEC`),
  ADD UNIQUE KEY `KECAMATAN_PK` (`IDKEC`),
  ADD KEY `MEMILIKI_FK` (`IDKAB`),
  ADD KEY `TEDIRI_FK` (`IDKEL`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`IDKEL`),
  ADD UNIQUE KEY `KELURAHAN_PK` (`IDKEL`);

--
-- Indexes for table `kewarganegaraan`
--
ALTER TABLE `kewarganegaraan`
  ADD PRIMARY KEY (`IDKWN`),
  ADD UNIQUE KEY `KEWARGANEGARAAN_PK` (`IDKWN`);

--
-- Indexes for table `kisdetail`
--
ALTER TABLE `kisdetail`
  ADD PRIMARY KEY (`IDKARTU`),
  ADD UNIQUE KEY `KISDETAIL_PK` (`IDKARTU`),
  ADD KEY `BERDIAM_DI_FK` (`IDKEL`),
  ADD KEY `BERFAKSE_FK` (`IDKEC`);

--
-- Indexes for table `ktpdetail`
--
ALTER TABLE `ktpdetail`
  ADD PRIMARY KEY (`NIK`),
  ADD UNIQUE KEY `KTPDETAIL_PK` (`NIK`),
  ADD KEY `BERADA_DI_FK` (`IDKEL`),
  ADD KEY `MENERIMA_FK` (`IDKARTU`),
  ADD KEY `MENJADI_FK` (`IDKWN`),
  ADD KEY `MENGANUT_FK` (`IDAGAMA`),
  ADD KEY `BERJENIS_FK` (`IDJEKEL`),
  ADD KEY `BEKERJA_SEBAGAI_FK` (`IDPEKERJAAN`),
  ADD KEY `MEMPUNYAI_FK` (`IDGOLDARAH`),
  ADD KEY `BERSTATUS_FK` (`IDSNIKAH`),
  ADD KEY `LAHIR_DI_FK` (`IDKAB`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`IDMATKUL`),
  ADD UNIQUE KEY `MATAKULIAH_PK` (`IDMATKUL`),
  ADD KEY `DENGAN_MATKUL_FK` (`IDABSEN`);

--
-- Indexes for table `pejabat`
--
ALTER TABLE `pejabat`
  ADD PRIMARY KEY (`NRP`),
  ADD UNIQUE KEY `PEJABAT_PK` (`NRP`),
  ADD KEY `MENANDATANGANI_FK` (`NOSIM`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`IDPEKERJAAN`),
  ADD UNIQUE KEY `PEKERJAAN_PK` (`IDPEKERJAAN`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`IDPROV`),
  ADD UNIQUE KEY `PROVINSI_PK` (`IDPROV`);

--
-- Indexes for table `simdetaik`
--
ALTER TABLE `simdetaik`
  ADD PRIMARY KEY (`NOSIM`),
  ADD UNIQUE KEY `SIMDETAIK_PK` (`NOSIM`),
  ADD KEY `TINGGAL_DI_FK` (`IDKEL`),
  ADD KEY `MENDAPATKAN_FK` (`IDTIPESIM`),
  ADD KEY `BEKERJA_MENJADI_FK` (`IDPEKERJAAN`),
  ADD KEY `TIPE_DARAH_FK` (`IDGOLDARAH`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD KEY `MENGABSEN_FK` (`IDABSEN`);

--
-- Indexes for table `status_menikah`
--
ALTER TABLE `status_menikah`
  ADD PRIMARY KEY (`IDSNIKAH`),
  ADD UNIQUE KEY `STATUS_MENIKAH_PK` (`IDSNIKAH`);

--
-- Indexes for table `tipesim`
--
ALTER TABLE `tipesim`
  ADD PRIMARY KEY (`IDTIPESIM`),
  ADD UNIQUE KEY `TIPESIM_PK` (`IDTIPESIM`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`IDUSER`),
  ADD UNIQUE KEY `USERS_PK` (`IDUSER`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD CONSTRAINT `FK_KABUPATE_MENEMPATK_PROVINSI` FOREIGN KEY (`IDPROV`) REFERENCES `provinsi` (`IDPROV`);

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `FK_KECAMATA_MEMILIKI_KABUPATE` FOREIGN KEY (`IDKAB`) REFERENCES `kabupaten` (`IDKAB`),
  ADD CONSTRAINT `FK_KECAMATA_TEDIRI_KELURAHA` FOREIGN KEY (`IDKEL`) REFERENCES `kelurahan` (`IDKEL`);

--
-- Constraints for table `kisdetail`
--
ALTER TABLE `kisdetail`
  ADD CONSTRAINT `FK_KISDETAI_BERDIAM_D_KELURAHA` FOREIGN KEY (`IDKEL`) REFERENCES `kelurahan` (`IDKEL`),
  ADD CONSTRAINT `FK_KISDETAI_BERFAKSE_KECAMATA` FOREIGN KEY (`IDKEC`) REFERENCES `kecamatan` (`IDKEC`);

--
-- Constraints for table `ktpdetail`
--
ALTER TABLE `ktpdetail`
  ADD CONSTRAINT `FK_KTPDETAI_BEKERJA_S_PEKERJAA` FOREIGN KEY (`IDPEKERJAAN`) REFERENCES `pekerjaan` (`IDPEKERJAAN`),
  ADD CONSTRAINT `FK_KTPDETAI_BERADA_DI_KELURAHA` FOREIGN KEY (`IDKEL`) REFERENCES `kelurahan` (`IDKEL`),
  ADD CONSTRAINT `FK_KTPDETAI_BERJENIS_JEKEL` FOREIGN KEY (`IDJEKEL`) REFERENCES `jekel` (`IDJEKEL`),
  ADD CONSTRAINT `FK_KTPDETAI_BERSTATUS_STATUS_M` FOREIGN KEY (`IDSNIKAH`) REFERENCES `status_menikah` (`IDSNIKAH`),
  ADD CONSTRAINT `FK_KTPDETAI_LAHIR_DI_KABUPATE` FOREIGN KEY (`IDKAB`) REFERENCES `kabupaten` (`IDKAB`),
  ADD CONSTRAINT `FK_KTPDETAI_MEMPUNYAI_GOLDARAH` FOREIGN KEY (`IDGOLDARAH`) REFERENCES `goldarah` (`IDGOLDARAH`),
  ADD CONSTRAINT `FK_KTPDETAI_MENERIMA_KISDETAI` FOREIGN KEY (`IDKARTU`) REFERENCES `kisdetail` (`IDKARTU`),
  ADD CONSTRAINT `FK_KTPDETAI_MENGANUT_AGAMA` FOREIGN KEY (`IDAGAMA`) REFERENCES `agama` (`IDAGAMA`),
  ADD CONSTRAINT `FK_KTPDETAI_MENJADI_KEWARGAN` FOREIGN KEY (`IDKWN`) REFERENCES `kewarganegaraan` (`IDKWN`);

--
-- Constraints for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD CONSTRAINT `FK_MATAKULI_DENGAN_MA_ABSEN` FOREIGN KEY (`IDABSEN`) REFERENCES `absen` (`IDABSEN`);

--
-- Constraints for table `pejabat`
--
ALTER TABLE `pejabat`
  ADD CONSTRAINT `FK_PEJABAT_MENANDATA_SIMDETAI` FOREIGN KEY (`NOSIM`) REFERENCES `simdetaik` (`NOSIM`);

--
-- Constraints for table `simdetaik`
--
ALTER TABLE `simdetaik`
  ADD CONSTRAINT `FK_SIMDETAI_BEKERJA_M_PEKERJAA` FOREIGN KEY (`IDPEKERJAAN`) REFERENCES `pekerjaan` (`IDPEKERJAAN`),
  ADD CONSTRAINT `FK_SIMDETAI_MENDAPATK_TIPESIM` FOREIGN KEY (`IDTIPESIM`) REFERENCES `tipesim` (`IDTIPESIM`),
  ADD CONSTRAINT `FK_SIMDETAI_TINGGAL_D_KELURAHA` FOREIGN KEY (`IDKEL`) REFERENCES `kelurahan` (`IDKEL`),
  ADD CONSTRAINT `FK_SIMDETAI_TIPE_DARA_GOLDARAH` FOREIGN KEY (`IDGOLDARAH`) REFERENCES `goldarah` (`IDGOLDARAH`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `FK_SISWA_MENGABSEN_ABSEN` FOREIGN KEY (`IDABSEN`) REFERENCES `absen` (`IDABSEN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
