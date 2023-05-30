-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 04:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fiverst`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust`
--

CREATE TABLE `cust` (
  `username` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `stats` enum('admin','user') NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust`
--

INSERT INTO `cust` (`username`, `pass`, `nama_lengkap`, `jenis_kelamin`, `alamat`, `hp`, `stats`, `id_user`) VALUES
('fadlan', 'fadlan91', 'Fadlan achmad f', 'laki laki', 'jalanan', '98989', 'user', 1),
('vina', 'vina123', 'Elvina ananda', 'perempuan', 'jalanannnn', '1281938', 'admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(50) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `total_belanja` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `tanggal_pemesanan`, `total_belanja`) VALUES
(1, '2023-05-15', 134000),
(2, '2023-05-15', 232000),
(3, '2023-05-15', 105000),
(4, '2023-05-16', 88000);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_produk`
--

CREATE TABLE `pemesanan_produk` (
  `id_pemesanan_produk` int(50) NOT NULL,
  `id_pemesanan` int(50) NOT NULL,
  `id_menu` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan_produk`
--

INSERT INTO `pemesanan_produk` (`id_pemesanan_produk`, `id_pemesanan`, `id_menu`, `jumlah`) VALUES
(1, 1, '1', 1),
(2, 1, '6', 1),
(3, 2, '2', 1),
(4, 2, '8', 1),
(5, 2, '1', 1),
(6, 3, '3', 1),
(7, 4, '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(50) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `harga_menu` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama_menu`, `harga_menu`, `gambar`) VALUES
(1, 'Prawn Paste Chicken', '79000', 'PRAWN-CHICKEN.jpg'),
(2, 'Kung Pao Chicken', '88000', 'KUNGPAO-CHICKEN.jpg'),
(3, 'Sweet & Sour Pork', '105000', 'sweet-sour-pork.jpg'),
(4, 'Imperial Pork Ribs', '128000', 'imperial-pork.jpg'),
(5, 'Salted Egg Pork Ribs', '105000', 'saltde-egg-pork.jpg'),
(6, 'Thai Style Tofu', '55000', 'THAI_TOFU.jpg'),
(8, 'HomeTown Tofu', '65000', 'section_tofu_copy.jpg'),
(9, 'BBQ Stingray', '87000', 'BBQ-FISH.jpg'),
(10, 'Sweet & Sour Sliced Fish', '90000', 'SWEET-SOUR-FISH.jpg'),
(11, 'Chilli Crab', '70000', 'CHIIL-SEAFOOD.jpg'),
(12, 'Cereal Prawn', '65000', 'CEREAL-SEAFOOD.jpg'),
(13, 'Salted Egg Sotong', '99000', 'SOTONG-SEAFOOD.jpg'),
(14, 'Mango Sago', '27000', 'MANGO-DESS.jpg'),
(15, 'Peanut Ice Kachang', '40000', 'KACHANG-DESS.jpg'),
(16, 'Red Bean Lotus Seed ', '28000', 'REDLOTUS-DESS.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust`
--
ALTER TABLE `cust`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  ADD PRIMARY KEY (`id_pemesanan_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cust`
--
ALTER TABLE `cust`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  MODIFY `id_pemesanan_produk` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
