-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 02:42 PM
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
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--
-- Error reading structure for table uas.agama: #1932 - Table 'uas.agama' doesn't exist in engine
-- Error reading data for table uas.agama: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`agama`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--
-- Error reading structure for table uas.buku: #1932 - Table 'uas.buku' doesn't exist in engine
-- Error reading data for table uas.buku: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`buku`' at line 1

--
-- Triggers `buku`
--
DELIMITER $$
CREATE TRIGGER `delete_buku` AFTER DELETE ON `buku` FOR EACH ROW BEGIN
INSERT INTO log_buku VALUES(old.ISBN_BUKU, old.ID_KATEGORI,null,old.JUDUL_BUKU,null,old.PENGARANG_BUKU,null,old.EDISI_CETAK,null,old.PENERBIT_BUKU,null,old.THN_TERBIT,null,old.SUMBER_BUKU,null,old.HARGA_HILANG,"DELETE_BUKU",now());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_buku` AFTER INSERT ON `buku` FOR EACH ROW BEGIN
INSERT INTO log_buku VALUES(new.ISBN_BUKU, new.ID_KATEGORI,new.JUDUL_BUKU,null,new.PENGARANG_BUKU,null,new.EDISI_CETAK,null,new.PENERBIT_BUKU,null
,new.THN_TERBIT,null,new.SUMBER_BUKU,null,new.HARGA_HILANG,null,"INSERT_BUKU",now());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_buku` AFTER UPDATE ON `buku` FOR EACH ROW BEGIN
INSERT INTO log_buku VALUES(new.ISBN_BUKU, new.ID_KATEGORI,new.JUDUL_BUKU,old.JUDUL_BUKU,new.PENGARANG_BUKU,old.PENGARANG_BUKU,new.EDISI_CETAK,old.EDISI_CETAK,new.PENERBIT_BUKU,old.PENERBIT_BUKU,new.THN_TERBIT,old.THN_TERBIT,new.SUMBER_BUKU,old.SUMBER_BUKU,new.HARGA_HILANG,old.HARGA_HILANG,"UPDATE_BUKU",now());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `detail_peminjaman`
--
-- Error reading structure for table uas.detail_peminjaman: #1932 - Table 'uas.detail_peminjaman' doesn't exist in engine
-- Error reading data for table uas.detail_peminjaman: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`detail_peminjaman`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `detail_peneriamaan`
--
-- Error reading structure for table uas.detail_peneriamaan: #1932 - Table 'uas.detail_peneriamaan' doesn't exist in engine
-- Error reading data for table uas.detail_peneriamaan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`detail_peneriamaan`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `detail_pengadaan`
--
-- Error reading structure for table uas.detail_pengadaan: #1932 - Table 'uas.detail_pengadaan' doesn't exist in engine
-- Error reading data for table uas.detail_pengadaan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`detail_pengadaan`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `detail_pengembalian`
--
-- Error reading structure for table uas.detail_pengembalian: #1932 - Table 'uas.detail_pengembalian' doesn't exist in engine
-- Error reading data for table uas.detail_pengembalian: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`detail_pengembalian`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `goldarah`
--
-- Error reading structure for table uas.goldarah: #1932 - Table 'uas.goldarah' doesn't exist in engine
-- Error reading data for table uas.goldarah: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`goldarah`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `jekel`
--
-- Error reading structure for table uas.jekel: #1932 - Table 'uas.jekel' doesn't exist in engine
-- Error reading data for table uas.jekel: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`jekel`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--
-- Error reading structure for table uas.kabupaten: #1932 - Table 'uas.kabupaten' doesn't exist in engine
-- Error reading data for table uas.kabupaten: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`kabupaten`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--
-- Error reading structure for table uas.kategori: #1932 - Table 'uas.kategori' doesn't exist in engine
-- Error reading data for table uas.kategori: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`kategori`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--
-- Error reading structure for table uas.kecamatan: #1932 - Table 'uas.kecamatan' doesn't exist in engine
-- Error reading data for table uas.kecamatan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`kecamatan`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--
-- Error reading structure for table uas.kelurahan: #1932 - Table 'uas.kelurahan' doesn't exist in engine
-- Error reading data for table uas.kelurahan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`kelurahan`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `kewarganegaraan`
--
-- Error reading structure for table uas.kewarganegaraan: #1932 - Table 'uas.kewarganegaraan' doesn't exist in engine
-- Error reading data for table uas.kewarganegaraan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`kewarganegaraan`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `ktp`
--
-- Error reading structure for table uas.ktp: #1932 - Table 'uas.ktp' doesn't exist in engine
-- Error reading data for table uas.ktp: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`ktp`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `ktpdetail`
--
-- Error reading structure for table uas.ktpdetail: #1932 - Table 'uas.ktpdetail' doesn't exist in engine
-- Error reading data for table uas.ktpdetail: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`ktpdetail`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `laporan_shift`
--
-- Error reading structure for table uas.laporan_shift: #1932 - Table 'uas.laporan_shift' doesn't exist in engine
-- Error reading data for table uas.laporan_shift: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`laporan_shift`' at line 1

