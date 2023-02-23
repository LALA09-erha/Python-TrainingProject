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
-- Database: `tokobuku`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(2, 'irham@unpak.ac.id', '1', 'Irham Nurrahman');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `id_pelanggan`, `id_produk`, `jumlah`) VALUES
(7, 1, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `komen`
--

CREATE TABLE `komen` (
  `id_komen` int(11) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `komen` varchar(255) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komen`
--

INSERT INTO `komen` (`id_komen`, `id_pelanggan`, `id_produk`, `komen`, `nilai`) VALUES
(17, 1, 4, 'mantap', 5),
(4, 3, 6, 'bagus', 5);

-- --------------------------------------------------------

--
-- Table structure for table `kurir`
--

CREATE TABLE `kurir` (
  `id_kurir` int(50) NOT NULL,
  `nama_kurir` varchar(100) NOT NULL,
  `tarif` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kurir`
--

INSERT INTO `kurir` (`id_kurir`, `nama_kurir`, `tarif`) VALUES
(1, 'J&T REG (2 Hari Kerja)', 9000),
(2, 'JNE REG (2 Hari Kerja)', 10000),
(3, 'JNE YES (1 Hari Kerja)', 24000),
(4, 'Grab Instan (Lokasi Diluar Service)', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `gmail_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `gmail_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`) VALUES
(1, 'nur@gmail.com', '1', 'nur', '081267856785'),
(2, 'rahman@gmail.com', '123', 'rahman', '081267575678'),
(3, 'irham@gmail.com', '123', 'Irham', '083819085582'),
(6, 'siti@gmail.com', '1234', 'siti', '086756786'),
(7, 'nining@gmail.com', '123', 'nining', '74141451'),
(8, 'lala@gmail.com', '1', 'lala', '0909');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `jumlah`, `tanggal`, `bukti`) VALUES
(1, 3, 'Irham', 'Bank Kita', 49000, '2020-06-07', '20200607110951tb5alt.jpg'),
(2, 4, 'Nurrahman', 'Bank Kita', 149000, '2020-06-07', '20200607153312bukti-pembayaran-STAIM0002.jpg'),
(3, 6, 'siti', 'Bank Kita', 189000, '2020-06-09', '20200609205843111.jpg'),
(4, 7, 'siti', 'Bank Kita', 254000, '2020-06-10', '20200610000130111.jpg'),
(5, 8, 'nining', 'bank miun', 39000, '2020-09-10', '20200910052516kambing3(1)112458359.jpg'),
(6, 13, 'nur', 'bri', 2240000, '2022-12-12', '20221212143340clay-banks-hwLAI5lRhdM-unsplash.jpg'),
(7, 5, 'irham', 'bri', 54000, '2022-12-16', '20221216114450download (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_kurir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_kurir` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'Tertunda',
  `resi_pengiriman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_kurir`, `tanggal_pembelian`, `total_pembelian`, `nama_kurir`, `tarif`, `alamat_pengiriman`, `status_pembelian`, `resi_pengiriman`) VALUES
(1, 1, 1, '2019-05-02', 169000, 'J&T REG (2 Hari Kerja)', 9000, 'a', 'Tertunda', ''),
(2, 1, 1, '2019-05-02', 169000, 'J&T REG (2 Hari Kerja)', 9000, 'lll', 'Tertunda', ''),
(3, 3, 2, '2020-06-06', 490000, 'JNE REG (2 Hari Kerja)', 10000, 'Bogor', 'Selesai(Barang Sudah Sampai)', '77482745'),
(4, 3, 1, '2020-06-07', 149000, 'J&T REG (2 Hari Kerja)', 9000, 'Jl Atang Senjaya No. 48 Semplak Kaum Semplak Barat Kabupaten Bogor', 'Selesai(Barang Sudah Sampai)', ''),
(5, 3, 1, '2020-06-07', 54000, 'J&T REG (2 Hari Kerja)', 9000, 'bogor', 'Proses', ''),
(6, 4, 1, '2020-06-09', 189000, 'J&T REG (2 Hari Kerja)', 9000, 'Bogor 16410 Kemang Semplak Barat', 'Lunas (Barang Terkirim)', '7655267464'),
(7, 6, 1, '2020-06-10', 254000, 'J&T REG (2 Hari Kerja)', 9000, 'bogor rt 1/2', 'Lunas (Barang Terkirim)', '56464666'),
(8, 7, 1, '2020-09-10', 39000, 'J&T REG (2 Hari Kerja)', 9000, 'gugvygyguyuvuu', 'Selesai(Barang Sudah Sampai)', '565755777'),
(9, 1, 1, '2022-12-09', 39000, 'J&T REG (2 Hari Kerja)', 9000, 'JL Cendrawasih DA 50 Pangeranan Asri', 'Tertunda', ''),
(10, 1, 1, '2022-12-09', 9000, 'J&T REG (2 Hari Kerja)', 9000, 'JL Cendrawasih DA 50 Pangeranan Asri', 'Tertunda', ''),
(11, 1, 1, '2022-12-09', 49000, 'J&T REG (2 Hari Kerja)', 9000, 'JL Cendrawasih DA 50 Pangeranan Asri', 'Tertunda', ''),
(12, 1, 1, '2022-12-09', 59000, 'J&T REG (2 Hari Kerja)', 9000, 'JL Cendrawasih DA 50 Pangeranan Asri', 'Tertunda', ''),
(13, 1, 3, '2022-12-12', 224000, 'JNE YES (1 Hari Kerja)', 24000, 'JL Cendrawasih DA 50 Pangeranan Asri', 'Selesai(Barang Sudah Sampai)', '12313131'),
(14, 3, 2, '2022-12-16', 55000, 'JNE REG (2 Hari Kerja)', 10000, 'JL Cendrawasih DA 50 Pangeranan Asri', 'Tertunda', '');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_pembelian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah_pembelian`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 3),
(4, 4, 6, 1),
(5, 4, 4, 1),
(6, 5, 2, 1),
(7, 6, 10, 1),
(8, 6, 4, 1),
(9, 7, 4, 1),
(10, 7, 5, 1),
(11, 7, 2, 1),
(12, 8, 3, 1),
(13, 9, 3, 1),
(14, 10, 7, 1),
(15, 11, 6, 1),
(16, 12, 7, 1),
(17, 13, 4, 2),
(18, 14, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `resep_produk` varchar(100) NOT NULL,
  `stok_produk` int(5) NOT NULL,
  `rating_produk` decimal(10,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `kategori`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`, `resep_produk`, `stok_produk`, `rating_produk`) VALUES
(2, 'Mary Higgins C : Daddy Little Girl', NULL, 45000, 150, 'tb1.jpg', '  Ketika Ellie Cavanaugh berusia delapan tahun, kakaknya, Andrea, tewas dibunuh di dekat rumah mereka di Oldham-on-the-Hudson, Ada tiga tersangka: Rob westerfield, pemuda tampan dari keluarga kaya setempat, yang diam-diam menjalin hubungan dengan Andrea; Paulie Stroebel, teman sekelas yang diam-diam mencintai Andrea; dan Will Nebels, pekerja serabutan yang suka menawarkan jasa kepada para tetangga', '', 10, NULL),
(3, 'Auguste Dupin : Detektif Prancis', NULL, 30000, 130, 'tb2.jpg', ' Mungkin banyak yang mengira bahwa Sherlock Holmes adalah pionir tokoh detektif fiksi di dunia literasi. Tapi tahukah bahwasanya jauh sebelum Sherlock Holmes muncul, ada tokoh lain yang lebih dulu memulai dan menyandang predikat gentlemen detective?. Yup, tokoh detektif fiksi pertama di dunia literasi yang mengguncang dunia sastra pada eranya adalah C Auguste Dupin. Tokoh detektif ini merupakan rekaan sang penulis puisi dan cerita misteri beraliran gore, gothic dan macabre sekaligus kritikus sastra terkenal pada eranya, Edgar Allan Poe.', 'tb2alt.jpg', 0, NULL),
(4, 'Harry Potter and the Half Blood Prince', NULL, 100000, 300, 'tb3.jpg', '  Khawatir dengan pengalaman pertemuannya dengan Voldemort di Kementerian Sihir, Harry Potter merasa enggan untuk kembali ke Hogwarts. Dumbledore mendorongnya untuk kembali, setelah mengajaknya untuk menemui seorang mantan guru Hogwarts, Horace Slughorn. Dengan bantuan Harry, ia berhasil membujuk Slughorn agar mau kembali mengajar di Hogwarts.', 'tb3alt.jpg', 0, '5.0'),
(5, 'The Hobbit : There and Back Again', NULL, 100000, 190, 'tb4.jpg', '  Kisah bermula ketika Bilbo baggins yang merupakan seorang hobbit yang ingin hidup nyaman, sejahtera di liang hobbitnya, dan hampir tidak pernah bepergian jauh dari rumahnya di shire. suatu hari Gandalf datang ke rumahnya dan mengajaknya untuk berpetualang, dan Bilbo dengan jelas menolaknya. hingga ketika Gandalf mengundang 13 Kurcaci untuk datang ke rumah Bilbo dan terjadilah sebuah pesta yang tak terduga.', 'tb4alt.jpg', 0, NULL),
(6, 'Andrea Hirata : Laskar Pelangi', NULL, 40000, 100, 'tb5.jpg', '  Laskar Pelangi Menceritakan tentang kisah masa kecil anak-anak desa dari suatu komunitas melayu yang bisa dikatakan sangat miskin di Belitung. Kisah orang-orang â€˜kecilâ€™ yang berusaha untuk memperbaiki masa depan mereka.', 'tb5alt.jpg', 0, '5.0'),
(7, 'Agatha Christie : The Pale House', NULL, 50000, 90, 'tb6.jpg', '  Seorang wanita memanggil pastor di saat sedang sekarat untuk menceritakan rahasia kelam yang harus ia tanggung semasa hidupnya, termasuk memberikan sederet daftar nama pada sang pastor. Sepulang dari tempat wanita itu, Pastor Gorman dibunuh, meski daftar nama tadi selamat dari incaran si pembunuh.', '', 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id_rating` int(11) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id_rating`, `id_pelanggan`, `id_produk`, `nilai`) VALUES
(17, 1, 4, 5),
(4, 3, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id_wishlist` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id_wishlist`, `id_pelanggan`, `id_produk`) VALUES
(1, 1, 2),
(2, 1, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id_kurir`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id_wishlist`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kurir`
--
ALTER TABLE `kurir`
  MODIFY `id_kurir` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id_wishlist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
