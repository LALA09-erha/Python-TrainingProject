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
-- Database: `siakad`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen_siswa`
--

CREATE TABLE `absen_siswa` (
  `id_absen_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `hadir` int(11) NOT NULL,
  `izin` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absen_siswa`
--

INSERT INTO `absen_siswa` (`id_absen_siswa`, `id_mapel`, `id_siswa`, `hadir`, `izin`, `sakit`, `alpha`) VALUES
(7, 23, 208, 21, 1, 1, 2),
(8, 23, 15, 10, 1, 1, 2),
(10, 23, 208, 12, 32, 52, 64),
(11, 23, 208, 12, 42, 52, 62);

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_guru` varchar(255) DEFAULT NULL,
  `nip` int(255) DEFAULT NULL,
  `jk_guru` enum('Pria','Wanita') DEFAULT NULL,
  `tgl_lahir_guru` date DEFAULT NULL,
  `tlp_guru` varchar(255) DEFAULT NULL,
  `alamat_guru` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `username`, `password`, `nama_guru`, `nip`, `jk_guru`, `tgl_lahir_guru`, `tlp_guru`, `alamat_guru`) VALUES
(8, '4', 'a87ff679a2f3e71d9181a67b7542122c', 'Susi Haris Kusumawati, S.Pd., M.Pd. ', 4, 'Wanita', '2022-11-22', '08', 'Jl. '),
(9, '75', 'd09bf41544a3365a46c9077ebb5e35c3', 'Neli Rosliyani, S.H.I.', 75, 'Wanita', '2022-11-22', '000', 'jl'),
(10, '10', 'd3d9446802a44259755d38e6d163e820', 'Elly Andriani Mansyuroh Kasihani, S.T. ', 10, 'Wanita', '2022-11-22', '000', 'jl'),
(12, '28', '33e75ff09dd601bbe69f351039152189', 'Ahmad Fauzi, S.Pd., M.Pd.', 28, 'Pria', '2022-11-22', '08', 'jl'),
(15, '16', 'c74d97b01eae257e44aa9d5bade97baf', 'Surya Pertiwi, S.Pd.', 16, 'Wanita', '2022-11-22', '08', 'jl'),
(16, '32', '6364d3f0f495b6ab9dcf8d3b5c6e0b01', 'Aliefiyanto Kurniawan, SE., S.Pd.', 32, 'Pria', '2022-11-22', '08', 'jl'),
(17, '68', 'a3f390d88e4c41f2747bfa2f1b5f87db', 'Dermawan Wicaksono Wibowo, S.Pd.', 68, 'Pria', '2022-11-23', '08', 'jl'),
(18, '26', '4e732ced3463d06de0ca9a15b6153677', 'Husnul Yaqin, S.Ag.', 26, 'Pria', '2022-11-23', '08', 'jl'),
(19, '55', 'b53b3a3d6ab90ce0268229151c9bde11', 'Ulil Albab, S.Pd., M.Pd. ', 55, 'Pria', '2022-11-23', '08', 'jl'),
(22, '73', 'd2ddea18f00665ce8623e36bd4e3c7c5', 'Mamik Marfuah, S.Pd.', 73, 'Wanita', '2022-11-23', '000', 'jl'),
(25, '19', '1f0e3dad99908345f7439f8ffabdffc4', 'Lailatul Hasanah, S.Pd., M.Pd.', 19, 'Wanita', '2022-11-23', '09', 'jl'),
(26, '14', 'aab3238922bcc25a6f606eb525ffdc56', 'Ribut Rahmat Jaya, S.Pd, M.Si.', 14, 'Pria', '2022-11-23', '08', 'jl'),
(27, '33', '182be0c5cdcd5072bb1864cdee4d3d6e', 'Amirotul Zuraidha, S.Pd., M.Pd.', 33, 'Wanita', '2022-11-23', '08', 'jl'),
(28, '34', 'e369853df766fa44e1ed0ff613f563bd', 'Firman Hidayat, ST., M.Kom.', 34, 'Pria', '2022-11-23', '08', 'jl'),
(29, '12', 'c20ad4d76fe97759aa27a0c99bff6710', 'H. Arif Suhaimi, S.Pd., M.M.', 12, 'Pria', '2022-11-23', '08', 'jl'),
(30, '20', '98f13708210194c475687be6106a3b84', 'Dra. Hj. Siti Komariyah', 20, 'Wanita', '2022-11-23', '08', 'jl'),
(31, '36', '19ca14e7ea6328a42e0eb13d585e4c22', 'Aries Sufiyah, M.Si.', 36, 'Wanita', '2022-11-23', '08', 'jl'),
(32, '6', '1679091c5a880faf6fb5e6087eb1b2dc', 'Elfaini Salam, S.Pd.', 6, 'Wanita', '2022-11-23', '08', 'jl'),
(33, '80', 'f033ab37c30201f73f142449d037028d', 'Isriyah, S.Pd.', 80, 'Wanita', '2022-11-23', '08', 'jl'),
(36, '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'H. Mohammad Raub, S.Pd., M.Pd.I.', 3, 'Pria', '2022-11-25', '08', 'jl'),
(37, '5', 'e4da3b7fbbce2345d7772b0674a318d5', 'Rahmat Djunaidi, S.Pd.', 5, 'Pria', '2022-11-25', '08', 'jl'),
(38, '18', '6f4922f45568161a8cdf4ad2299f6d23', 'Dra. Siti Musarrofah, M.Pd. ', 18, 'Wanita', '2022-11-25', '08', 'jl'),
(40, '23', '37693cfc748049e45d87b8c7d8b9aacd', 'Abdul Mujib, S.Pd.', 23, 'Pria', '2022-11-25', '08', 'jl'),
(44, '37', 'd41d8cd98f00b204e9800998ecf8427e', 'Uswatun Hasanah, S.Psi.', 37, 'Wanita', '2022-11-25', '000', 'jl'),
(45, '40', 'd41d8cd98f00b204e9800998ecf8427e', 'Akhmad Jailani, S.Pd., M.Pd.', 40, 'Pria', '2022-11-25', '000', 'jl'),
(47, '43', 'd41d8cd98f00b204e9800998ecf8427e', 'Sabikin, S.Pd.', 43, 'Pria', '2022-11-25', '000', 'jl'),
(48, '44', 'd41d8cd98f00b204e9800998ecf8427e', 'Nur Burhanuddin Hamka, S.Pd.', 44, 'Pria', '2022-11-25', '000', 'jl'),
(49, '47', 'd41d8cd98f00b204e9800998ecf8427e', 'Sri Wahyuni, S.Pd.', 47, 'Wanita', '2022-11-25', '000', 'jl'),
(51, '63', 'd41d8cd98f00b204e9800998ecf8427e', 'Anna Allaili Alala, S.Pd.I.', 63, 'Wanita', '2022-11-25', '000', 'jl'),
(53, '65', 'd41d8cd98f00b204e9800998ecf8427e', 'Qurniawati, S.Pd., Gr.', 65, 'Wanita', '2022-11-25', '000', 'jl'),
(54, '66', 'd41d8cd98f00b204e9800998ecf8427e', 'Niken Mangayu Wuri Utami, S.Pd.', 66, 'Wanita', '2022-11-25', '000', 'jl'),
(55, '67', 'd41d8cd98f00b204e9800998ecf8427e', 'Ina Sukmawati, S.Pd.', 67, 'Wanita', '2022-11-25', '000', 'jl'),
(57, '71', 'd41d8cd98f00b204e9800998ecf8427e', 'Davis Nur Iqbal Rifandi, S.Pd.', 71, 'Pria', '2022-11-25', '000', 'jl'),
(58, '72', 'd41d8cd98f00b204e9800998ecf8427e', 'Sihabuddin, S.Ag., M.Pd.I.', 72, 'Pria', '2022-11-25', '000', 'jl'),
(59, '76', 'd41d8cd98f00b204e9800998ecf8427e', 'Arum Aisya, S.Pd.', 76, 'Wanita', '2022-11-25', '000', 'jl'),
(61, '77', 'd41d8cd98f00b204e9800998ecf8427e', 'Nor Asia, S.Pd.', 77, 'Wanita', '2022-11-25', '000', 'jl'),
(62, '78', 'd41d8cd98f00b204e9800998ecf8427e', 'Silvi Refaliandra Gafur, S.Pd.', 78, 'Wanita', '2022-11-25', '000', 'jl'),
(63, '79', 'd41d8cd98f00b204e9800998ecf8427e', 'Chandra Setiawan, S.Psi.', 79, 'Pria', '2022-11-25', '000', 'jl'),
(64, '81', 'd41d8cd98f00b204e9800998ecf8427e', 'Amelia Risqiyanti, S.Pd.', 81, 'Wanita', '2022-11-25', '000', 'jl'),
(65, '87', 'd41d8cd98f00b204e9800998ecf8427e', 'Mesraji, S.Pd.', 87, 'Pria', '2022-11-25', '000', 'jl'),
(66, '88', 'd41d8cd98f00b204e9800998ecf8427e', 'Hamimah, S.Pd.', 88, 'Wanita', '2022-11-25', '000', 'jl'),
(67, '91', 'd41d8cd98f00b204e9800998ecf8427e', 'Naharotul Istiqomah, S.Pd.', 91, 'Wanita', '2022-11-25', '000', 'jl'),
(68, '48', '642e92efb79421734881b53e1e1b18b6', 'Rina Yuliani, S.Pd', 48, 'Wanita', '2022-11-27', '000', 'jl'),
(69, '54', 'a684eceee76fc522773286a895bc8436', 'Dian Anggraini, S.Pd., M.Pd', 54, 'Wanita', '2022-11-27', '000', 'jl'),
(70, '9', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'Finalia Meiriana, S.Pd', 9, 'Wanita', '2022-11-27', '000', 'jl'),
(71, '86', '93db85ed909c13838ff95ccfa94cebd9', 'Kurnia Fidayanti, S.Pd', 86, 'Wanita', '2022-11-27', '000', 'jl'),
(72, '25', '8e296a067a37563370ded05f5a3bf3ec', 'Anni Robiatin Istiningsih, S.Pd', 25, 'Wanita', '2022-11-27', '000', 'jl'),
(73, '74', 'ad61ab143223efbc24c7d2583be69251', 'Lita Agustina, S.Si., M.Pd', 74, 'Wanita', '2022-11-27', '000', 'jl'),
(74, '82', '9778d5d219c5080b9a6a17bef029331c', 'Hari Wahyudi, S.Pd', 82, 'Pria', '2022-11-27', '000', 'jl');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_jurusan`, `id_mapel`, `hari`, `jam_mulai`, `jam_selesai`) VALUES
(10, 18, 9, 'Senin', '07:00:00', '09:00:00'),
(11, 18, 13, 'Senin', '09:00:00', '15:00:00'),
(12, 18, 14, 'Selasa', '07:00:00', '10:00:00'),
(13, 18, 21, 'Selasa', '10:00:00', '15:00:00'),
(14, 18, 16, 'Rabu', '07:00:00', '12:00:00'),
(15, 18, 12, 'Rabu', '12:00:00', '15:00:00'),
(16, 18, 17, 'Kamis', '07:00:00', '09:00:00'),
(17, 18, 18, 'Kamis', '09:00:00', '12:00:00'),
(18, 18, 14, 'Kamis', '12:00:00', '15:00:00'),
(19, 18, 19, 'Jum\'at', '07:00:00', '11:00:00'),
(20, 18, 20, 'Kamis', '13:00:00', '15:00:00'),
(21, 21, 62, 'Senin', '07:00:00', '13:00:00'),
(25, 21, 70, 'Selasa', '07:00:00', '13:00:00'),
(26, 21, 12, 'Selasa', '13:00:00', '15:00:00'),
(27, 21, 17, 'Rabu', '07:00:00', '09:00:00'),
(28, 21, 34, 'Selasa', '09:00:00', '13:00:00'),
(29, 21, 63, 'Rabu', '13:00:00', '15:00:00'),
(30, 21, 59, 'Kamis', '07:00:00', '09:00:00'),
(31, 21, 9, 'Kamis', '09:00:00', '11:00:00'),
(33, 21, 60, 'Jum\'at', '07:00:00', '11:00:00'),
(35, 21, 64, 'Kamis', '13:00:00', '15:00:00'),
(36, 21, 64, 'Senin', '13:00:00', '15:00:00'),
(39, 20, 65, 'Senin', '09:00:00', '12:00:00'),
(40, 20, 52, 'Senin', '12:00:00', '15:00:00'),
(41, 20, 26, 'Selasa', '07:00:00', '09:00:00'),
(42, 20, 66, 'Selasa', '07:00:00', '09:00:00'),
(43, 20, 29, 'Selasa', '09:00:00', '12:00:00'),
(44, 20, 64, 'Selasa', '12:00:00', '15:00:00'),
(45, 20, 24, 'Rabu', '07:00:00', '09:00:00'),
(47, 20, 33, 'Rabu', '09:00:00', '12:00:00'),
(48, 20, 53, 'Rabu', '12:00:00', '15:00:00'),
(49, 20, 34, 'Kamis', '07:00:00', '13:00:00'),
(50, 20, 35, 'Kamis', '13:00:00', '15:00:00'),
(51, 20, 27, 'Jum\'at', '07:00:00', '09:00:00'),
(52, 20, 22, 'Jum\'at', '09:00:00', '11:00:00'),
(53, 20, 54, 'Jum\'at', '13:00:00', '15:00:00'),
(54, 13, 36, 'Senin', '07:00:00', '09:00:00'),
(55, 13, 37, 'Senin', '09:00:00', '11:00:00'),
(56, 13, 38, 'Senin', '11:00:00', '12:30:00'),
(57, 13, 39, 'Senin', '12:30:00', '13:30:00'),
(58, 13, 55, 'Senin', '13:30:00', '15:00:00'),
(59, 13, 40, 'Selasa', '07:00:00', '12:00:00'),
(60, 13, 41, 'Selasa', '12:00:00', '15:00:00'),
(61, 13, 56, 'Rabu', '07:00:00', '12:00:00'),
(62, 13, 40, 'Rabu', '12:00:00', '15:00:00'),
(63, 13, 42, 'Kamis', '07:00:00', '09:00:00'),
(64, 13, 43, 'Kamis', '09:00:00', '12:00:00'),
(65, 13, 66, 'Kamis', '12:00:00', '15:00:00'),
(66, 13, 44, 'Jum\'at', '07:00:00', '10:00:00'),
(67, 13, 45, 'Jum\'at', '13:00:00', '15:00:00'),
(68, 16, 37, 'Senin', '07:00:00', '09:00:00'),
(69, 16, 46, 'Senin', '09:00:00', '11:00:00'),
(70, 16, 47, 'Senin', '12:00:00', '15:00:00'),
(71, 16, 57, 'Selasa', '07:00:00', '12:00:00'),
(72, 16, 47, 'Selasa', '12:00:00', '15:00:00'),
(73, 16, 45, 'Rabu', '07:00:00', '09:00:00'),
(74, 16, 58, 'Rabu', '09:00:00', '10:00:00'),
(75, 16, 39, 'Rabu', '10:00:00', '12:00:00'),
(76, 16, 48, 'Rabu', '12:00:00', '15:00:00'),
(77, 16, 49, 'Kamis', '07:00:00', '09:00:00'),
(78, 16, 50, 'Kamis', '09:00:00', '12:00:00'),
(79, 16, 51, 'Kamis', '12:00:00', '15:00:00'),
(80, 16, 9, 'Jum\'at', '07:00:00', '11:00:00'),
(81, 16, 38, 'Jum\'at', '13:00:00', '15:00:00'),
(82, 20, 23, 'Senin', '07:00:00', '09:00:00'),
(83, 21, 61, 'Jum\'at', '13:00:00', '15:00:00'),
(84, 17, 27, 'Senin', '07:00:00', '09:00:00'),
(85, 17, 24, 'Senin', '09:00:00', '12:00:00'),
(86, 17, 16, 'Senin', '12:00:00', '15:00:00'),
(87, 17, 67, 'Selasa', '07:00:00', '09:00:00'),
(88, 17, 58, 'Selasa', '09:00:00', '10:00:00'),
(89, 17, 68, 'Selasa', '10:00:00', '12:00:00'),
(90, 17, 23, 'Selasa', '12:00:00', '13:30:00'),
(91, 17, 69, 'Selasa', '13:30:00', '15:00:00'),
(92, 17, 18, 'Rabu', '07:00:00', '10:00:00'),
(93, 17, 65, 'Rabu', '10:00:00', '12:30:00'),
(94, 17, 47, 'Rabu', '12:30:00', '15:00:00'),
(95, 17, 14, 'Kamis', '07:00:00', '11:30:00'),
(96, 17, 21, 'Kamis', '11:30:00', '15:00:00'),
(97, 17, 13, 'Jum\'at', '07:00:00', '15:00:00'),
(98, 21, 70, 'Rabu', '09:00:00', '13:00:00'),
(101, 4, 12, 'Senin', '07:00:00', '09:00:00'),
(102, 6, 18, 'Senin', '07:00:00', '09:00:00'),
(103, 6, 18, 'Senin', '07:00:00', '07:00:00'),
(104, 14, 33, 'Senin', '07:00:00', '09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `kelas_jurusan` varchar(255) NOT NULL,
  `kode_jurusan` varchar(255) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `ruang_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `kelas_jurusan`, `kode_jurusan`, `nama_jurusan`, `ruang_jurusan`) VALUES