--
-- Triggers `laporan_shift`
--
DELIMITER $$
CREATE TRIGGER `delete_shift` AFTER DELETE ON `laporan_shift` FOR EACH ROW BEGIN
INSERT INTO log_shiff VALUES(old.ID_PEGAWAI,old.ID_SHIFT,"DELETE_SHIFT",now());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `log_buku`
--
-- Error reading structure for table uas.log_buku: #1932 - Table 'uas.log_buku' doesn't exist in engine
-- Error reading data for table uas.log_buku: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`log_buku`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `log_pegawai`
--
-- Error reading structure for table uas.log_pegawai: #1932 - Table 'uas.log_pegawai' doesn't exist in engine
-- Error reading data for table uas.log_pegawai: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`log_pegawai`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `log_peminjaman`
--
-- Error reading structure for table uas.log_peminjaman: #1932 - Table 'uas.log_peminjaman' doesn't exist in engine
-- Error reading data for table uas.log_peminjaman: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`log_peminjaman`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `log_penerimaan`
--
-- Error reading structure for table uas.log_penerimaan: #1932 - Table 'uas.log_penerimaan' doesn't exist in engine
-- Error reading data for table uas.log_penerimaan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`log_penerimaan`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `log_pengadaan`
--
-- Error reading structure for table uas.log_pengadaan: #1932 - Table 'uas.log_pengadaan' doesn't exist in engine
-- Error reading data for table uas.log_pengadaan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`log_pengadaan`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `log_pengembalian`
--
-- Error reading structure for table uas.log_pengembalian: #1932 - Table 'uas.log_pengembalian' doesn't exist in engine
-- Error reading data for table uas.log_pengembalian: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`log_pengembalian`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `log_shiff`
--
-- Error reading structure for table uas.log_shiff: #1932 - Table 'uas.log_shiff' doesn't exist in engine
-- Error reading data for table uas.log_shiff: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`log_shiff`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--
-- Error reading structure for table uas.pegawai: #1932 - Table 'uas.pegawai' doesn't exist in engine
-- Error reading data for table uas.pegawai: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`pegawai`' at line 1

