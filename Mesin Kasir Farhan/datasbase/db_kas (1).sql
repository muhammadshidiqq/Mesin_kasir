-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Mar 2023 pada 05.25
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jual`
--

CREATE TABLE `tbl_jual` (
  `id_jual` int(11) NOT NULL,
  `no_faktur` varchar(15) DEFAULT NULL,
  `tgl_jual` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `grand_total` int(16) DEFAULT NULL,
  `dibayar` int(16) DEFAULT NULL,
  `kembalian` int(16) DEFAULT NULL,
  `id_user` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jual`
--

INSERT INTO `tbl_jual` (`id_jual`, `no_faktur`, `tgl_jual`, `jam`, `grand_total`, `dibayar`, `kembalian`, `id_user`) VALUES
(28, '202303170001', '2023-03-17', '15:11:14', 221000, 230000, 9000, 6),
(29, '202303180001', '2023-03-15', '08:20:49', 72000, 80000, 8000, 6),
(30, '202303180002', '2023-03-16', '08:21:14', 50000, 50000, 0, 6),
(31, '202303180003', '2023-03-18', '08:21:35', 96000, 100000, 4000, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kasir`
--

CREATE TABLE `tbl_kasir` (
  `alamat` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(2) NOT NULL,
  `nama_kategori` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Makanan'),
(2, 'Minuman'),
(3, 'Bumbu Masakan'),
(4, 'Elektronik'),
(5, 'Alat Tulis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(11) NOT NULL,
  `kode_produk` varchar(25) DEFAULT NULL,
  `nama_produk` varchar(150) DEFAULT NULL,
  `id_kategori` int(2) DEFAULT NULL,
  `id_satuan` int(2) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `kode_produk`, `nama_produk`, `id_kategori`, `id_satuan`, `harga_beli`, `harga_jual`, `stock`) VALUES
(1, '11111', 'Yakult', 2, 1, 8000, 12000, 199),
(2, '22222', 'Yougurt Cimory 250ml', 2, 1, 10000, 13500, 200),
(3, '33333', 'Sari Roti', 1, 1, 6000, 9000, 177),
(4, '44444', 'Jagbee Potato Stick Pouch', 1, 1, 7000, 10000, 190),
(5, '55555', 'Lays Nori Seawed Flavour', 1, 7, 9000, 13000, 200),
(6, '66666', 'Caramel Corn', 1, 7, 15000, 19500, 200),
(7, '77777', 'Chitatos Puffs BBG Steak Flavour', 1, 7, 6000, 10000, 195),
(8, '88888', 'Biscuit Sari Gandum Sandwich', 1, 7, 8000, 12000, 187),
(9, '99999', 'Prengles Sour Cream and onion', 1, 7, 12000, 16000, 200),
(10, '11112', 'JetZ Streamp Udang Pedas', 1, 7, 8500, 12000, 194),
(11, '11113', 'Chocolate Popcorn', 1, 7, 6000, 10000, 195),
(12, '11114', 'Salad Egg Flash Skin Big', 1, 7, 8000, 12000, 200),
(13, '11115', 'Keripik Taro', 1, 7, 10500, 15000, 200),
(14, '11116', 'Keripik Kentang BBQ', 1, 7, 15000, 18500, 200),
(24, '11118', 'Qtela', 1, 7, 15000, 18000, 200),
(25, '11119', ' Pocky', 1, 7, 7300, 10000, 200),
(26, '22221', 'Cadbury Chocolate Dairy Milk', 1, 7, 9400, 15000, 200),
(27, '22223', 'Beng-Beng Wafer Chocolate', 1, 7, 6500, 9000, 200),
(28, '22224', ' Silver Queen Chocolate Almond', 1, 7, 8400, 12000, 197),
(29, '22225', ' Kanzler Singles Sosis Hot', 1, 7, 8500, 12000, 200),
(30, '22226', ' Mister Potato Snack Crisps Ghost Pepper', 1, 8, 15000, 18000, 193),
(31, '22227', 'Sedaap Mie Instant Korean Spicy Chicken', 1, 23, 4700, 7000, 200),
(32, '22228', 'Oreo Chocolate Creme', 1, 7, 8500, 10000, 200),
(33, '22229', 'Nextar Nastar Cookies Pineapple', 1, 7, 2600, 4000, 200),
(34, '33331', 'Nissin Crispy Crackers', 1, 7, 16000, 20000, 195),
(35, '33332', 'Nabati Richoco Cokelat', 1, 7, 1500, 3000, 200),
(36, '33334', 'Kacang Atom Garuda', 1, 7, 1800, 4000, 200),
(37, '33335', 'Minute Maid Juice Pulpy', 2, 1, 3000, 5000, 200),
(38, '33336', 'Buavita', 2, 9, 7200, 10000, 194),
(39, '33337', ' Nutriboost', 2, 9, 6000, 10000, 200),
(40, '33338', 'Teh Pucuk Harum', 2, 9, 3000, 6000, 200),
(41, '33339', 'Kopiko 78', 2, 9, 3000, 7000, 200),
(42, '44441', 'Fruit Tea', 2, 9, 2500, 5000, 200),
(43, '44442', 'Pocari Sweat', 2, 9, 3000, 5000, 200),
(44, '44443', 'Ultra Milk', 2, 9, 5000, 12000, 200),
(45, '44445', 'Milkku Susu UHT', 2, 1, 2500, 5000, 200),
(46, '44446', 'Lasegar Cap Kaki Tiga', 2, 1, 3000, 7000, 200),
(47, '44447', 'Asahi Sardines Saus Pedas', 1, 8, 6500, 10000, 200),
(48, '44448', 'Abc Sardines', 1, 8, 15000, 20000, 200),
(49, '44449', 'Pronas Corned Beef Kornetku', 1, 8, 15000, 20000, 200),
(50, '55551', 'Pronas Chunky Beef', 1, 8, 35000, 42000, 200),
(51, '55552', 'Botan Sardines Premium', 1, 8, 10000, 17000, 200),
(52, '55553', 'Bernardi Corned Beef', 1, 8, 40000, 55000, 200),
(53, '55554', 'Ayam Brand Whole Kernel Corn', 1, 8, 14000, 18000, 200),
(54, '55556', 'Ayam Brand Tuna Chunks ', 1, 8, 25000, 32000, 200),
(55, '55557', 'Promas Luncheon Ayam', 1, 8, 23000, 29000, 200),
(56, '55558', 'King\'s Fisher Sarden Goreng Balado ', 1, 8, 11500, 17000, 200),
(57, '55559', 'Larutan cap kaki tiga', 2, 8, 4000, 8000, 200),
(58, '66661', 'Larutan Penyegar Cap Badak', 2, 8, 6000, 10000, 200),
(59, '66662', 'Adem Sari Ching Ku', 2, 8, 4500, 7000, 200),
(60, '66663', 'Coca Cola', 2, 8, 3500, 6000, 200),
(61, '66664', 'Sprite', 2, 8, 4000, 7000, 200),
(62, '66665', 'Susu Bear Brand', 2, 8, 3500, 6000, 200),
(63, '66667', 'Pocari Sweat', 2, 8, 4000, 8000, 200),
(64, '66668', 'Tebs', 2, 8, 4500, 8000, 200),
(65, '66669', 'Fayrouz', 2, 8, 5000, 9000, 200),
(66, '77771', 'Yeos Cincau', 2, 8, 7000, 13000, 200),
(67, '77772', 'Indofood Tepung Bumbu Racik Serbaguna', 3, 7, 4000, 7000, 200),
(68, '77773', 'Ajinomoto Penyedap Rasa Masako', 3, 7, 3500, 6000, 200),
(69, '77774', 'Mamasuka gim Bori Rumput Laut Tabur', 3, 8, 13000, 17000, 200),
(70, '77775', 'Finna Sambal Udang Renyah', 3, 8, 42000, 55000, 200),
(71, '77776', 'Sasa Tepung Ala Kentucky', 3, 7, 20000, 27000, 200),
(72, '77778', 'Abc Sambal Asli', 3, 8, 27000, 35000, 200),
(73, '77779', 'Gurih-Ya Bumbu Tabur Original', 3, 7, 3500, 7000, 200),
(74, '88881', 'Bamboe Bumbu instant Tom Yum ', 3, 7, 6500, 10000, 200),
(75, '88882', 'Abc Kecap Manis Seafood', 3, 7, 15000, 18000, 200),
(76, '88883', 'Nurijell Konyaju Jelly Powder', 3, 7, 5000, 8000, 200),
(77, '88884', 'Faber Castell Connector Pens', 5, 9, 25000, 32000, 200),
(78, '88885', 'Jokyo Glosy Photo Paper', 5, 9, 31000, 36000, 200),
(79, '88886', 'Kenko Cloth Black', 5, 9, 25000, 32000, 200),
(80, '88887', 'Kiky Buku Gambar', 5, 9, 4000, 7500, 200),
(81, '88889', 'Faber Castell 2B', 5, 9, 11000, 15500, 200),
(82, '99991', 'Glue Stick', 5, 9, 6500, 9000, 200),
(83, '99992', 'Snowman Spidol Giant Hitam', 5, 9, 11000, 16000, 200),
(84, '99993', 'Uniball Ballpoint', 5, 9, 12000, 17000, 200),
(85, '99994', 'Jokyo Twist Crayon', 5, 9, 43000, 47000, 200),
(86, '99995', 'Zebra Ballpoint Sarasa', 5, 9, 20000, 26500, 200),
(87, '99996', 'Hannocs Bohlam Lampu Cool Daylight', 4, 9, 27000, 35000, 200),
(88, '99997', 'Kenmaster Raket Nyamuk', 4, 9, 78000, 85000, 200),
(89, '99998', 'Kenmaster Stop Kontak 4 Lubang ', 4, 9, 68000, 74000, 200),
(90, '11121', 'Mobile Kiosk Car Charger', 4, 9, 50000, 67000, 200);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rinci_jual`
--

CREATE TABLE `tbl_rinci_jual` (
  `id_rinci` int(11) NOT NULL,
  `no_faktur` varchar(15) DEFAULT NULL,
  `kode_produk` varchar(25) DEFAULT NULL,
  `modal` int(11) DEFAULT NULL,
  `harga` int(16) DEFAULT NULL,
  `qty` int(16) DEFAULT NULL,
  `total_harga` int(16) DEFAULT NULL,
  `untung` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_rinci_jual`
--

INSERT INTO `tbl_rinci_jual` (`id_rinci`, `no_faktur`, `kode_produk`, `modal`, `harga`, `qty`, `total_harga`, `untung`) VALUES
(59, '202303150001', '11111', 8000, 12000, 1, 12000, 4000),
(60, '202303150002', '22224', 8400, 12000, 3, 36000, 10800),
(61, '202303150002', '88888', 8000, 12000, 5, 60000, 20000),
(62, '202303150002', '22226', 15000, 18000, 7, 126000, 21000),
(63, '202303150003', '33331', 16000, 20000, 5, 100000, 20000),
(64, '202303150003', '33336', 7200, 10000, 6, 60000, 16800),
(65, '202303160001', '33333', 6000, 9000, 3, 27000, 9000),
(66, '202303160001', '44444', 7000, 10000, 5, 50000, 15000),
(67, '202303170001', '77777', 6000, 10000, 5, 50000, 20000),
(68, '202303170001', '33333', 6000, 9000, 1, 9000, 3000),
(69, '202303170001', '11111', 8000, 12000, 1, 12000, 4000),
(70, '202303170001', '33333', 6000, 9000, 19, 171000, 57000),
(71, '202303170001', '11113', 6000, 10000, 5, 50000, 20000),
(72, '202303180001', '11112', 8500, 12000, 6, 72000, 21000),
(73, '202303180002', '44444', 7000, 10000, 5, 50000, 15000),
(74, '202303180003', '88888', 8000, 12000, 8, 96000, 32000);

--
-- Trigger `tbl_rinci_jual`
--
DELIMITER $$
CREATE TRIGGER `t_rinci_jual` AFTER INSERT ON `tbl_rinci_jual` FOR EACH ROW BEGIN
   UPDATE tbl_produk SET stock = stock - NEW.qty
 WHERE kode_produk = NEW.kode_produk;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_satuan`
--

CREATE TABLE `tbl_satuan` (
  `id_satuan` int(2) NOT NULL,
  `nama_satuan` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`id_satuan`, `nama_satuan`) VALUES
(1, 'PCS'),
(2, 'BOX'),
(3, 'Lusin'),
(4, 'Buah'),
(5, 'KG'),
(6, 'Unit'),
(7, 'Bks'),
(8, 'kaleng'),
(9, 'PCS'),
(23, 'Cup');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(1) NOT NULL,
  `nama_toko` varchar(50) DEFAULT NULL,
  `slogan` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_telpon` varchar(18) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_toko`, `slogan`, `alamat`, `no_telpon`, `deskripsi`) VALUES
(1, 'Han Store', 'Toko Serba Ada Menyediakan Segala Kebutuhan Anda ', 'Ujung Gading, Pasaman Barat, Sumatera Barat', '082284906722', 'Han Store Adalah Tempat Belanja Modern Yang Menyediakan Berbagai Macam Kebutuhan Anda\r\nMulai Dari Perabotan Rumah Tangga, Makanan Dan Minuman , Barang\r\nBarang Elektronik , Dan Lain Lain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(2) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email`, `password`, `level`) VALUES
(1, 'Medan Cyber', 'gaktau@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 2),
(5, 'M.Pati Farhan', 'capekngoding@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1),
(6, 'Han Ngoding ', 'ngodingbang@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD PRIMARY KEY (`id_jual`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `tbl_rinci_jual`
--
ALTER TABLE `tbl_rinci_jual`
  ADD PRIMARY KEY (`id_rinci`);

--
-- Indeks untuk tabel `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indeks untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_jual`
--
ALTER TABLE `tbl_jual`
  MODIFY `id_jual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `tbl_rinci_jual`
--
ALTER TABLE `tbl_rinci_jual`
  MODIFY `id_rinci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT untuk tabel `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  MODIFY `id_satuan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
