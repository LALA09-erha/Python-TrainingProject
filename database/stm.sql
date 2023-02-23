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
-- Database: `stm`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen_siswa`
--

CREATE TABLE `absen_siswa` (
  `id_absen_siswa` int(11) NOT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `hadir` int(11) DEFAULT NULL,
  `izin` int(11) DEFAULT NULL,
  `sakit` int(11) DEFAULT NULL,
  `alpha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absen_siswa`
--

INSERT INTO `absen_siswa` (`id_absen_siswa`, `id_mapel`, `id_siswa`, `id_jurusan`, `hadir`, `izin`, `sakit`, `alpha`) VALUES
(2, 23, 204, 17, 4, 4, 4, 4),
(3, 23, 178, 17, 4, 4, 4, 4),
(5, 9, 15, 18, 4, 4, 4, 4),
(6, 23, 179, 17, 0, 0, 0, 0),
(8, 23, 180, 17, 14, 0, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `username` varchar(1024) DEFAULT NULL,
  `password` varchar(1024) DEFAULT NULL,
  `nama_guru` varchar(1024) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `jk_guru` enum('Pria','Wanita') DEFAULT NULL,
  `tgl_lahir_guru` date DEFAULT NULL,
  `tlp_guru` varchar(20) DEFAULT NULL,
  `alamat_guru` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `username`, `password`, `nama_guru`, `nip`, `jk_guru`, `tgl_lahir_guru`, `tlp_guru`, `alamat_guru`) VALUES
(8, '4', 'a87ff679a2f3e71d9181a67b7542122c', 'Susi Haris Kusumawati, S.Pd., M.Pd. ', '4', 'Wanita', '2022-11-22', '8', 'Jl. '),
(9, '75', 'd09bf41544a3365a46c9077ebb5e35c3', 'Neli Rosliyani, S.H.I.', '75', 'Wanita', '2022-11-22', '0', 'jl'),
(10, '10', 'd3d9446802a44259755d38e6d163e820', 'Elly Andriani Mansyuroh Kasihani, S.T. ', '10', 'Wanita', '2022-11-22', '0', 'jl'),
(12, '28', '33e75ff09dd601bbe69f351039152189', 'Ahmad Fauzi, S.Pd., M.Pd.', '28', 'Pria', '2022-11-22', '8', 'jl'),
(15, '16', 'c74d97b01eae257e44aa9d5bade97baf', 'Surya Pertiwi, S.Pd.', '16', 'Wanita', '2022-11-22', '8', 'jl'),
(16, '32', '6364d3f0f495b6ab9dcf8d3b5c6e0b01', 'Aliefiyanto Kurniawan, SE., S.Pd.', '32', 'Pria', '2022-11-22', '8', 'jl'),
(17, '68', 'a3f390d88e4c41f2747bfa2f1b5f87db', 'Dermawan Wicaksono Wibowo, S.Pd.', '68', 'Pria', '2022-11-23', '8', 'jl'),
(18, '26', '4e732ced3463d06de0ca9a15b6153677', 'Husnul Yaqin, S.Ag.', '26', 'Pria', '2022-11-23', '8', 'jl'),
(19, '55', 'b53b3a3d6ab90ce0268229151c9bde11', 'Ulil Albab, S.Pd., M.Pd. ', '55', 'Pria', '2022-11-23', '8', 'jl'),
(22, '73', 'd2ddea18f00665ce8623e36bd4e3c7c5', 'Mamik Marfuah, S.Pd.', '73', 'Wanita', '2022-11-23', '0', 'jl'),
(26, '14', 'aab3238922bcc25a6f606eb525ffdc56', 'Ribut Rahmat Jaya, S.Pd, M.Si.', '14', 'Pria', '2022-11-23', '8', 'jl'),
(27, '33', '182be0c5cdcd5072bb1864cdee4d3d6e', 'Amirotul Zuraidha, S.Pd., M.Pd.', '33', 'Wanita', '2022-11-23', '8', 'jl'),
(28, '34', 'e369853df766fa44e1ed0ff613f563bd', 'Firman Hidayat, ST., M.Kom.', '34', 'Pria', '2022-11-23', '8', 'jl'),
(29, '12', 'c20ad4d76fe97759aa27a0c99bff6710', 'H. Arif Suhaimi, S.Pd., M.M.', '12', 'Pria', '2022-11-23', '8', 'jl'),
(30, '20', '98f13708210194c475687be6106a3b84', 'Dra. Hj. Siti Komariyah', '20', 'Wanita', '2022-11-23', '8', 'jl'),
(31, '36', '19ca14e7ea6328a42e0eb13d585e4c22', 'Aries Sufiyah, M.Si.', '36', 'Wanita', '2022-11-23', '8', 'jl'),
(32, '6', '1679091c5a880faf6fb5e6087eb1b2dc', 'Elfaini Salam, S.Pd.', '6', 'Wanita', '2022-11-23', '8', 'jl'),
(36, '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'H. Mohammad Raub, S.Pd., M.Pd.I.', '3', 'Pria', '2022-11-25', '8', 'jl'),
(37, '5', 'e4da3b7fbbce2345d7772b0674a318d5', 'Rahmat Djunaidi, S.Pd.', '5', 'Pria', '2022-11-25', '8', 'jl'),
(38, '18', '6f4922f45568161a8cdf4ad2299f6d23', 'Dra. Siti Musarrofah, M.Pd. ', '18', 'Wanita', '2022-11-25', '8', 'jl'),
(40, '23', '37693cfc748049e45d87b8c7d8b9aacd', 'Abdul Mujib, S.Pd.', '23', 'Pria', '2022-11-25', '8', 'jl'),
(44, '37', 'd41d8cd98f00b204e9800998ecf8427e', 'Uswatun Hasanah, S.Psi.', '37', 'Wanita', '2022-11-25', '0', 'jl'),
(45, '40', 'd41d8cd98f00b204e9800998ecf8427e', 'Akhmad Jailani, S.Pd., M.Pd.', '40', 'Pria', '2022-11-25', '0', 'jl'),
(47, '43', 'd41d8cd98f00b204e9800998ecf8427e', 'Sabikin, S.Pd.', '43', 'Pria', '2022-11-25', '0', 'jl'),
(48, '44', 'd41d8cd98f00b204e9800998ecf8427e', 'Nur Burhanuddin Hamka, S.Pd.', '44', 'Pria', '2022-11-25', '0', 'jl'),
(49, '47', 'd41d8cd98f00b204e9800998ecf8427e', 'Sri Wahyuni, S.Pd.', '47', 'Wanita', '2022-11-25', '0', 'jl'),
(51, '63', 'd41d8cd98f00b204e9800998ecf8427e', 'Anna Allaili Alala, S.Pd.I.', '63', 'Wanita', '2022-11-25', '0', 'jl'),
(53, '65', 'd41d8cd98f00b204e9800998ecf8427e', 'Qurniawati, S.Pd., Gr.', '65', 'Wanita', '2022-11-25', '0', 'jl'),
(54, '66', 'd41d8cd98f00b204e9800998ecf8427e', 'Niken Mangayu Wuri Utami, S.Pd.', '66', 'Wanita', '2022-11-25', '0', 'jl'),
(55, '67', 'd41d8cd98f00b204e9800998ecf8427e', 'Ina Sukmawati, S.Pd.', '67', 'Wanita', '2022-11-25', '0', 'jl'),
(57, '71', 'd41d8cd98f00b204e9800998ecf8427e', 'Davis Nur Iqbal Rifandi, S.Pd.', '71', 'Pria', '2022-11-25', '0', 'jl'),
(58, '72', 'd41d8cd98f00b204e9800998ecf8427e', 'Sihabuddin, S.Ag., M.Pd.I.', '72', 'Pria', '2022-11-25', '0', 'jl'),
(59, '76', 'd41d8cd98f00b204e9800998ecf8427e', 'Arum Aisya, S.Pd.', '76', 'Wanita', '2022-11-25', '0', 'jl'),
(61, '77', 'd41d8cd98f00b204e9800998ecf8427e', 'Nor Asia, S.Pd.', '77', 'Wanita', '2022-11-25', '0', 'jl'),
(62, '78', 'd41d8cd98f00b204e9800998ecf8427e', 'Silvi Refaliandra Gafur, S.Pd.', '78', 'Wanita', '2022-11-25', '0', 'jl'),
(63, '79', 'd41d8cd98f00b204e9800998ecf8427e', 'Chandra Setiawan, S.Psi.', '79', 'Pria', '2022-11-25', '0', 'jl'),
(64, '81', 'd41d8cd98f00b204e9800998ecf8427e', 'Amelia Risqiyanti, S.Pd.', '81', 'Wanita', '2022-11-25', '0', 'jl'),
(65, '87', 'd41d8cd98f00b204e9800998ecf8427e', 'Mesraji, S.Pd.', '87', 'Pria', '2022-11-25', '0', 'jl'),
(66, '88', 'd41d8cd98f00b204e9800998ecf8427e', 'Hamimah, S.Pd.', '88', 'Wanita', '2022-11-25', '0', 'jl'),
(67, '91', 'd41d8cd98f00b204e9800998ecf8427e', 'Naharotul Istiqomah, S.Pd.', '91', 'Wanita', '2022-11-25', '0', 'jl'),
(68, '48', '642e92efb79421734881b53e1e1b18b6', 'Rina Yuliani, S.Pd', '48', 'Wanita', '2022-11-27', '0', 'jl'),
(69, '54', 'a684eceee76fc522773286a895bc8436', 'Dian Anggraini, S.Pd., M.Pd', '54', 'Wanita', '2022-11-27', '0', 'jl'),
(70, '9', '45c48cce2e2d7fbdea1afc51c7c6ad26', 'Finalia Meiriana, S.Pd', '9', 'Wanita', '2022-11-27', '0', 'jl'),
(71, '86', '93db85ed909c13838ff95ccfa94cebd9', 'Kurnia Fidayanti, S.Pd', '86', 'Wanita', '2022-11-27', '0', 'jl'),
(72, '25', '8e296a067a37563370ded05f5a3bf3ec', 'Anni Robiatin Istiningsih, S.Pd', '25', 'Wanita', '2022-11-27', '0', 'jl'),
(73, '74', 'ad61ab143223efbc24c7d2583be69251', 'Lita Agustina, S.Si., M.Pd', '74', 'Wanita', '2022-11-27', '0', 'jl'),
(74, '82', '9778d5d219c5080b9a6a17bef029331c', 'Hari Wahyudi, S.Pd', '82', 'Pria', '2022-11-27', '0', 'jl');

--
-- Triggers `guru`
--
DELIMITER $$
CREATE TRIGGER `tguru` AFTER INSERT ON `guru` FOR EACH ROW replace into user (id_user,id_guru,username,password) (select null as id_user,id_guru,nip as username,MD5(nip) as password from guru)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat') DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_jurusan`, `id_mapel`, `hari`, `jam_mulai`, `jam_selesai`) VALUES
(1, 16, 9, 'Jumat', '07:00:00', '11:00:00'),
(10, 18, 9, 'Senin', '07:00:00', '09:00:00'),
(11, 18, 13, 'Senin', '09:00:00', '15:00:00'),
(12, 18, 14, 'Selasa', '07:00:00', '10:00:00'),
(13, 18, 21, 'Selasa', '10:00:00', '15:00:00'),
(14, 18, 16, 'Rabu', '07:00:00', '12:00:00'),
(15, 18, 12, 'Rabu', '12:00:00', '15:00:00'),
(16, 18, 17, 'Kamis', '07:00:00', '09:00:00'),
(18, 18, 14, 'Kamis', '12:00:00', '15:00:00'),
(19, 18, 19, '', '07:00:00', '11:00:00'),
(26, 21, 12, 'Selasa', '13:00:00', '15:00:00'),
(27, 21, 17, 'Rabu', '07:00:00', '09:00:00'),
(28, 21, 34, 'Selasa', '09:00:00', '13:00:00'),
(31, 21, 9, 'Kamis', '09:00:00', '11:00:00'),
(43, 20, 29, 'Selasa', '09:00:00', '12:00:00'),
(45, 20, 24, 'Rabu', '07:00:00', '09:00:00'),
(47, 20, 33, 'Rabu', '09:00:00', '12:00:00'),
(49, 20, 34, 'Kamis', '07:00:00', '13:00:00'),
(50, 20, 35, 'Kamis', '13:00:00', '15:00:00'),
(51, 20, 27, '', '07:00:00', '09:00:00'),
(54, 13, 36, 'Senin', '07:00:00', '09:00:00'),
(55, 13, 37, 'Senin', '09:00:00', '11:00:00'),
(56, 13, 38, 'Senin', '11:00:00', '12:30:00'),
(57, 13, 39, 'Senin', '12:30:00', '13:30:00'),
(68, 16, 37, 'Senin', '07:00:00', '09:00:00'),
(75, 16, 39, 'Rabu', '10:00:00', '12:00:00'),
(81, 16, 38, '', '13:00:00', '15:00:00'),
(82, 20, 23, 'Senin', '07:00:00', '09:00:00'),
(84, 17, 27, 'Senin', '07:00:00', '09:00:00'),
(85, 17, 24, 'Senin', '09:00:00', '12:00:00'),
(86, 17, 16, 'Senin', '12:00:00', '15:00:00'),
(90, 17, 23, 'Selasa', '12:00:00', '13:30:00'),
(95, 17, 14, 'Kamis', '07:00:00', '11:30:00'),
(96, 17, 21, 'Kamis', '11:30:00', '15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `kelas_jurusan` enum('X','XI','XII') DEFAULT NULL,
  `kode_jurusan` varchar(1024) DEFAULT NULL,
  `nama_jurusan` varchar(1024) DEFAULT NULL,
  `ruang_jurusan` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id_guru` int(11) DEFAULT NULL,
  `kode_mapel` varchar(1024) DEFAULT NULL,
  `nama_mapel` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `id_guru`, `kode_mapel`, `nama_mapel`) VALUES
(9, 30, 'BIN', 'Bahasa Indonesia'),
(12, 9, 'PAI', 'Pendidikan Agama Islam'),
(13, 29, 'AIJ', 'Administrasi Infrastruktur Jaringan'),
(14, 16, 'PKKWU', 'Produktif Kreatif dan Kewirausahaan'),
(16, 19, 'ASJ', 'Administrasi Sistem Jaringan'),
(17, 31, 'PPKN', 'Pendidikan Pancasila Kewarganegaraan'),
(19, 32, 'MTK', 'Matematika'),
(21, 28, 'TLJ', 'Teknologi Layanan Jaringan'),
(22, 49, 'SEJ', 'Sejarah'),
(23, 8, 'Pancasila', 'Pancasila'),
(24, 18, 'PAI', 'Pendidikan Agama Islam'),
(27, 17, 'Penjas', 'Pendidikan Jasmani'),
(29, 64, 'BADER', 'Bahasa Daerah'),
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
  `id_mapel` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `tugas1` int(11) DEFAULT NULL,
  `tugas2` int(11) DEFAULT NULL,
  `tugas3` int(11) DEFAULT NULL,
  `uts` int(11) DEFAULT NULL,
  `uas` int(11) DEFAULT NULL,
  `nilai_akhir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_mapel`, `id_siswa`, `id_jurusan`, `tugas1`, `tugas2`, `tugas3`, `uts`, `uas`, `nilai_akhir`) VALUES
(1, 9, 15, 18, 70, 70, 70, 70, 70, 70),
(2, 23, 178, 17, 70, 70, 70, 70, 70, 70),
(6, 23, 179, 17, 60, 60, 60, 60, 60, 60),
(10, 23, 178, 17, 70, 70, 70, 70, 70, 70),
(11, 23, 181, 17, 80, 80, 80, 75, 80, 79);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `username` varchar(1024) DEFAULT NULL,
  `password` varchar(1024) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `nama_siswa` varchar(1024) DEFAULT NULL,
  `tgl_lahir_siswa` date DEFAULT NULL,
  `jk_siswa` enum('Pria','Wanita') DEFAULT NULL,
  `tlp_siswa` varchar(20) DEFAULT NULL,
  `alamat_siswa` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_jurusan`, `username`, `password`, `nis`, `nama_siswa`, `tgl_lahir_siswa`, `jk_siswa`, `tlp_siswa`, `alamat_siswa`) VALUES