--
-- Triggers `pegawai`
--
DELIMITER $$
CREATE TRIGGER `delete_pegawai` AFTER DELETE ON `pegawai` FOR EACH ROW BEGIN
INSERT INTO log_pegawai VALUES(old.ID_PEGAWAI,"DELETE_PEGAWAI",now());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_pegawai` AFTER INSERT ON `pegawai` FOR EACH ROW BEGIN
INSERT INTO log_pegawai VALUES(new.ID_PEGAWAI,"INSERT_PEGAWAI",now());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--
-- Error reading structure for table uas.pekerjaan: #1932 - Table 'uas.pekerjaan' doesn't exist in engine
-- Error reading data for table uas.pekerjaan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`pekerjaan`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--
-- Error reading structure for table uas.peminjaman: #1932 - Table 'uas.peminjaman' doesn't exist in engine
-- Error reading data for table uas.peminjaman: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`peminjaman`' at line 1

--
-- Triggers `peminjaman`
--
DELIMITER $$
CREATE TRIGGER `delete_pinjam` AFTER DELETE ON `peminjaman` FOR EACH ROW BEGIN
INSERT INTO log_peminjaman VALUES(old.ID_PEMINJAMAN, old.ISBN_BUKU,old.TGL_PINJAM,old.TGL_KEMBALI,null,old.STATUS_PINJAM,old.STATUS_PERPANJANGAN,null,"DELETE_PEMINJAMAN",NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_pinjam` AFTER INSERT ON `peminjaman` FOR EACH ROW BEGIN
INSERT INTO log_peminjaman VALUES(new.ID_PEMINJAMAN, new.ISBN_BUKU,new.TGL_PINJAM,new.TGL_KEMBALI,null,new.STATUS_PINJAM,new.STATUS_PERPANJANGAN,null,"INSERT_PEMINJAMAN",NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_pinjam` AFTER UPDATE ON `peminjaman` FOR EACH ROW BEGIN
INSERT INTO log_peminjaman VALUES(new.ID_PEMINJAMAN, new.ISBN_BUKU,new.TGL_PINJAM,new.TGL_KEMBALI,old.TGL_KEMBALI,new.STATUS_PINJAM,new.STATUS_PERPANJANGAN,old.STATUS_PERPANJANGAN,"UPDATE_PEMINJAMAN",NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan`
--
-- Error reading structure for table uas.penerimaan: #1932 - Table 'uas.penerimaan' doesn't exist in engine
-- Error reading data for table uas.penerimaan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`penerimaan`' at line 1

--
-- Triggers `penerimaan`
--
DELIMITER $$
CREATE TRIGGER `delete_penerimaan` AFTER DELETE ON `penerimaan` FOR EACH ROW BEGIN
INSERT INTO log_penerimaan VALUES(old.ID_PENERIMAAN, old.ISBN_BUKU,old.TGL_PENERIMAAN,"DELETE_PENERIMAAN",now());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_pengerimaan` AFTER INSERT ON `penerimaan` FOR EACH ROW BEGIN
INSERT INTO log_penerimaan VALUES(new.ID_PENERIMAAN, new.ISBN_BUKU,new.TGL_PENERIMAAN,"INSERT_PENERIMAAN",now());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pengadaan`
--
-- Error reading structure for table uas.pengadaan: #1932 - Table 'uas.pengadaan' doesn't exist in engine
-- Error reading data for table uas.pengadaan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`pengadaan`' at line 1

--
-- Triggers `pengadaan`
--
DELIMITER $$
CREATE TRIGGER `delete_pengadaan` AFTER DELETE ON `pengadaan` FOR EACH ROW BEGIN
INSERT INTO log_pengadaan VALUES(old.ID_PENGADAAN, old.ISBN_BUKU,old.NAMA_SUPLIER,old.NO_TLPN,old.NO_TLPN,old.ALAMAT_SUPLIER,old.ALAMAT_SUPLIER,"DELETE_PENGADAAN",NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_pengadaan` AFTER UPDATE ON `pengadaan` FOR EACH ROW BEGIN
INSERT INTO log_pengadaan VALUES(new.ID_PENGADAAN, new.ISBN_BUKU,new.NAMA_SUPLIER,new.NO_TLPN,old.NO_TLPN,new.ALAMAT_SUPLIER,old.ALAMAT_SUPLIER,"UPDATE_PENGADAAN",NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--
-- Error reading structure for table uas.pengembalian: #1932 - Table 'uas.pengembalian' doesn't exist in engine
-- Error reading data for table uas.pengembalian: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`pengembalian`' at line 1

--
-- Triggers `pengembalian`
--
DELIMITER $$
CREATE TRIGGER `delete_pengembalian` AFTER DELETE ON `pengembalian` FOR EACH ROW BEGIN
INSERT INTO log_pengembalian VALUES(old.ID_PENGEMBALIAN, old.TGL_PENGEMBALIAN,old.DENDA_PENGEMBALIAN,old.DENDA_PENGEMBALIAN,"DELETE_PENGEMBALIAN",NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_pengembalian` AFTER UPDATE ON `pengembalian` FOR EACH ROW BEGIN
INSERT INTO log_pengembalian VALUES(new.ID_PENGEMBALIAN, new.TGL_PENGEMBALIAN,new.DENDA_PENGEMBALIAN,old.DENDA_PENGEMBALIAN,"UPDATE_PENGEMBALIAN",NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--
-- Error reading structure for table uas.pengunjung: #1932 - Table 'uas.pengunjung' doesn't exist in engine
-- Error reading data for table uas.pengunjung: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`pengunjung`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--
-- Error reading structure for table uas.provinsi: #1932 - Table 'uas.provinsi' doesn't exist in engine
-- Error reading data for table uas.provinsi: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`provinsi`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `status_menikah`
--
-- Error reading structure for table uas.status_menikah: #1932 - Table 'uas.status_menikah' doesn't exist in engine
-- Error reading data for table uas.status_menikah: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `uas`.`status_menikah`' at line 1
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