(4, 'X', 'DPIB', 'Desain Pemodelan dan Informasi Bangunan', 'I'),
(5, 'XI', 'DPIB', 'Desain Pemodelan dan Informasi Bangunan', 'I'),
(6, 'XII', 'DPIB', 'Desain Pemodelan dan Informasi Bangunan', 'I'),
(7, 'X', 'TITL', 'Teknik ketenagalistrikan', 'I'),
(8, 'XI', 'TITL', 'Teknik ketenagalistrikan', 'I'),
(9, 'XII', 'TITL', 'Teknik ketenagalistrikan', 'I'),
(10, 'X', 'TPM', 'Teknik Permesinan', 'I'),
(11, 'XI', 'TPM', 'Teknik Permesinan', 'I'),
(12, 'XII', 'TPM', 'Teknik Permesinan', 'I'),
(13, 'X', 'TO', 'Teknik Otomotif', 'I'),
(14, 'XI', 'TO', 'Teknik Otomotif', 'I'),
(15, 'XII', 'TO', 'Teknik Otomotif', 'I'),
(16, 'X', 'TJKT', 'Teknik Jaringan Komputer dan Telekomunikasi', 'I'),
(17, 'XI', 'TJKT', 'Teknik Jaringan Komputer dan Telekomunikasi', 'I'),
(18, 'XII', 'TJKT', 'Teknik Jaringan Komputer dan Telekomunikasi', 'I'),
(19, 'X', 'RPL', 'Pengembangan Perangkat Lunak dan Gim', 'I'),
(20, 'XI', 'RPL', 'Pengembangan Perangkat Lunak dan Gim', 'I'),
(21, 'XII', 'RPL', 'Pengembangan Perangkat Lunak dan Gim', 'I'),
(22, 'X', 'TKI', 'Teknik Kimia Industri', 'I'),
(23, 'XI', 'TKI', 'Teknik Kimia Industri', 'I'),
(24, 'XII', 'TKI', 'Teknik Kimia Industri', 'I'),
(25, 'X', 'TE', 'Teknik Elektronika', 'I'),
(26, 'XI', 'TE', 'Teknik Elektronika', 'I'),
(27, 'XII', 'TE', 'Teknik Elektronika', 'I');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `kode_mapel` varchar(255) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `id_guru`, `kode_mapel`, `nama_mapel`) VALUES
(9, 30, 'PAI', 'Pendidikan Agama Islam'),
(12, 9, 'PAI', 'Pendidikan Agama Islam'),
(13, 29, 'AIJ', 'Administrasi Infrastruktur Jaringan'),
(14, 16, 'PKKWU', 'Produktif Kreatif dan Kewirausahaan'),
(16, 19, 'ASJ', 'Administrasi Sistem Jaringan'),
(17, 31, 'PPKN', 'Pendidikan Pancasila Kewarganegaraan'),
(18, 25, 'BIG', 'Bahasa Ingrris'),
(19, 32, 'MTK', 'Matematika'),
(20, 33, 'BADER', 'Bahasa Daerah'),
(21, 28, 'TLJ', 'Teknologi Layanan Jaringan'),
(22, 49, 'SEJ', 'Sejarah'),
(23, 8, 'Pancasila', 'Pancasila'),
(24, 18, 'PAI', 'Pendidikan Agama Islam'),
(25, 42, 'PKKWU', 'Produktif Kreatif dan Kewirausahaan'),
(26, 50, 'BIN', 'Bahasa Indonesia'),
(27, 17, 'Penjas', 'Pendidikan Jasmani'),
(29, 64, 'BADER', 'Bahasa Daerah'),
(30, 39, 'Matpil', 'Mata Pelajaran Pilihan'),
(33, 67, 'Matpil', 'Mata Pelajaran Pilihan'),
(34, 57, 'Basis Data & Program', 'Basis Data & Program'),
(35, 55, 'MAT', 'Matematika'),
(36, 48, 'Penjas', 'Pendidikan Jasmani'),
(37, 61, 'SEJ', 'Sejarah'),
(38, 12, 'Pancasila', 'Pancasila'),
(39, 36, 'SENI', 'Seni'),
(40, 40, 'DASAR2 KEJURUAN', 'Dasar Dasar Kejuruan'),
(41, 10, 'INFORMATIKA', 'Informatika'),
(42, 51, 'PAI', 'Pendidikan Agama Islam'),
(43, 53, 'BIN', 'Bahasa Indonesia'),
(44, 62, 'BADER', 'Bahasa Daerah'),
(45, 37, 'MAT', 'Matematika'),
(46, 66, 'BADER', 'Bahasa Daerah'),
(47, 27, 'DASAR2 KEJURUAN', 'Dasar Dasar Kejuruan'),
(48, 58, 'PAI', 'Pendidikan Agama Islam'),
(49, 65, 'Penjas', 'Pendidikan Jasmani'),
(50, 54, 'INFORMATIKA', 'Informatika'),
(51, 47, 'BIG', 'Bahasa Ingrris'),
(52, 67, 'PPB', 'Pemrograman Perangkat Bergerak'),
(53, 57, 'PBG', 'Pemrograman Berbasis Grafis'),
(54, 44, 'BP', 'Bimbingan Penyuluhan'),
(55, 63, 'BP', 'Bimbingan Penyuluhan'),
(56, 15, 'IPAS', 'Ilmu Pengetahuan Alam Dan Sosial'),
(57, 45, 'IPAS', 'Ilmu Pengetahuan Alam Dan Sosial'),
(58, 22, 'BP', 'Bimbingan Penyuluhan'),
(59, 69, 'MAT', 'Matematika'),
(60, 70, 'BIG', 'Bahasa Inggris'),
(61, 71, 'BADER', 'Bahasa Daerah'),
(62, 68, 'PBO', 'Pemrograman Berorientasi Obyek'),
(63, 68, 'BASDAT', 'Basis Data & Program'),
(64, 38, 'PKKWU', 'Produktif Kreatif dan Kewirausahaan'),
(65, 26, 'BIN', 'Bahasa Indonesia'),
(66, 59, 'BIG', 'Bahasa Inggris'),
(67, 72, 'MAT', 'Matematika'),
(68, 73, 'BADER', 'Bahasa Daerah'),
(69, 74, 'SEJ', 'Sejarah'),
(70, 57, 'PWPB', 'Pemrograman Web dan Perangkat Bergerak'),
(72, 74, 'BIN', 'Bahasa Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `semester` enum('1','2') NOT NULL,
  `tahun_ajaran` varchar(255) NOT NULL,
  `tugas1` int(11) NOT NULL,
  `tugas2` int(11) NOT NULL,
  `tugas3` int(11) NOT NULL,
  `uts` int(11) NOT NULL,
  `uas` int(11) NOT NULL,
  `nilai_akhir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_jurusan`, `id_mapel`, `id_siswa`, `semester`, `tahun_ajaran`, `tugas1`, `tugas2`, `tugas3`, `uts`, `uas`, `nilai_akhir`) VALUES
