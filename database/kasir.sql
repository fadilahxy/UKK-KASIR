-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2024 at 09:27 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `Detail_id` int(11) NOT NULL,
  `Penjualan_id` int(11) NOT NULL,
  `Produk_id` int(11) NOT NULL,
  `Jumlah_produk` int(11) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`Detail_id`, `Penjualan_id`, `Produk_id`, `Jumlah_produk`, `Subtotal`) VALUES
(0, 2, 333, 7, '20000.00'),
(0, 3, 333, 5, '20000.00'),
(0, 12, 123, 2, '70000.00'),
(0, 13, 123, 2, '70000.00'),
(0, 14, 123, 2, '70000.00'),
(0, 16, 123, 2, '70000.00'),
(0, 24, 1234, 10, '15000.00'),
(0, 30, 1234, 10, '15000.00'),
(0, 32, 333, 1, '20000.00'),
(29, 34, 333, 1, '20000.00');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Pelanggan_id` int(11) NOT NULL,
  `Nama_pelanggan` varchar(255) NOT NULL,
  `Nomeja` int(11) NOT NULL,
  `Nomor_telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`Pelanggan_id`, `Nama_pelanggan`, `Nomeja`, `Nomor_telepon`) VALUES
(0, 'tes', 12, ''),
(2, 'tes', 12, ''),
(3, ' fadil', 14, ''),
(4, 'tes', 1, ''),
(5, 'tess', 2, ''),
(6, 'fadil', 15, ''),
(7, 'fadil', 12, ''),
(8, 'saya', 123, ''),
(9, 'saya', 123, ''),
(10, 'saya', 123, ''),
(11, 'saya', 123, ''),
(12, 'fadli', 12, ''),
(13, 'fadli', 12, ''),
(14, 'fadli', 12, ''),
(15, 'fadli', 12, ''),
(16, 'fadli', 12, ''),
(17, 'fadli', 12, ''),
(18, 'fadli', 12, ''),
(19, 'fadli', 12, ''),
(20, 'fadli', 12, ''),
(21, 'tes', 12, ''),
(22, 'bintang', 12, ''),
(23, 'reva', 112, ''),
(24, 'reva', 112, ''),
(25, 'reva', 112, ''),
(26, 'reva', 112, ''),
(27, 'reva', 112, ''),
(28, 'alisya', 119, ''),
(29, 'alisya', 119, ''),
(30, 'alisya', 119, ''),
(31, 'nabil', 12, ''),
(32, 'nabil', 12, ''),
(33, 'nabil', 23, ''),
(34, 'nabil', 23, ''),
(35, 'nabil', 23, ''),
(36, 'paul', 23, ''),
(37, 'SASKIA', 23, ''),
(38, 'SASKIA', 0, ''),
(39, 'AJIS', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `Penjualan_id` int(11) NOT NULL,
  `tanggal_penjualan` date NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `Pelanggan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`Penjualan_id`, `tanggal_penjualan`, `total_harga`, `Pelanggan_id`) VALUES
(1, '2024-02-06', '0.00', 0),
(2, '2024-02-06', '0.00', 0),
(3, '2024-02-07', '0.00', 0),
(4, '2024-02-07', '0.00', 0),
(5, '2024-02-07', '0.00', 0),
(6, '2024-02-07', '0.00', 0),
(7, '2024-02-12', '0.00', 0),
(8, '2024-02-13', '0.00', 0),
(9, '2024-02-13', '0.00', 0),
(10, '2024-02-13', '0.00', 0),
(11, '2024-02-13', '0.00', 0),
(12, '2024-02-13', '0.00', 0),
(13, '2024-02-13', '0.00', 0),
(14, '2024-02-13', '0.00', 0),
(15, '2024-02-13', '0.00', 0),
(16, '2024-02-13', '0.00', 0),
(17, '2024-02-13', '0.00', 0),
(18, '2024-02-13', '0.00', 0),
(19, '2024-02-13', '0.00', 0),
(20, '2024-02-13', '0.00', 0),
(21, '2024-02-13', '0.00', 0),
(22, '2024-02-13', '0.00', 0),
(23, '2024-02-13', '0.00', 0),
(24, '2024-02-13', '0.00', 0),
(25, '2024-02-13', '0.00', 0),
(26, '2024-02-13', '0.00', 0),
(27, '2024-02-13', '0.00', 0),
(28, '2024-02-13', '0.00', 0),
(29, '2024-02-13', '0.00', 0),
(30, '2024-02-13', '0.00', 0),
(31, '2024-02-14', '0.00', 0),
(32, '2024-02-14', '0.00', 0),
(33, '2024-02-14', '0.00', 0),
(34, '2024-02-14', '0.00', 0),
(35, '2024-02-14', '0.00', 0),
(36, '2024-02-14', '0.00', 0),
(37, '2024-02-14', '0.00', 0),
(38, '2024-02-14', '0.00', 0),
(39, '2024-02-14', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `Produk_id` int(11) NOT NULL,
  `Nama_produk` varchar(255) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL,
  `Foto_produk` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Terjual` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`Produk_id`, `Nama_produk`, `Harga`, `Stok`, `Foto_produk`, `Terjual`) VALUES
(123, 'ES JERUK', '15000.00', 485, '13022024012730.jpg', '19'),
(333, 'SATE', '25000.00', 410, '02022024015621.jfif', '99'),
(564, 'NASI', '5000.00', 470, '14022024022224.jpg', '30'),
(1234, 'SOTO BETAWI', '35000.00', 455, '13022024012402.jpg', '98'),
(123456, 'ES TELER', '50000.00', 321, '13022024012641.jfif', '202');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Level` enum('Admin','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `Username`, `Password`, `Level`) VALUES
(7, 'dafi', '202cb962ac59075b964b07152d234b70', 'Admin'),
(8, 'saya', '202cb962ac59075b964b07152d234b70', 'Petugas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`Penjualan_id`),
  ADD KEY `penjualan_id` (`Penjualan_id`,`Produk_id`),
  ADD KEY `Produk_id` (`Produk_id`),
  ADD KEY `Detail_id` (`Detail_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Pelanggan_id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`Penjualan_id`),
  ADD KEY `pelanggan_id` (`Pelanggan_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`Produk_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `Penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `Penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`produk_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_penjualan_ibfk_3` FOREIGN KEY (`Produk_id`) REFERENCES `produk` (`produk_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