(15, 18, '8433', '30aaa42805c04522a16e12d7e5b87437', '8433', 'RIFAI RIZKI', '2022-11-22', 'Pria', '0', 'jl'),
(17, 18, '8470', 'ec26fc2eb2b75aece19c70392dc744c2', '8470', 'ADITYA SURYA PRASETYA', '2022-11-22', 'Pria', '0', 'jl'),
(18, 18, '8782', '171ae1bbb81475eb96287dd78565b38b', '8782', 'A. NAFIS SUHANDANA PUTRA', '2022-11-22', 'Pria', '0', 'jl'),
(19, 18, '8783', '7d38b1e9bd793d3f45e0e212a729a93c', '8783', 'ABD. ROHMAN', '2022-11-22', 'Pria', '0', 'jl'),
(20, 18, '8784', '6a6e3ec7373f2a5d2fdb3e4e5b80debd', '8784', 'ABDUS SALAM', '2022-11-22', 'Pria', '0', 'jl'),
(22, 18, '8785', 'dbd90a665ea6f292f36ebdb3d442826d', '8785', 'AFNAS SRIANJANI', '2022-11-22', 'Pria', '0', 'jl'),
(24, 18, '8786', '048e2f1447691907b18b2a37e7ed2322', '8786', 'AHMAD AFANDI', '2022-11-22', 'Pria', '0', 'jl'),
(26, 18, '8788', '7648557e5c7f1ecd407347dde3bd9927', '8788', 'ALFAN NUR', '2022-11-22', 'Pria', '0', 'jl'),
(28, 18, '8789', '9cd013fe250ebffc853b386569ab18c0', '8789', 'AZIZEH', '2022-11-22', 'Wanita', '0', 'jl'),
(29, 18, '8790', 'f7fa6aca028e7ff4ef62d75ed025fe76', '8790', 'BUDIYANTO', '2022-11-22', 'Pria', '0', 'jl'),
(47, 18, '8792', 'dc91d6e23d859879bbaf0a9d7f27fb77', '8792', 'DILLA PUTRI RAMADAN', '2022-11-23', 'Wanita', '8', 'Bangkalan'),
(48, 18, '8793', '4fc7e9c4df30aafd8b7e1ab324f27712', '8793', 'FIKARUL AHKAM ALFIAN', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(49, 18, '8794', '503e7dbbd6217b9a591f3322f39b5a6c', '8794', 'HOLIFATUR ROSIDI', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(50, 18, '8795', '6acb084470c0a8bdf431d5427d1f29bc', '8795', 'INTAN KUSHERA WATI', '2022-11-23', 'Wanita', '8', 'Bangkalan'),
(51, 18, '8797', '65d90fc6d307590b14e9e1800d4e8eab', '8797', 'IVAN AGUS SAPUTRA', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(52, 18, '8798', '6a0724f1d3e80fd5f761cacb7efe8593', '8798', 'JUNAIDI ISMAIL', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(53, 18, '8799', 'e6051b3bfe716cc4a38c2f39ec199873', '8799', 'KAMELIYA', '2022-11-23', 'Wanita', '8', 'Bangkalan'),
(54, 18, '8800', '7ac52e3f2729d1b3f6d2b7e8f6467226', '8800', 'KHOIRUL ANAM', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(55, 18, '8801', '97ea3cfb64eeaa1edba65501d0bb3c86', '8801', 'KUSNIATI NINGSIH', '2022-11-23', 'Wanita', '8', 'Bangkalan'),
(56, 18, '8801', '97ea3cfb64eeaa1edba65501d0bb3c86', '8801', 'KUSNIATI NINGSIH', '2022-11-23', 'Wanita', '8', 'Bangkalan'),
(57, 18, '8802', '4c92d46d3b1aad8a64eb35d7312d067c', '8802', 'MAHARDIKA FA\'IQ FIRDAUS', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(58, 18, '8803', '749b3dec12dee44c9594af615a9de86b', '8803', 'MOCH. ALI', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(59, 18, '8804', 'a36adbc35e69b22acbf9f834a0deb286', '8804', 'MOH. HUSAINI', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(60, 18, '8805', '070c425fd005e11aec1a90706dda66f5', '8805', 'SAMSUL ARIFIN', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(61, 18, '8806', '3f00f874e9837b0ec850a34c85432d66', '8806', 'SAYYIB IQBAL ALFIAN', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(62, 18, '8807', 'c8d3a760ebab631565f8509d84b3b3f1', '8807', 'SILFI MAULIYA', '2022-11-23', 'Wanita', '8', 'Bangkalan'),
(63, 18, '8808', 'df1a336b7e0b0cb186de6e66800c43a9', '8808', 'SYAHRUL HIDAYAT', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(64, 18, '8809', 'f37c4630c796617ace93e19c350c321e', '8809', 'SYAHRUL UBAIDILLAH', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(65, 18, '8810', 'd9bd3e8809c72d9493d84928ab8c4497', '8810', 'SYAIFUL AFDAL JAMIL', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(66, 18, '8811', '3f9e3767ef3b10a0de4c256d7ef9805d', '8811', 'WAHYU PURNIAWAN', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(67, 18, '8812', 'ba3c95c2962d3aab2f6e667932daa3c5', '8812', 'ZAIFUL FAHRI', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(68, 18, '8813', 'f90bebdc692f68ebf8f1dee68a01a8e0', '8813', 'ZEKIYUDDIN', '2022-11-23', 'Pria', '8', 'Bangkalan'),
(144, 21, '8364', 'af3b6a54e9e9338abc54258e3406e485', '8364', 'ENRICO SHAN SAVA', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(145, 21, '8747', 'fa95123aa5f89781ed4e89a55eb2edcc', '8747', 'ABDUL KAFI', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(146, 21, '8748', '29c08a4baebd25af6a2acf659cf834e8', '8748', 'ACHMAD TAJUZ ZUBQI', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(147, 21, '8749', 'c359889a833e7612e0cff1dc69d272bc', '8749', 'AGUSTINA VENLY', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(148, 21, '8750', 'b68c8d589e6268e7283cc8230ae8f908', '8750', 'AHMAD ZAINULLAH', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(149, 21, '8751', '5c48ff18e0a47baaf81d8b8ea51eec92', '8751', 'AISYAH', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(150, 21, '8752', '1915523773b16865a73a38acc952ccda', '8752', 'ALFIA', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(151, 21, '8753', '48c8c3963853fff20bd9e8bee9bd4c07', '8753', 'ALTHAF FURQAN', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(152, 21, '8754', 'fa733611ef13bd333ebfbab7eed14b63', '8754', 'ERICA OKTAVIANA PUTRI', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(153, 21, '8755', 'c6663e689b7d1495526d8c7403ccc67f', '8755', 'FICKY ARFIANZAH', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(154, 21, '8756', '62d90d223cf3e2239113a4963b191d71', '8756', 'FIRMAN ABDILLAH', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(155, 21, '8757', 'd728587fff2d87201eae0a158507d814', '8757', 'HABIL AR RAFI', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(156, 21, '8759', 'ab22e28b58c1e3de6bcef48d3f5d8b4a', '8759', 'HARITSYAH SIHAB AHFASI', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(157, 21, '8760', 'ae95296e27d7f695f891cd26b4f37078', '8760', 'HOTIJAH', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(158, 21, '8761', '7690dd4db7a92524c684e3191919eb6b', '8761', 'JENI NOVIANA SAPUTRI', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(159, 21, '8762', '0c5534f554a26f7aeb7c780e12bb1525', '8762', 'JUHAIRIA', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(160, 21, '8763', '791d3a0048b9c200dceca07f99ddd178', '8763', 'KHOIRUL MUBESSIR', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(161, 21, '8764', 'd4ea5dacfff2d8a35c0952291779290d', '8764', 'LAILA RAHMI ARDILA', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(162, 21, '8765', 'f38fef4c0e4988792723c29a0bd3ca98', '8765', 'LAILIN NIKMAH', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(163, 21, '8766', '5d7009220a974e94404889274d3a9553', '8766', 'MAGHFIRA RAHMADANI HISBULWATON', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(164, 21, '8767', 'c3cbd51329ff1a0169174e9a78126ee1', '8767', 'MAKKIYAH', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(165, 21, '8768', '03793ef7d06ffd63d34ade9d091f1ced', '8768', 'MOH. RINDI', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(166, 21, '8769', 'fea33a31df7d05a276193d32621ecbe4', '8769', 'MOH. RIZQON MUBAROK', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(167, 21, '8771', '575afbdca5a101e3088b2b6554398b0c', '8771', 'NAUFAL ROYHAN', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(168, 21, '8772', '69961657077e0093ed761aa01916c5ff', '8772', 'NUR HALISA', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(169, 21, '8774', 'e9bf14a419d77534105016f5ec122d62', '8774', 'RADHINA ZAKHRATUL JANNAH', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(170, 21, '8775', '2669e6395964ace98119e8e86b789dd7', '8775', 'RANGGA MAULANA R.', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(171, 21, '8776', 'e551d3ddbf87bddac369765bd58213a5', '8776', 'RIFKY', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(172, 21, '8777', '9399e0b02c73fcc14cd11d9b4e685f2e', '8777', 'RUSFANDI', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(173, 21, '8778', '34d94cf9ca228a78848313df32d668d1', '8778', 'SITI MUNAWAROH', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(174, 21, '8779', '3368986bdca0efedda1eda8d39b3ae6c', '8779', 'SYAFIRUDIN', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(175, 21, '8780', 'e21bd8ab999859f3642d2227e682e66f', '8780', 'TRIO APRILIA WULANDARI', '2022-11-27', 'Pria', '8', 'Bangkalan'),
(176, 21, '8781', 'b3ddb7c5b10be95dbc3f9152c58becce', '8781', 'VINA SOFI ATUR ROHMAN', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(177, 21, '8850', '26cd8ecadce0d4efd6cc8a8725cbd1f8', '8850', 'ISA\'ATUL MAGHFIROH', '2022-11-27', 'Wanita', '8', 'Bangkalan'),
(178, 17, '9168', 'af086cdab7954f11a518e3af68dc2fce', '9168', 'ABD SHOLEH', '2022-11-29', 'Pria', '8', 'Bangkalan'),
(179, 17, '9169', '39016cfe079db1bfb359ca72fcba3fd8', '9169', 'ABD. HALIM ZALAL RUDDIN R.', '2022-11-29', 'Pria', '8', 'Bangkalan'),
(180, 17, '9170', 'f5bf2f80e0924a366859e958c6507ea9', '9170', 'AHMAD FATHUR ROSIY', '2022-11-29', 'Pria', '8', 'Bangkalan'),
(181, 17, '9171', '9dc603ead062664055f36b11fe0cad61', '9171', 'ALVIAN NUR HIDAYAT', '2022-11-29', 'Pria', '8', 'Bangkalan'),
(182, 17, '9172', 'e05e2327a8ceada096724afc802bbf7e', '9172', 'DWI INDAH RAMADANI', '2022-11-29', 'Wanita', '8', 'Bangkalan'),
(184, 17, '9173', '2e09926f3de94fa8c07ac5a8f3edc5cd', '9173', 'FATHUR ROHMAN', '2022-11-29', 'Pria', '8', 'Bangkalan'),
(185, 17, '9174', '3acb2a202ae4bea8840224e6fce16fd0', '9174', 'FAUZI', '2022-11-29', 'Pria', '8', 'Bangkalan'),
(186, 17, '9175', 'd563cb0699fbe7bc92d64815915918cd', '9175', 'HOIRUL BASOR', '2022-11-29', 'Pria', '8', 'Bangkalan'),
(187, 17, '9176', '492284833481ed2fd377c50abdedf9f1', '9176', 'KONIKATUL WALID', '2022-11-29', 'Pria', '8', 'Bangkalan'),
(188, 17, '9177', '04f19115dfa286fb61ab634a2717ed37', '9177', 'M. NIBROS MAWAS', '2022-11-29', 'Pria', '8', 'Bangkalan'),
(189, 17, '9178', 'ebc03fa648c2cd7da9d63b9ed835664e', '9178', 'MAFA HALIMAN SAPUTRA', '2022-11-29', 'Pria', '8', 'Bangkalan'),
(190, 17, '9179', 'f4666b1c34893ee557dccbfe3382e965', '9179', 'MASLIHAH', '2022-11-29', 'Wanita', '8', 'Bangkalan'),
(191, 17, '9180', '398410ece9d7343091093a2a7f8ee381', '9180', 'MINANNUR ROHMAN', '2022-11-29', 'Pria', '8', 'Bangkalan'),
(192, 17, '9181', '4d215ab7508a3e089af43fb605dd27d1', '9181', 'MOCH. AZHA DULLOH', '2022-11-29', 'Pria', '8', 'Bangkalan'),
(193, 17, '9182', '3d57fe6de705fec3cecae336ae23a03a', '9182', 'MOH. FATONI', '2022-11-29', 'Pria', '8', 'Bangkalan'),
(194, 17, '9183', '6f0ca67289d79eb35d19decbc0a08453', '9183', 'MOH. RIYADI', '2022-11-29', 'Pria', '8', 'Bangkalan'),
(195, 17, '9184', '642eaa3479d2eb1130f6e0564f00f751', '9184', 'NADIYATUL HASANAH', '2022-11-29', 'Wanita', '8', 'Bangkalan'),
(196, 17, '9185', '51681a7c14879f9eca39669df858f75b', '9185', 'NADYATUL MAGHFIROH', '2022-11-29', 'Wanita', '8', 'Bangkalan'),
(197, 17, '9186', 'd0379e4d73faa565d3e7f22b307c80f7', '9186', 'NIA DANIATI', '2022-11-29', 'Wanita', '8', 'Bangkalan'),
(198, 17, '9187', 'a10463df69e52e78372b724471434ec9', '9187', 'NUR HASANAH', '2022-11-29', 'Wanita', '8', 'Bangkalan'),
(199, 17, '9188', 'b704ea2c39778f07c617f6b7ce480e9e', '9188', 'NUR KHOLIFAH', '2022-11-29', 'Wanita', '8', 'Bangkalan'),
(200, 17, '9189', '45f6a4a57549a5720dfdcdf643c78b83', '9189', 'RIZKI DWI AMALIA', '2022-11-29', 'Wanita', '8', 'Bangkalan'),
(201, 17, '9190', '4ef30115b941a1bcd71ffebb50c69ece', '9190', 'ROBIATUL ADEWIYAH', '2022-11-29', 'Wanita', '8', 'Bangkalan'),
(202, 17, '9191', 'dfc7defac6624a80f02b02e22b14e8fd', '9191', 'RUMYAH', '2022-11-29', 'Wanita', '8', 'Bangkalan'),
(203, 17, '9192', '0ae775a8cb3b499ad1fca944e6f5c836', '9192', 'SHINTA RANI', '2022-11-29', 'Wanita', '8', 'Bangkalan'),
(204, 17, '9193', '26178fc759d2b89c45dd31962f81dc61', '9193', 'SUKROTUL JANNAH', '2022-11-29', 'Pria', '8', 'Bangkalan');

--
-- Triggers `siswa`
--
DELIMITER $$
CREATE TRIGGER `tsiswa` AFTER INSERT ON `siswa` FOR EACH ROW replace into user (id_user,id_siswa,username,password) (select null as id_user,id_siswa,nis as username,MD5(nis) as password from siswa)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `username` varchar(1024) DEFAULT NULL,
  `password` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `id_guru`, `id_siswa`, `username`, `password`) VALUES
(5, NULL, NULL, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(6, NULL, NULL, 'fakhri', '0de7b6a61a70688b26e6eeb3113531a3');

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
,`kode_mapel` varchar(1024)
,`nama_mapel` varchar(1024)
,`id_jurusan` int(11)
,`username_siswa` varchar(1024)
,`nis` varchar(20)
,`nama_siswa` varchar(1024)
,`tgl_lahir_siswa` date
,`jk_siswa` enum('Pria','Wanita')
,`tlp_siswa` varchar(20)
,`alamat_siswa` varchar(1024)
,`username_guru` varchar(1024)
,`nama_guru` varchar(1024)
,`nip` varchar(20)
,`jk_guru` enum('Pria','Wanita')
,`kelas_jurusan` enum('X','XI','XII')
,`kode_jurusan` varchar(1024)
,`nama_jurusan` varchar(1024)
,`ruang_jurusan` varchar(1024)
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
,`hari` enum('Senin','Selasa','Rabu','Kamis','Jumat')
,`jam_mulai` time
,`jam_selesai` time
,`kelas_jurusan` enum('X','XI','XII')
,`kode_jurusan` varchar(1024)
,`nama_jurusan` varchar(1024)
,`ruang_jurusan` varchar(1024)
,`id_guru` int(11)
,`kode_mapel` varchar(1024)
,`nama_mapel` varchar(1024)
,`username_guru` varchar(1024)
,`nama_guru` varchar(1024)
,`nip` varchar(20)
,`jk_guru` enum('Pria','Wanita')
,`tgl_lahir_guru` date
,`tlp_guru` varchar(20)
,`alamat_guru` varchar(1024)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vmapel`
-- (See below for the actual view)
--
CREATE TABLE `vmapel` (
`id_mapel` int(11)
,`id_guru` int(11)
,`kode_mapel` varchar(1024)
,`nama_mapel` varchar(1024)
,`username` varchar(1024)
,`nama_guru` varchar(1024)
,`nip` varchar(20)
,`jk_guru` enum('Pria','Wanita')
,`tgl_lahir_guru` date
,`tlp_guru` varchar(20)
,`alamat_guru` varchar(1024)
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
,`tugas1` int(11)
,`tugas2` int(11)
,`tugas3` int(11)
,`uts` int(11)
,`uas` int(11)
,`nilai_akhir` int(11)
,`kelas_jurusan` enum('X','XI','XII')
,`kode_jurusan` varchar(1024)
,`nama_jurusan` varchar(1024)
,`ruang_jurusan` varchar(1024)
,`id_guru` int(11)
,`kode_mapel` varchar(1024)
,`nama_mapel` varchar(1024)
,`username_guru` varchar(1024)
,`nama_guru` varchar(1024)
,`nip` varchar(20)
,`jk_guru` enum('Pria','Wanita')
,`nis` varchar(20)
,`username_siswa` varchar(1024)
,`nama_siswa` varchar(1024)
,`tgl_lahir_siswa` date
,`jk_siswa` enum('Pria','Wanita')
,`tlp_siswa` varchar(20)
,`alamat_siswa` varchar(1024)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vsiswa`
-- (See below for the actual view)
--
CREATE TABLE `vsiswa` (
`id_siswa` int(11)
,`id_jurusan` int(11)
,`username` varchar(1024)
,`password` varchar(1024)
,`nis` varchar(20)
,`nama_siswa` varchar(1024)
,`tgl_lahir_siswa` date
,`jk_siswa` enum('Pria','Wanita')
,`tlp_siswa` varchar(20)
,`alamat_siswa` varchar(1024)
,`kelas_jurusan` enum('X','XI','XII')
,`kode_jurusan` varchar(1024)
,`nama_jurusan` varchar(1024)
,`ruang_jurusan` varchar(1024)
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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vnilai`  AS SELECT `nilai`.`id_nilai` AS `id_nilai`, `nilai`.`id_jurusan` AS `id_jurusan`, `nilai`.`id_mapel` AS `id_mapel`, `nilai`.`id_siswa` AS `id_siswa`, `nilai`.`tugas1` AS `tugas1`, `nilai`.`tugas2` AS `tugas2`, `nilai`.`tugas3` AS `tugas3`, `nilai`.`uts` AS `uts`, `nilai`.`uas` AS `uas`, `nilai`.`nilai_akhir` AS `nilai_akhir`, `jurusan`.`kelas_jurusan` AS `kelas_jurusan`, `jurusan`.`kode_jurusan` AS `kode_jurusan`, `jurusan`.`nama_jurusan` AS `nama_jurusan`, `jurusan`.`ruang_jurusan` AS `ruang_jurusan`, `mapel`.`id_guru` AS `id_guru`, `mapel`.`kode_mapel` AS `kode_mapel`, `mapel`.`nama_mapel` AS `nama_mapel`, `guru`.`username` AS `username_guru`, `guru`.`nama_guru` AS `nama_guru`, `guru`.`nip` AS `nip`, `guru`.`jk_guru` AS `jk_guru`, `siswa`.`nis` AS `nis`, `siswa`.`username` AS `username_siswa`, `siswa`.`nama_siswa` AS `nama_siswa`, `siswa`.`tgl_lahir_siswa` AS `tgl_lahir_siswa`, `siswa`.`jk_siswa` AS `jk_siswa`, `siswa`.`tlp_siswa` AS `tlp_siswa`, `siswa`.`alamat_siswa` AS `alamat_siswa` FROM ((((`nilai` join `jurusan` on(`nilai`.`id_jurusan` = `jurusan`.`id_jurusan`)) join `mapel` on(`nilai`.`id_mapel` = `mapel`.`id_mapel`)) join `siswa` on(`nilai`.`id_siswa` = `siswa`.`id_siswa`)) join `guru` on(`mapel`.`id_guru` = `guru`.`id_guru`))  ;

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
  ADD KEY `FK_absen_siswa_ibfk_1` (`id_mapel`),
  ADD KEY `FK_absen_siswa_ibfk_2` (`id_siswa`),
  ADD KEY `FK_absen_siswa_ibfk_3` (`id_jurusan`);

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
  ADD KEY `FK_jadwal_ibfk_1` (`id_jurusan`),
  ADD KEY `FK_jadwal_ibfk_2` (`id_mapel`);

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
  ADD KEY `FK_guru_ibfk_1` (`id_guru`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `FK_nilai_ibfk_1` (`id_siswa`),
  ADD KEY `FK_nilai_ibfk_2` (`id_mapel`),
  ADD KEY `FK_nilai_ibfk_3` (`id_jurusan`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `FK_siswa_ibfk_1` (`id_jurusan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `FK_user_ibfk_2` (`id_guru`),
  ADD KEY `FK_user_ibfk_1` (`id_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen_siswa`
--
ALTER TABLE `absen_siswa`
  MODIFY `id_absen_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absen_siswa`
--
ALTER TABLE `absen_siswa`
  ADD CONSTRAINT `FK_absen_siswa_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `absen_siswa_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `FK_jadwal_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_jadwal_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mapel`
--
ALTER TABLE `mapel`
  ADD CONSTRAINT `mapel_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `FK_nilai_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_nilai_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `FK_siswa_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_user_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_user_ibfk_2` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