(7, 17, 23, 208, '2', '2022', 81, 70, 70, 70, 70, 72),
(8, 17, 23, 15, '1', '2022', 70, 70, 70, 70, 70, 70),
(11, 17, 23, 18, '1', '2020', 90, 98, 86, 98, 86, 91),
(12, 17, 23, 208, '1', '2020', 42, 52, 62, 74, 62, 62);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `nama_siswa` varchar(255) DEFAULT NULL,
  `tgl_lahir_siswa` date DEFAULT NULL,
  `jk_siswa` enum('Pria','Wanita') DEFAULT NULL,
  `tlp_siswa` varchar(255) DEFAULT NULL,
  `alamat_siswa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_jurusan`, `username`, `password`, `nis`, `nama_siswa`, `tgl_lahir_siswa`, `jk_siswa`, `tlp_siswa`, `alamat_siswa`) VALUES
(15, 21, '8433', '30aaa42805c04522a16e12d7e5b87437', '8433', 'RIFAI RIZKI', '2022-11-22', 'Pria', '000', 'jl'),
(17, 18, '8470', 'ec26fc2eb2b75aece19c70392dc744c2', '8470', 'ADITYA SURYA PRASETYA', '2022-11-22', 'Pria', '000', 'jl'),
(18, 18, '8782', '171ae1bbb81475eb96287dd78565b38b', '8782', 'A. NAFIS SUHANDANA PUTRA', '2022-11-22', 'Pria', '000', 'jl'),
(19, 18, '8783', '7d38b1e9bd793d3f45e0e212a729a93c', '8783', 'ABD. ROHMAN', '2022-11-22', 'Pria', '000', 'jl'),
(20, 18, '8784', '6a6e3ec7373f2a5d2fdb3e4e5b80debd', '8784', 'ABDUS SALAM', '2022-11-22', 'Pria', '000', 'jl'),
(22, 18, '8785', 'dbd90a665ea6f292f36ebdb3d442826d', '8785', 'AFNAS SRIANJANI', '2022-11-22', 'Pria', '000', 'jl'),
(24, 18, '8786', '048e2f1447691907b18b2a37e7ed2322', '8786', 'AHMAD AFANDI', '2022-11-22', 'Pria', '000', 'jl'),
(26, 18, '8788', '7648557e5c7f1ecd407347dde3bd9927', '8788', 'ALFAN NUR', '2022-11-22', 'Pria', '000', 'jl'),
(28, 18, '8789', '9cd013fe250ebffc853b386569ab18c0', '8789', 'AZIZEH', '2022-11-22', 'Wanita', '000', 'jl'),
(29, 18, '8790', 'f7fa6aca028e7ff4ef62d75ed025fe76', '8790', 'BUDIYANTO', '2022-11-22', 'Pria', '000', 'jl'),
(47, 18, '8792', 'dc91d6e23d859879bbaf0a9d7f27fb77', '8792', 'DILLA PUTRI RAMADAN', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(48, 18, '8793', '4fc7e9c4df30aafd8b7e1ab324f27712', '8793', 'FIKARUL AHKAM ALFIAN', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(49, 18, '8794', '503e7dbbd6217b9a591f3322f39b5a6c', '8794', 'HOLIFATUR ROSIDI', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(50, 18, '8795', '6acb084470c0a8bdf431d5427d1f29bc', '8795', 'INTAN KUSHERA WATI', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(51, 18, '8797', '65d90fc6d307590b14e9e1800d4e8eab', '8797', 'IVAN AGUS SAPUTRA', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(52, 18, '8798', '6a0724f1d3e80fd5f761cacb7efe8593', '8798', 'JUNAIDI ISMAIL', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(53, 18, '8799', 'e6051b3bfe716cc4a38c2f39ec199873', '8799', 'KAMELIYA', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(54, 18, '8800', '7ac52e3f2729d1b3f6d2b7e8f6467226', '8800', 'KHOIRUL ANAM', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(55, 18, '8801', '97ea3cfb64eeaa1edba65501d0bb3c86', '8801', 'KUSNIATI NINGSIH', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(56, 18, '8801', '97ea3cfb64eeaa1edba65501d0bb3c86', '8801', 'KUSNIATI NINGSIH', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(57, 18, '8802', '4c92d46d3b1aad8a64eb35d7312d067c', '8802', 'MAHARDIKA FA\'IQ FIRDAUS', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(58, 18, '8803', '749b3dec12dee44c9594af615a9de86b', '8803', 'MOCH. ALI', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(59, 18, '8804', 'a36adbc35e69b22acbf9f834a0deb286', '8804', 'MOH. HUSAINI', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(60, 18, '8805', '070c425fd005e11aec1a90706dda66f5', '8805', 'SAMSUL ARIFIN', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(61, 18, '8806', '3f00f874e9837b0ec850a34c85432d66', '8806', 'SAYYIB IQBAL ALFIAN', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(62, 18, '8807', 'c8d3a760ebab631565f8509d84b3b3f1', '8807', 'SILFI MAULIYA', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(63, 18, '8808', 'df1a336b7e0b0cb186de6e66800c43a9', '8808', 'SYAHRUL HIDAYAT', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(64, 18, '8809', 'f37c4630c796617ace93e19c350c321e', '8809', 'SYAHRUL UBAIDILLAH', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(65, 18, '8810', 'd9bd3e8809c72d9493d84928ab8c4497', '8810', 'SYAIFUL AFDAL JAMIL', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(66, 18, '8811', '3f9e3767ef3b10a0de4c256d7ef9805d', '8811', 'WAHYU PURNIAWAN', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(67, 18, '8812', 'ba3c95c2962d3aab2f6e667932daa3c5', '8812', 'ZAIFUL FAHRI', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(68, 18, '8813', 'f90bebdc692f68ebf8f1dee68a01a8e0', '8813', 'ZEKIYUDDIN', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(69, 18, '8814', '1511919f603e917ae2f763b63c5c15b6', '8814', 'ABD. BASED', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(70, 18, '8815', '71f538c5db462f9bf1c7a8521c622c41', '8815', 'ABDUL QODIR', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(71, 18, '8816', '007202387c4274c570d9cb72943fc873', '8816', 'ABDURROHMAN SINGOJOYO', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(72, 18, '8817', 'e105b88b3e1ac23ec811a708cd7edebf', '8817', 'ACHMAD RAMADHANI PUTRA', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(73, 18, '8818', '7eca143caaf49d9e3dc5c04961a314a0', '8818', 'ADIB WILDAN RIYADI', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(74, 18, '8819', '4c07fe24771249c343e70c32289c1192', '8819', 'ADINDA MIFTA SAPUTRI', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(75, 18, '8820', 'd5ade38a2c9f6f073d69e1bc6b6e64c1', '8820', 'ADITYA', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(76, 18, '8821', '709d00f20f8a1638608f109597a521a9', '8821', 'AHMAD SUHAIMI', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(77, 18, '8822', '1074cf6dee6fd3a453ea3fa9d190a430', '8822', 'AHMAT FAUZI', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(79, 18, '8823', '6c752cebb3e95bbb82cb59c3e19a27bf', '8823', 'AKSAROTUL ULUM', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(80, 18, '8824', '801a089759389ea9fa5f77ecc339f4be', '8824', 'ALIYUL RIDHO', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(81, 18, '8825', '6524341b411c77cdbd9dbc15f522c7b3', '8825', 'EVI HARIYANTI', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(82, 18, '8826', '54f3bc04830d762a3b56a789b6ff62df', '8826', 'HILMAN DAFIQ', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(83, 18, '8827', '4eb82f891b344474e99cab5955f075d7', '8827', 'IKLIL MUBAROK', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(84, 18, '8828', '0cc6ee01c82fc49c28706e0918f57e2d', '8828', 'JULIAN FEBRIANI', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(85, 18, '8829', '384cb854644425079baeec43aa82534f', '8829', 'KITVIRUL AZIZ', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(86, 18, '8830', '376d41c34fac1e911e7e197b6a28270e', '8830', 'MIFTAHUL JENNAH', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(87, 18, '8831', 'bf4334a2421c544eaa17629e52029ca1', '8831', 'MOH. MAHFUD', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(88, 18, '8832', '060fd70a06ead2e1079d27612b84aff4', '8832', 'MOCH ARIF', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(89, 18, '8833', '349f8e8088df63050757dd8be4356216', '8833', 'MOH.NUR HOLIS', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(90, 18, '8834', '9d86d83f925f2149e9edb0ac3b49229c', '8834', 'MOHAMMAD GUFRON', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(91, 18, '8835', 'e6abb6620be44e2035008f84888a43b1', '8835', 'MUHAMMAD ASSHIDDIQI', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(92, 18, '8836', '0c72cb7ee1512f800abe27823a792d03', '8836', 'NURIL LAILA KUR\'ANI', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(93, 18, '8837', 'b97f138920c54acf5eb77d23bc318b12', '8837', 'NURUL QOMARIA', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(94, 18, '8838', 'd0f5edad9ac19abed9e235c0fe0aa59f', '8838', 'RENDI WIJAYANTO', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(95, 18, '8839', '21ca6d0cf2f25c4dbb35d8dc0b679c3f', '8839', 'RIO FERNARDI', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(96, 18, '8840', '1d7b813d77ada92b4c5998ec42a3cde9', '8840', 'RISMA HANDAYANI', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(97, 18, '8841', '6e88ec1459f337d5bea6353f8bff8026', '8841', 'RIZQI ROMADHON', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(98, 18, '8842', '551fdbb810aff145c114b93867dd8bfd', '8842', 'RIZQIYATUS SA\'ADAH', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(99, 18, '8843', '3de6a598010e6866124ddfa12d3d35cb', '8843', 'SHOHIBUL JAMIL', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(100, 18, '8844', '9c449771d0edc923c2713a7462cefa3b', '8844', 'SILATUN NIKMATI RIZKI', '2022-11-23', 'Wanita', '08', 'Bangkalan'),
(101, 18, '8845', 'ff82db7535530637af7f8a96284b3459', '8845', 'SYAIFUL RIJAL', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(102, 18, '8846', 'bb96ff7f5c9505fd971126ecd171bec2', '8846', 'THUFAIL ZIYAD MAHENDRA', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(103, 18, '8847', 'c6224c1be072bf5556817749c32e40c6', '8847', 'ZAINI ROMADHON', '2022-11-23', 'Pria', '08', 'Bangkalan'),
(104, 20, '9123', 'd41d8cd98f00b204e9800998ecf8427e', '9123', 'AFRIZAL MAULANA', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(105, 20, '9124', 'd41d8cd98f00b204e9800998ecf8427e', '9124', 'AHMAD FAIDIL FIKRI', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(106, 20, '9125', 'd41d8cd98f00b204e9800998ecf8427e', '9125', 'AISYAH', '2022-11-25', 'Wanita', '08', 'Bangkalan'),
(107, 20, '9126', 'd41d8cd98f00b204e9800998ecf8427e', '9126', 'ALI RIDHO', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(108, 20, '9127', 'd41d8cd98f00b204e9800998ecf8427e', '9127', 'ANDIKA BAYU SAPUTRO', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(109, 20, '9128', 'd41d8cd98f00b204e9800998ecf8427e', '9128', 'ANUGERAH FITRIA ASWAH', '2022-11-25', 'Wanita', '08', 'Bangkalan'),
(110, 20, '9129', 'd41d8cd98f00b204e9800998ecf8427e', '9129', 'EVAN RAFA RADYA ALIFIAN', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(111, 20, '9130', 'd41d8cd98f00b204e9800998ecf8427e', '9130', 'FARHANUDDIN', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(112, 20, '9131', 'd41d8cd98f00b204e9800998ecf8427e', '9131', 'FAWES', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(113, 20, '9132', 'd41d8cd98f00b204e9800998ecf8427e', '9132', 'FIRDA RAHAYU', '2022-11-25', 'Wanita', '08', 'Bangkalan'),
(114, 20, '9133', 'd41d8cd98f00b204e9800998ecf8427e', '9133', 'HALIMATUS SAKDIAH', '2022-11-25', 'Wanita', '08', 'Bangkalan'),
(115, 20, '9134', 'd41d8cd98f00b204e9800998ecf8427e', '9134', 'HANI DWI YULINDA PUTRI', '2022-11-25', 'Wanita', '08', 'Bangkalan'),
(116, 20, '9135', 'd41d8cd98f00b204e9800998ecf8427e', '9135', 'INDRA WAHYUDI', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(117, 20, '9136', 'd41d8cd98f00b204e9800998ecf8427e', '9136', 'JOISKA DEWI PRATIWINATA', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(118, 20, '9137', 'd41d8cd98f00b204e9800998ecf8427e', '9137', 'KHAIRIL ANWAR', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(119, 20, '9138', 'd41d8cd98f00b204e9800998ecf8427e', '9138', 'LAILATUR ROHMAH', '2022-11-25', 'Wanita', '08', 'Bangkalan'),
(120, 20, '9139', 'd41d8cd98f00b204e9800998ecf8427e', '9139', 'M. AFIF. ZA', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(121, 20, '9140', 'd41d8cd98f00b204e9800998ecf8427e', '9140', 'MARSHEILA YUNITA ABADI', '2022-11-25', 'Wanita', '08', 'Bangkalan'),
(122, 20, '9141', 'd41d8cd98f00b204e9800998ecf8427e', '9141', 'MAULANA MALIK IBRAHIM', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(123, 20, '9142', 'd41d8cd98f00b204e9800998ecf8427e', '9142', 'MAYLISA ROSIANA EKA PUTRI', '2022-11-25', 'Wanita', '08', 'Bangkalan'),
(124, 20, '9143', 'd41d8cd98f00b204e9800998ecf8427e', '9143', 'MOCH. HILAL', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(125, 20, '9144', 'd41d8cd98f00b204e9800998ecf8427e', '9144', 'MOCH. MAHFUD ALQOMI', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(127, 5, '8851', 'd41d8cd98f00b204e9800998ecf8427e', '8851', 'ABDULLOH YASIN', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(128, 5, '8852', 'd41d8cd98f00b204e9800998ecf8427e', '8852', 'ADRIYAN HIDAYAT', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(129, 5, '8853', '84ca205fe6bc691c41c3bfe5a2820a15', '8853', 'ANGGI DWIRISQI', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(130, 5, '8854', 'bd6fd20524553da5f0504d31e4134500', '8854', 'BUSTOMI', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(131, 5, '8855', '4990974d150d0de5e6e15a1454fe6b0f', '8855', 'FANI', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(132, 5, '8856', '8e5e15c4e6d09c8333a17843461041a9', '8856', 'FIKRI ADITAMA', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(133, 5, '8857', '2b16a44bb65751bb0ebe5d8b42644bc4', '8857', 'INDRA YOGA PRATAMA', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(134, 5, '8858', '5bbf4a75e68db03be98166f8f87acd4b', '8858', 'M. NAFIS FATWA', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(135, 5, '8859', 'ac0071f018d6ac7568394853c44cef1f', '8859', 'MOH. MIQDAD AL FAISHAL', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(136, 5, '8860', '22bb543b251c39ccdad8063d486987bb', '8860', 'MOHAMMAD IKBAR FARHANSYAH', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(137, 5, '8861', 'b4b758962f17808746e9bb832a6fa4b8', '8861', 'MUHAMAD HERLINGGA', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(138, 5, '8862', 'eca336bc46296c1aced239fbfb803b5c', '8862', 'NANDIKA PROMISETA HEARTYAN', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(139, 5, '8863', '39d0a8908fbe6c18039ea8227f827023', '8863', 'RIAN IKA SAPUTRA', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(140, 5, '8864', '7866c91c59f8bffc92a79a7cd09f9af9', '8864', 'SULTON', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(141, 5, '8865', 'c89e6d59f9753e53018cf8de933c1aaa', '8865', 'SYAHRI ROMADON', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(142, 5, '8866', '483101a6bc4e6c46a86222eb65fbcb6a', '8866', 'TRESNA QUDDUSY', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(143, 5, '8867', '1a423f7c07a179ec243e82b0c017a034', '8867', 'ZHIFA SAVIRA', '2022-11-25', 'Pria', '08', 'Bangkalan'),
(144, 21, '8364', 'af3b6a54e9e9338abc54258e3406e485', '8364', 'ENRICO SHAN SAVA', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(145, 21, '8747', 'fa95123aa5f89781ed4e89a55eb2edcc', '8747', 'ABDUL KAFI', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(146, 21, '8748', '29c08a4baebd25af6a2acf659cf834e8', '8748', 'ACHMAD TAJUZ ZUBQI', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(147, 21, '8749', 'c359889a833e7612e0cff1dc69d272bc', '8749', 'AGUSTINA VENLY', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(148, 21, '8750', 'b68c8d589e6268e7283cc8230ae8f908', '8750', 'AHMAD ZAINULLAH', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(149, 21, '8751', '5c48ff18e0a47baaf81d8b8ea51eec92', '8751', 'AISYAH', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(150, 21, '8752', '1915523773b16865a73a38acc952ccda', '8752', 'ALFIA', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(151, 21, '8753', '48c8c3963853fff20bd9e8bee9bd4c07', '8753', 'ALTHAF FURQAN', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(152, 21, '8754', 'fa733611ef13bd333ebfbab7eed14b63', '8754', 'ERICA OKTAVIANA PUTRI', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(153, 21, '8755', 'c6663e689b7d1495526d8c7403ccc67f', '8755', 'FICKY ARFIANZAH', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(154, 21, '8756', '62d90d223cf3e2239113a4963b191d71', '8756', 'FIRMAN ABDILLAH', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(155, 21, '8757', 'd728587fff2d87201eae0a158507d814', '8757', 'HABIL AR RAFI', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(156, 21, '8759', 'ab22e28b58c1e3de6bcef48d3f5d8b4a', '8759', 'HARITSYAH SIHAB AHFASI', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(157, 21, '8760', 'ae95296e27d7f695f891cd26b4f37078', '8760', 'HOTIJAH', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(158, 21, '8761', '7690dd4db7a92524c684e3191919eb6b', '8761', 'JENI NOVIANA SAPUTRI', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(159, 21, '8762', '0c5534f554a26f7aeb7c780e12bb1525', '8762', 'JUHAIRIA', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(160, 21, '8763', '791d3a0048b9c200dceca07f99ddd178', '8763', 'KHOIRUL MUBESSIR', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(161, 21, '8764', 'd4ea5dacfff2d8a35c0952291779290d', '8764', 'LAILA RAHMI ARDILA', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(162, 21, '8765', 'f38fef4c0e4988792723c29a0bd3ca98', '8765', 'LAILIN NIKMAH', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(163, 21, '8766', '5d7009220a974e94404889274d3a9553', '8766', 'MAGHFIRA RAHMADANI HISBULWATON', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(164, 21, '8767', 'c3cbd51329ff1a0169174e9a78126ee1', '8767', 'MAKKIYAH', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(165, 21, '8768', '03793ef7d06ffd63d34ade9d091f1ced', '8768', 'MOH. RINDI', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(166, 21, '8769', 'fea33a31df7d05a276193d32621ecbe4', '8769', 'MOH. RIZQON MUBAROK', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(167, 21, '8771', '575afbdca5a101e3088b2b6554398b0c', '8771', 'NAUFAL ROYHAN', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(168, 21, '8772', '69961657077e0093ed761aa01916c5ff', '8772', 'NUR HALISA', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(169, 21, '8774', 'e9bf14a419d77534105016f5ec122d62', '8774', 'RADHINA ZAKHRATUL JANNAH', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(170, 21, '8775', '2669e6395964ace98119e8e86b789dd7', '8775', 'RANGGA MAULANA R.', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(171, 21, '8776', 'e551d3ddbf87bddac369765bd58213a5', '8776', 'RIFKY', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(172, 21, '8777', '9399e0b02c73fcc14cd11d9b4e685f2e', '8777', 'RUSFANDI', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(173, 21, '8778', '34d94cf9ca228a78848313df32d668d1', '8778', 'SITI MUNAWAROH', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(174, 21, '8779', '3368986bdca0efedda1eda8d39b3ae6c', '8779', 'SYAFIRUDIN', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(175, 21, '8780', 'e21bd8ab999859f3642d2227e682e66f', '8780', 'TRIO APRILIA WULANDARI', '2022-11-27', 'Pria', '08', 'Bangkalan'),
(176, 21, '8781', 'b3ddb7c5b10be95dbc3f9152c58becce', '8781', 'VINA SOFI ATUR ROHMAN', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(177, 21, '8850', '26cd8ecadce0d4efd6cc8a8725cbd1f8', '8850', 'ISA\'ATUL MAGHFIROH', '2022-11-27', 'Wanita', '08', 'Bangkalan'),
(178, 17, '9168', 'af086cdab7954f11a518e3af68dc2fce', '9168', 'ABD SHOLEH', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(179, 17, '9169', '39016cfe079db1bfb359ca72fcba3fd8', '9169', 'ABD. HALIM ZALAL RUDDIN R.', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(180, 17, '9170', 'f5bf2f80e0924a366859e958c6507ea9', '9170', 'AHMAD FATHUR ROSIY', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(181, 17, '9171', '9dc603ead062664055f36b11fe0cad61', '9171', 'ALVIAN NUR HIDAYAT', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(182, 17, '9172', 'e05e2327a8ceada096724afc802bbf7e', '9172', 'DWI INDAH RAMADANI', '2022-11-29', 'Wanita', '08', 'Bangkalan'),
(184, 17, '9173', '2e09926f3de94fa8c07ac5a8f3edc5cd', '9173', 'FATHUR ROHMAN', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(185, 17, '9174', '3acb2a202ae4bea8840224e6fce16fd0', '9174', 'FAUZI', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(186, 17, '9175', 'd563cb0699fbe7bc92d64815915918cd', '9175', 'HOIRUL BASOR', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(187, 17, '9176', '492284833481ed2fd377c50abdedf9f1', '9176', 'KONIKATUL WALID', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(188, 17, '9177', '04f19115dfa286fb61ab634a2717ed37', '9177', 'M. NIBROS MAWAS', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(189, 17, '9178', 'ebc03fa648c2cd7da9d63b9ed835664e', '9178', 'MAFA HALIMAN SAPUTRA', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(190, 17, '9179', 'f4666b1c34893ee557dccbfe3382e965', '9179', 'MASLIHAH', '2022-11-29', 'Wanita', '08', 'Bangkalan'),
(191, 17, '9180', '398410ece9d7343091093a2a7f8ee381', '9180', 'MINANNUR ROHMAN', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(192, 17, '9181', '4d215ab7508a3e089af43fb605dd27d1', '9181', 'MOCH. AZHA DULLOH', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(193, 17, '9182', '3d57fe6de705fec3cecae336ae23a03a', '9182', 'MOH. FATONI', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(194, 17, '9183', '6f0ca67289d79eb35d19decbc0a08453', '9183', 'MOH. RIYADI', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(195, 17, '9184', '642eaa3479d2eb1130f6e0564f00f751', '9184', 'NADIYATUL HASANAH', '2022-11-29', 'Wanita', '08', 'Bangkalan'),
(196, 17, '9185', '51681a7c14879f9eca39669df858f75b', '9185', 'NADYATUL MAGHFIROH', '2022-11-29', 'Wanita', '08', 'Bangkalan'),
(197, 17, '9186', 'd0379e4d73faa565d3e7f22b307c80f7', '9186', 'NIA DANIATI', '2022-11-29', 'Wanita', '08', 'Bangkalan'),
(198, 17, '9187', 'a10463df69e52e78372b724471434ec9', '9187', 'NUR HASANAH', '2022-11-29', 'Wanita', '08', 'Bangkalan'),
(199, 17, '9188', 'b704ea2c39778f07c617f6b7ce480e9e', '9188', 'NUR KHOLIFAH', '2022-11-29', 'Wanita', '08', 'Bangkalan'),
(200, 17, '9189', '45f6a4a57549a5720dfdcdf643c78b83', '9189', 'RIZKI DWI AMALIA', '2022-11-29', 'Wanita', '08', 'Bangkalan'),
(201, 17, '9190', '4ef30115b941a1bcd71ffebb50c69ece', '9190', 'ROBIATUL ADEWIYAH', '2022-11-29', 'Wanita', '08', 'Bangkalan'),
(202, 17, '9191', 'dfc7defac6624a80f02b02e22b14e8fd', '9191', 'RUMYAH', '2022-11-29', 'Wanita', '08', 'Bangkalan'),
(203, 17, '9192', '0ae775a8cb3b499ad1fca944e6f5c836', '9192', 'SHINTA RANI', '2022-11-29', 'Wanita', '08', 'Bangkalan'),
(204, 17, '9193', '26178fc759d2b89c45dd31962f81dc61', '9193', 'SUKROTUL JANNAH', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(205, 17, '9194', 'e2c9cd9303b5c85296b84213935f37fd', '9194', 'UMAR FAROQ', '2022-11-29', 'Pria', '08', 'Bangkalan'),
(206, 17, '9195', '25824988925b5fd75ef84e8202957b74', '9195', 'VISCA ABELIA', '2022-11-29', 'Wanita', '08', 'Bangkalan'),
(207, 17, '9196', 'c8877cff22082a16395a57e97232bb6f', '9196', 'WARDATUL JANNAH', '2022-11-29', 'Wanita', '08', 'Bangkalan'),
(208, 17, '9197', 'a2790947391a51d18dc235eea344d981', '9197', 'YUNI INDRIYANI', '2022-11-29', 'Wanita', '08', 'Bangkalan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(5, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(6, 'fakhri', '0de7b6a61a70688b26e6eeb3113531a3');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vabsensi`
-- (See below for the actual view)
--
CREATE TABLE `vabsensi` (
`id_absen_siswa` int(11)
,`id_mapel` int(11)
,`id_siswa` int(11)
,`hadir` int(11)
,`izin` int(11)
,`sakit` int(11)
,`alpha` int(11)
,`id_guru` int(11)
,`kode_mapel` varchar(255)
,`nama_mapel` varchar(255)
,`id_jurusan` int(11)
,`username_siswa` varchar(255)
,`nis` varchar(255)
,`nama_siswa` varchar(255)
,`tgl_lahir_siswa` date
,`jk_siswa` enum('Pria','Wanita')
,`tlp_siswa` varchar(255)
,`alamat_siswa` varchar(255)
,`username_guru` varchar(255)
,`nama_guru` varchar(255)
,`nip` int(255)
,`jk_guru` enum('Pria','Wanita')
,`kelas_jurusan` varchar(255)
,`kode_jurusan` varchar(255)
,`nama_jurusan` varchar(255)
,`ruang_jurusan` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vjadwal`
-- (See below for the actual view)
--
CREATE TABLE `vjadwal` (
`id_jadwal` int(11)
,`id_jurusan` int(11)
,`id_mapel` int(11)
,`hari` varchar(255)
,`jam_mulai` time
,`jam_selesai` time
,`kelas_jurusan` varchar(255)
,`kode_jurusan` varchar(255)
,`nama_jurusan` varchar(255)
,`ruang_jurusan` varchar(255)
,`id_guru` int(11)
,`kode_mapel` varchar(255)
,`nama_mapel` varchar(255)
,`username_guru` varchar(255)
,`nama_guru` varchar(255)
,`nip` int(255)
,`jk_guru` enum('Pria','Wanita')
,`tgl_lahir_guru` date
,`tlp_guru` varchar(255)
,`alamat_guru` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vmapel`
-- (See below for the actual view)
--
CREATE TABLE `vmapel` (
`id_mapel` int(11)
,`id_guru` int(11)
,`kode_mapel` varchar(255)
,`nama_mapel` varchar(255)
,`username` varchar(255)
,`nama_guru` varchar(255)
,`nip` int(255)
,`jk_guru` enum('Pria','Wanita')
,`tgl_lahir_guru` date
,`tlp_guru` varchar(255)
,`alamat_guru` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vnilai`
-- (See below for the actual view)
--
CREATE TABLE `vnilai` (
`id_nilai` int(11)
,`id_jurusan` int(11)
,`id_mapel` int(11)
,`id_siswa` int(11)
,`semester` enum('1','2')
,`tahun_ajaran` varchar(255)
,`tugas1` int(11)
,`tugas2` int(11)
,`tugas3` int(11)
,`uts` int(11)
,`uas` int(11)
,`nilai_akhir` int(11)
,`kelas_jurusan` varchar(255)
,`kode_jurusan` varchar(255)
,`nama_jurusan` varchar(255)
,`ruang_jurusan` varchar(255)
,`id_guru` int(11)
,`kode_mapel` varchar(255)
,`nama_mapel` varchar(255)
,`username_guru` varchar(255)
,`nama_guru` varchar(255)
,`nip` int(255)
,`jk_guru` enum('Pria','Wanita')
,`nis` varchar(255)
,`username_siswa` varchar(255)
,`nama_siswa` varchar(255)
,`tgl_lahir_siswa` date
,`jk_siswa` enum('Pria','Wanita')
,`tlp_siswa` varchar(255)
,`alamat_siswa` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vsiswa`
-- (See below for the actual view)
--
CREATE TABLE `vsiswa` (
`id_siswa` int(11)
,`id_jurusan` int(11)
,`username` varchar(255)
,`password` varchar(255)
,`nis` varchar(255)
,`nama_siswa` varchar(255)
,`tgl_lahir_siswa` date
,`jk_siswa` enum('Pria','Wanita')
,`tlp_siswa` varchar(255)
,`alamat_siswa` varchar(255)
,`kelas_jurusan` varchar(255)
,`kode_jurusan` varchar(255)
,`nama_jurusan` varchar(255)
,`ruang_jurusan` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `vabsensi`
--
DROP TABLE IF EXISTS `vabsensi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vabsensi`  AS SELECT `absen_siswa`.`id_absen_siswa` AS `id_absen_siswa`, `absen_siswa`.`id_mapel` AS `id_mapel`, `absen_siswa`.`id_siswa` AS `id_siswa`, `absen_siswa`.`hadir` AS `hadir`, `absen_siswa`.`izin` AS `izin`, `absen_siswa`.`sakit` AS `sakit`, `absen_siswa`.`alpha` AS `alpha`, `mapel`.`id_guru` AS `id_guru`, `mapel`.`kode_mapel` AS `kode_mapel`, `mapel`.`nama_mapel` AS `nama_mapel`, `siswa`.`id_jurusan` AS `id_jurusan`, `siswa`.`username` AS `username_siswa`, `siswa`.`nis` AS `nis`, `siswa`.`nama_siswa` AS `nama_siswa`, `siswa`.`tgl_lahir_siswa` AS `tgl_lahir_siswa`, `siswa`.`jk_siswa` AS `jk_siswa`, `siswa`.`tlp_siswa` AS `tlp_siswa`, `siswa`.`alamat_siswa` AS `alamat_siswa`, `guru`.`username` AS `username_guru`, `guru`.`nama_guru` AS `nama_guru`, `guru`.`nip` AS `nip`, `guru`.`jk_guru` AS `jk_guru`, `jurusan`.`kelas_jurusan` AS `kelas_jurusan`, `jurusan`.`kode_jurusan` AS `kode_jurusan`, `jurusan`.`nama_jurusan` AS `nama_jurusan`, `jurusan`.`ruang_jurusan` AS `ruang_jurusan` FROM ((((`absen_siswa` join `mapel` on(`absen_siswa`.`id_mapel` = `mapel`.`id_mapel`)) join `guru` on(`mapel`.`id_guru` = `guru`.`id_guru`)) join `siswa` on(`absen_siswa`.`id_siswa` = `siswa`.`id_siswa`)) join `jurusan` on(`siswa`.`id_jurusan` = `jurusan`.`id_jurusan`))  ;

-- --------------------------------------------------------

--
-- Structure for view `vjadwal`
--
DROP TABLE IF EXISTS `vjadwal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vjadwal`  AS SELECT `jadwal`.`id_jadwal` AS `id_jadwal`, `jadwal`.`id_jurusan` AS `id_jurusan`, `jadwal`.`id_mapel` AS `id_mapel`, `jadwal`.`hari` AS `hari`, `jadwal`.`jam_mulai` AS `jam_mulai`, `jadwal`.`jam_selesai` AS `jam_selesai`, `jurusan`.`kelas_jurusan` AS `kelas_jurusan`, `jurusan`.`kode_jurusan` AS `kode_jurusan`, `jurusan`.`nama_jurusan` AS `nama_jurusan`, `jurusan`.`ruang_jurusan` AS `ruang_jurusan`, `mapel`.`id_guru` AS `id_guru`, `mapel`.`kode_mapel` AS `kode_mapel`, `mapel`.`nama_mapel` AS `nama_mapel`, `guru`.`username` AS `username_guru`, `guru`.`nama_guru` AS `nama_guru`, `guru`.`nip` AS `nip`, `guru`.`jk_guru` AS `jk_guru`, `guru`.`tgl_lahir_guru` AS `tgl_lahir_guru`, `guru`.`tlp_guru` AS `tlp_guru`, `guru`.`alamat_guru` AS `alamat_guru` FROM (((`jadwal` join `jurusan` on(`jadwal`.`id_jurusan` = `jurusan`.`id_jurusan`)) join `mapel` on(`jadwal`.`id_mapel` = `mapel`.`id_mapel`)) join `guru` on(`mapel`.`id_guru` = `guru`.`id_guru`))  ;

-- --------------------------------------------------------

--
-- Structure for view `vmapel`
--
DROP TABLE IF EXISTS `vmapel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vmapel`  AS SELECT `mapel`.`id_mapel` AS `id_mapel`, `mapel`.`id_guru` AS `id_guru`, `mapel`.`kode_mapel` AS `kode_mapel`, `mapel`.`nama_mapel` AS `nama_mapel`, `guru`.`username` AS `username`, `guru`.`nama_guru` AS `nama_guru`, `guru`.`nip` AS `nip`, `guru`.`jk_guru` AS `jk_guru`, `guru`.`tgl_lahir_guru` AS `tgl_lahir_guru`, `guru`.`tlp_guru` AS `tlp_guru`, `guru`.`alamat_guru` AS `alamat_guru` FROM (`mapel` join `guru` on(`mapel`.`id_guru` = `guru`.`id_guru`))  ;

-- --------------------------------------------------------

--
-- Structure for view `vnilai`
--
DROP TABLE IF EXISTS `vnilai`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vnilai`  AS SELECT `nilai`.`id_nilai` AS `id_nilai`, `nilai`.`id_jurusan` AS `id_jurusan`, `nilai`.`id_mapel` AS `id_mapel`, `nilai`.`id_siswa` AS `id_siswa`, `nilai`.`semester` AS `semester`, `nilai`.`tahun_ajaran` AS `tahun_ajaran`, `nilai`.`tugas1` AS `tugas1`, `nilai`.`tugas2` AS `tugas2`, `nilai`.`tugas3` AS `tugas3`, `nilai`.`uts` AS `uts`, `nilai`.`uas` AS `uas`, `nilai`.`nilai_akhir` AS `nilai_akhir`, `jurusan`.`kelas_jurusan` AS `kelas_jurusan`, `jurusan`.`kode_jurusan` AS `kode_jurusan`, `jurusan`.`nama_jurusan` AS `nama_jurusan`, `jurusan`.`ruang_jurusan` AS `ruang_jurusan`, `mapel`.`id_guru` AS `id_guru`, `mapel`.`kode_mapel` AS `kode_mapel`, `mapel`.`nama_mapel` AS `nama_mapel`, `guru`.`username` AS `username_guru`, `guru`.`nama_guru` AS `nama_guru`, `guru`.`nip` AS `nip`, `guru`.`jk_guru` AS `jk_guru`, `siswa`.`nis` AS `nis`, `siswa`.`username` AS `username_siswa`, `siswa`.`nama_siswa` AS `nama_siswa`, `siswa`.`tgl_lahir_siswa` AS `tgl_lahir_siswa`, `siswa`.`jk_siswa` AS `jk_siswa`, `siswa`.`tlp_siswa` AS `tlp_siswa`, `siswa`.`alamat_siswa` AS `alamat_siswa` FROM ((((`nilai` join `jurusan` on(`nilai`.`id_jurusan` = `jurusan`.`id_jurusan`)) join `mapel` on(`nilai`.`id_mapel` = `mapel`.`id_mapel`)) join `siswa` on(`nilai`.`id_siswa` = `siswa`.`id_siswa`)) join `guru` on(`mapel`.`id_guru` = `guru`.`id_guru`))  ;

-- --------------------------------------------------------

--
-- Structure for view `vsiswa`
--
DROP TABLE IF EXISTS `vsiswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vsiswa`  AS SELECT `siswa`.`id_siswa` AS `id_siswa`, `siswa`.`id_jurusan` AS `id_jurusan`, `siswa`.`username` AS `username`, `siswa`.`password` AS `password`, `siswa`.`nis` AS `nis`, `siswa`.`nama_siswa` AS `nama_siswa`, `siswa`.`tgl_lahir_siswa` AS `tgl_lahir_siswa`, `siswa`.`jk_siswa` AS `jk_siswa`, `siswa`.`tlp_siswa` AS `tlp_siswa`, `siswa`.`alamat_siswa` AS `alamat_siswa`, `jurusan`.`kelas_jurusan` AS `kelas_jurusan`, `jurusan`.`kode_jurusan` AS `kode_jurusan`, `jurusan`.`nama_jurusan` AS `nama_jurusan`, `jurusan`.`ruang_jurusan` AS `ruang_jurusan` FROM (`siswa` join `jurusan` on(`siswa`.`id_jurusan` = `jurusan`.`id_jurusan`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen_siswa`
--
ALTER TABLE `absen_siswa`
  ADD PRIMARY KEY (`id_absen_siswa`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_mapel` (`id_mapel`,`id_siswa`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen_siswa`
--
ALTER TABLE `absen_siswa`
  MODIFY `id_absen_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absen_siswa`
--
ALTER TABLE `absen_siswa`
  ADD CONSTRAINT `absen_siswa_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `absen_siswa_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_3` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
