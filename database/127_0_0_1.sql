-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2025 at 10:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventory`
--
CREATE DATABASE IF NOT EXISTS `db_inventory` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_inventory`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah_barang` int(10) NOT NULL,
  `satuan_barang` varchar(20) NOT NULL,
  `harga_beli` double(20,2) NOT NULL,
  `status_barang` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `kode_barang`, `nama_barang`, `jumlah_barang`, `satuan_barang`, `harga_beli`, `status_barang`) VALUES
(4, 'A0045', 'Laptop Hp', 7, 'Pcs', 4000.00, 0),
(7, 'A990fr', 'buku gambar', 12, 'Pcs', 2000.00, 0),
(8, 'S00FDE', 'miyak sayur cempaka', 34, 'Kg', 21000.00, 0),
(11, 'S3335', 'wrewf', 4, 'liter', 33000.00, 0),
(12, 'A9956', 'Mouse', 4, 'pcs', 100000.00, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `db_pendaftaran`
--
CREATE DATABASE IF NOT EXISTS `db_pendaftaran` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_pendaftaran`;

-- --------------------------------------------------------

--
-- Table structure for table `calon_siswa`
--

CREATE TABLE `calon_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `sekolah_asal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calon_siswa`
--

INSERT INTO `calon_siswa` (`id`, `nama`, `email`, `alamat`, `jenis_kelamin`, `agama`, `sekolah_asal`) VALUES
(90, 'budi agung', 'budiagungofficial@gmail.com', 'jl. tipar cakung', 'laki-laki', 'Islam', 'SMA Muhammadiyah 01'),
(91, 'imam kartono', 'imamkartono@gmail.com', 'jalan jalan', 'laki-laki', 'Islam', 'sdn 54 medan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calon_siswa`
--
ALTER TABLE `calon_siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calon_siswa`
--
ALTER TABLE `calon_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- Database: `gudangkami`
--
CREATE DATABASE IF NOT EXISTS `gudangkami` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gudangkami`;

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_barang_keluar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `penerima` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `input_by` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_barang_keluar`, `id_barang`, `tanggal`, `penerima`, `qty`, `input_by`) VALUES
(63, 147, '2025-03-05 02:00:52', 'Ch', 1, 'admin'),
(69, 98, '2025-03-12 03:37:27', 'Ch', 1, 'admin'),
(71, 155, '2025-03-12 03:41:42', 'Ch', 8, 'admin'),
(72, 157, '2025-03-12 03:41:56', 'Ch', 6, 'admin'),
(73, 154, '2025-03-12 03:42:46', 'Ch', 8, 'admin'),
(74, 160, '2025-03-12 03:47:35', 'Ch', 6, 'admin'),
(75, 156, '2025-03-12 04:05:50', 'Ch', 6, 'admin'),
(76, 161, '2025-03-12 04:14:58', 'Ch', 6, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_barang_masuk` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `pengirim` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `input_by` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_barang_masuk`, `id_barang`, `tanggal`, `pengirim`, `qty`, `input_by`) VALUES
(83, 86, '2025-02-22 05:46:30', 'Gudang lama', 1, 'admin'),
(84, 87, '2025-02-22 05:49:25', 'Gudang lama', 1, 'admin'),
(85, 88, '2025-02-22 05:50:39', 'Gudang lama', 1, 'admin'),
(86, 89, '2025-02-22 05:52:17', 'Gudang lama', 24, 'admin'),
(87, 90, '2025-02-23 04:52:49', 'Gudang lama', 1, 'user'),
(88, 91, '2025-02-23 04:59:02', 'Gudang lama', 1, 'admin'),
(89, 92, '2025-02-23 05:02:00', 'Gudang lama', 1, 'admin'),
(90, 93, '2025-02-23 05:06:05', 'Gudang lama', 1, 'admin'),
(91, 94, '2025-02-23 05:08:06', 'Gudang lama', 2, 'admin'),
(92, 95, '2025-02-23 05:15:42', 'Gudang lama', 4, 'admin'),
(93, 96, '2025-02-23 05:16:47', 'Gudang lama', 1, 'admin'),
(94, 97, '2025-02-23 05:22:54', 'Gudang lama', 1, 'admin'),
(95, 98, '2025-02-23 05:24:06', 'Gudang lama', 2, 'admin'),
(96, 99, '2025-02-23 05:26:02', 'Gudang lama', 1, 'admin'),
(97, 100, '2025-02-23 05:28:17', 'Gudang lama', 5, 'admin'),
(98, 101, '2025-02-23 05:30:42', 'Gudang lama', 1, 'admin'),
(100, 103, '2025-02-23 05:34:31', 'Gudang lama', 1, 'admin'),
(101, 104, '2025-02-23 05:38:25', 'Gudang lama', 1, 'admin'),
(102, 105, '2025-02-23 05:39:32', 'Gudang lama', 1, 'admin'),
(103, 106, '2025-02-23 05:40:43', 'Gudang lama', 1, 'admin'),
(104, 107, '2025-02-23 05:42:14', 'Gudang lama', 1, 'admin'),
(105, 108, '2025-02-23 05:43:13', 'Gudang lama', 1, 'admin'),
(106, 109, '2025-02-23 05:44:26', 'Gudang lama', 1, 'admin'),
(107, 110, '2025-02-23 05:45:24', 'Gudang lama', 1, 'admin'),
(108, 111, '2025-02-23 05:46:21', 'Gudang lama', 1, 'admin'),
(109, 112, '2025-02-23 05:50:51', 'Gudang lama', 6, 'admin'),
(110, 113, '2025-02-23 05:52:09', 'Gudang lama', 2, 'admin'),
(111, 114, '2025-02-23 05:55:47', 'Gudang lama', 8, 'admin'),
(112, 115, '2025-02-23 05:58:04', 'Gudang lama', 1, 'admin'),
(113, 116, '2025-02-23 06:07:13', 'Gudang lama', 1, 'admin'),
(114, 117, '2025-02-23 06:08:35', 'Gudang lama', 2, 'admin'),
(115, 118, '2025-02-23 06:10:02', 'Gudang lama', 2, 'admin'),
(116, 119, '2025-02-23 06:11:13', 'Gudang lama', 4, 'admin'),
(117, 120, '2025-02-23 06:13:04', 'Gudang lama', 1, 'admin'),
(118, 121, '2025-02-23 06:14:17', 'Gudang lama', 1, 'admin'),
(119, 122, '2025-02-23 06:17:36', 'Gudang lama', 1, 'admin'),
(120, 123, '2025-02-23 06:19:07', 'Gudang lama', 1, 'admin'),
(121, 124, '2025-02-23 06:22:07', 'Gudang lama', 1, 'admin'),
(122, 125, '2025-02-23 06:23:31', 'Gudang lama', 1, 'admin'),
(123, 126, '2025-02-23 06:25:02', 'Gudang lama', 2, 'admin'),
(124, 127, '2025-02-23 06:26:05', 'Gudang lama', 1, 'admin'),
(126, 129, '2025-02-23 06:29:01', 'Gudang lama', 1, 'admin'),
(132, 135, '2025-02-23 06:41:46', 'Gudang lama', 1, 'admin'),
(133, 136, '2025-02-23 06:43:08', 'Gudang lama', 1, 'admin'),
(134, 137, '2025-02-23 06:44:36', 'Gudang lama', 2, 'admin'),
(135, 138, '2025-02-23 06:46:24', 'Gudang lama', 1, 'admin'),
(136, 139, '2025-02-23 06:48:46', 'Gudang lama', 1, 'admin'),
(137, 140, '2025-02-23 06:48:59', 'Gudang lama', 1, 'admin'),
(138, 141, '2025-02-23 06:51:15', 'Gudang lama', 1, 'admin'),
(139, 142, '2025-02-23 06:54:17', 'Gudang lama', 1, 'admin'),
(140, 143, '2025-02-23 06:56:29', 'Gudang lama', 1, 'admin'),
(141, 144, '2025-02-23 06:58:32', 'Gudang lama', 1, 'admin'),
(144, 147, '2025-02-23 07:03:29', 'Gudang lama', 2, 'admin'),
(148, 151, '2025-02-23 07:08:05', 'Gudang lama', 1, 'admin'),
(149, 152, '2025-02-23 07:09:19', 'Gudang lama', 6, 'admin'),
(150, 153, '2025-02-23 07:36:00', 'Gudang lama', 1, 'admin'),
(151, 154, '2025-02-23 07:50:06', 'Gudang lama', 30, 'admin'),
(152, 155, '2025-02-23 07:50:28', 'Gudang lama', 43, 'admin'),
(153, 156, '2025-02-23 07:52:15', 'Gudang lama', 18, 'admin'),
(154, 157, '2025-02-23 07:53:49', 'Gudang lama', 25, 'admin'),
(155, 158, '2025-02-23 07:55:40', 'Gudang lama', 12, 'admin'),
(156, 159, '2025-02-23 08:06:32', 'Gudang lama', 1, 'admin'),
(157, 160, '2025-03-12 03:45:49', 'Gudang lama', 16, 'admin'),
(158, 161, '2025-03-12 04:14:45', 'Gudang lama', 17, 'admin'),
(159, 162, '2025-03-26 15:09:08', 'Ch', 20, 'admin'),
(160, 163, '2025-03-26 15:11:10', 'Ch', 1, 'admin'),
(161, 164, '2025-03-26 15:12:19', 'Ch', 7, 'admin'),
(162, 165, '2025-03-26 15:24:39', 'Ch', 2, 'admin'),
(163, 166, '2025-03-26 15:30:59', 'Ch', 1, 'admin'),
(164, 167, '2025-03-26 15:31:58', 'Ch', 1, 'admin'),
(165, 168, '2025-03-26 15:33:26', 'Ch', 1, 'admin'),
(166, 169, '2025-03-26 15:34:43', 'Ch', 4, 'admin'),
(167, 170, '2025-03-26 15:41:14', 'Ch', 17, 'admin'),
(168, 164, '2025-03-28 15:46:52', 'Ch', 3, 'admin'),
(169, 171, '2025-03-28 15:52:53', 'Ch', 1, 'admin'),
(170, 172, '2025-03-28 15:56:57', 'Ch', 1, 'admin'),
(171, 173, '2025-03-28 15:59:08', 'Ch', 5, 'admin'),
(172, 174, '2025-03-28 16:00:38', 'Ch', 4, 'admin'),
(173, 175, '2025-03-28 16:02:19', 'Ch', 8, 'admin'),
(174, 176, '2025-03-28 16:05:24', 'Ch', 8, 'admin'),
(175, 177, '2025-03-28 16:06:16', 'Ch', 2, 'admin'),
(176, 178, '2025-03-28 16:07:24', 'Ch', 5, 'admin'),
(177, 179, '2025-03-28 16:08:23', 'Ch', 1, 'admin'),
(178, 180, '2025-03-28 16:09:45', 'Ch', 1, 'admin'),
(179, 181, '2025-03-28 16:11:00', 'Ch', 1, 'admin'),
(180, 182, '2025-03-28 16:12:06', 'Ch', 12, 'admin'),
(181, 183, '2025-03-28 16:14:36', 'Ch', 13, 'admin'),
(182, 184, '2025-03-28 16:16:29', 'Ch', 1, 'admin'),
(183, 185, '2025-03-28 16:18:36', 'Ch', 2, 'admin'),
(184, 186, '2025-03-28 16:19:57', 'Ch', 2, 'admin'),
(185, 187, '2025-03-28 16:21:07', 'Ch', 1, 'admin'),
(186, 188, '2025-03-28 16:34:29', 'Ch', 1, 'admin'),
(187, 189, '2025-03-28 17:46:16', 'Ch', 1, 'admin'),
(188, 190, '2025-03-28 17:48:36', 'Ch', 14, 'admin'),
(189, 191, '2025-03-28 17:49:32', 'Ch', 2, 'admin'),
(190, 192, '2025-03-28 17:50:39', 'Ch', 6, 'admin'),
(191, 193, '2025-03-28 18:09:10', 'Ch', 1, 'admin'),
(192, 194, '2025-03-28 18:10:05', 'Ch', 2, 'admin'),
(193, 195, '2025-03-28 18:11:45', 'Ch', 2, 'admin'),
(194, 196, '2025-03-28 18:12:45', 'Ch', 17, 'admin'),
(195, 197, '2025-03-28 18:14:23', 'Ch', 2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(99) DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `input_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id_barang`, `nama_barang`, `deskripsi`, `stock`, `image`, `category`, `input_by`) VALUES
(86, 'Selang AC ', 'Kondisi bagus', 1, '2fcf95c70fc694c5475741d64a7ff8b41740203176.jpg', 'Elektronik', ''),
(87, 'Safebox', 'Kondisi baru', 1, '2c1bf92e34a239cb22aa75658572551c1740203341.jpg', 'Lainnya', ''),
(88, 'Speaker ', 'Kondisi bekas', 1, '24b48b4717e511168c47a53d3cf966b21740203429.jpg', 'Elektronik', ''),
(89, 'Telepon ', 'Kondisi bekas', 24, '2598cf518b242a92b40a6ac43eef29411740203516.jpg', 'Elektronik', ''),
(90, 'AC pujiare', '1 sett bekas', 1, '3f7e787fb811164e1d6a5a588e3f48471740286239.jpg', 'Elektronik', ''),
(91, 'Pagar besi rak server', '219 x 59 set ', 1, '7d22410b9dac890da5e400b723d5a5b51740286731.jpg', 'Lainnya', ''),
(92, 'Pintu kayu 61 x 194', 'Kondisi bekas', 1, '8fac7db45b73ff3ecffcf6f570e2371b1740286892.jpg', 'Furniture', ''),
(93, 'Pintu kayu sleding 218,5 x 88', 'Kondisi bekas', 1, 'd57d9ee2b17b08bf6e39bf23bf032e4c1740287030.jpg', 'Furniture', ''),
(94, 'Pintu kayu sleding 90 x 226', 'Kondisi bekas', 2, '67afa6c2f8ee00b83b2652dff952b9f61740287275.jpg', 'Furniture', ''),
(95, 'Ban mobil Alphard ', '4 ban baru', 4, '90b650a59a63dfc788fcfc61a5f76f541740287727.jpg', 'Lainnya', ''),
(96, 'Air cooler honeywell', 'Kondisi bekas', 1, '9cae97468e7e764611f02253ca353e7c1740287787.jpg', 'Elektronik', ''),
(97, 'AC Changhong ', 'Kondisi bekas', 1, '5a9432daa3ccd9eed3a33e8e5dc269f31740288136.jpg', 'Elektronik', ''),
(98, 'AC Daikin 2pk', 'Kondisi bekas', 1, '2ecdb9592d2c09e105ca218f29302c651740288228.jpg', 'Elektronik', ''),
(99, 'Rak server 85 x 183', 'Kondisi bekas', 1, 'ef4af45b2ac1973877e25483306035b51740288330.jpg', 'Computer Part', ''),
(100, 'CPU ', 'Kondisi bekas', 5, '2b12c8a6fb11437358f1ddb550ecc5391740288424.jpg', 'Computer Part', ''),
(101, 'Sape box bekas', 'Kondisi bekas', 1, 'bbbe6e51815fc0ca7321a63f84354f471740288621.jpg', 'Lainnya', ''),
(103, 'Mikrower sharp', 'Kondisi bekas', 1, '892ffb1ed222a1cb8ad368a5e34044361740288837.jpg', 'Elektronik', ''),
(104, 'Papan tulis 180 x 191', 'Kondisi bekas', 1, '93d0a356a2c3732eb041a4b22ad03c521740289082.jpg', 'Atk', ''),
(105, 'Papan tulis 152 x 100', 'Kondisi bekas', 1, 'cf59d8138d6f6e093a7bbb134ae6e8d71740289157.jpg', 'Atk', ''),
(106, 'Papan tulis 120 x 90', 'Kondisi bekas', 1, '649d0b06187049c1177d0fdb53e541a51740289226.jpg', 'Atk', ''),
(107, 'Papan tulis 181 x 120', 'Kondisi bekas', 1, '7ae23013a1ffd80427cf4f6d8d004d2a1740289315.jpg', 'Atk', ''),
(108, 'Papan tulis 161 x 92', 'Kondisi bekas', 1, 'eb677802ed0bd3ae1b5a4c1a65a340441740289378.jpg', 'Atk', ''),
(109, 'Papan tulis 121 x 181', 'Kondisi bekas', 1, '3c3e43109c4065701fdf69af7d84bac71740289443.jpg', 'Atk', ''),
(110, 'Papan tulis 61 x 92', 'Kondisi bekas', 1, '4c3163f6ffcddb63f1b307473e5bec4f1740289508.jpg', 'Atk', ''),
(111, 'Papan tulis 121 x 81', 'Kondisi bekas', 1, '158ac3d4428b72e3dd7f486727f098b81740289565.jpg', 'Atk', ''),
(112, 'Helm bogo', 'Kondisi bekas', 6, '38a2d2a0a8cf5e630fc56784c07267171740289836.jpg', 'Lainnya', ''),
(113, 'Swicth zyxel', 'Kondisi bekas', 2, '8c99853ca14087e5141262bb0eb867671740289910.jpg', 'Computer Part', ''),
(114, 'Monitor', 'Kondisi bekas', 8, '7e4f3ac2ee0e196fe774188032c3002a1740290086.jpg', 'Computer Part', ''),
(115, 'Rock wool', 'Kondisi baru', 1, '68515efe6f1050a79b347aad13ed114b1740290248.jpg', 'Lainnya', ''),
(116, 'Roller blind L 112 x L 324', 'Kondisi bekas', 1, 'd41fd57d481807a33b487267bf444a0c1740290801.jpg', 'Furniture', ''),
(117, 'Roller blind L 119 x L 390', 'Kondisi bekas', 2, '95d137da0ab61f7105f9071fe4e9d61e1740290887.jpg', 'Furniture', ''),
(118, 'Roller blind L 119,5 x L 120', 'Kondisi bekas', 2, 'ef27f14b8a3089158211a215a5e6e2ce1740290977.jpg', 'Furniture', ''),
(119, 'Roller blind L 89,5 x L 120', 'Kondisi bekas', 4, 'eb617778aa41263e6bce0f1e3964e4721740291052.jpg', 'Furniture', ''),
(120, 'Roller blind L 71 x L 390', 'Kondisi bekas', 1, 'e49d8b01c64e754b6fe2ed51004bf7091740291168.jpg', 'Furniture', ''),
(121, 'Roller blind L 63,5 x L 390', 'Kondisi bekas', 1, '1bbf41112059b5bdcd5eda69604dc15f1740291242.jpg', 'Furniture', ''),
(122, 'Roller blind L 73,5 x L 210', 'Kondisi bekas', 1, '7d23777beb0e99e13d9e25a0e00c44e01740291439.jpg', 'Furniture', ''),
(123, 'Roller blind ', 'No ukuran', 1, '2f3e94e34ca414833ef6f30d454f10781740291534.jpg', 'Furniture', ''),
(124, 'Meja 120 x 60', 'Kondisi bekas', 1, 'e2a4d4917b28253081f312a981f710bf1740291708.jpg', 'Furniture', ''),
(125, 'Meja resepsionis', 'Kondisi bekas', 1, '74bf8a5044b9c1824f3a786dbd82e0d01740291780.jpg', 'Furniture', ''),
(126, 'Meja 119 x 50', 'Kondisi bekas', 2, '7c8890b0ceb4c2921a392a066a3452e71740291879.jpg', 'Furniture', ''),
(127, 'Meja 80 x 38,5', 'Kondisi bekas', 1, '264e1a0c3751ec584e1ee296f14fc1801740291947.jpg', 'Furniture', ''),
(129, 'Mesin uang kazure', 'Kondisi bekas', 1, '52ce62a25d2d28ea3be69fc013b0929f1740292122.jpg', 'Elektronik', ''),
(135, 'Zixel GS3700-48', 'Kondisi bekas', 1, 'ca9521116a6609763784882accaf97ac1740292884.jpg', 'Computer Part', ''),
(136, 'Mesin hitung uang', 'Kondisi bekas', 1, 'd73787e7a391a184234214b24d5625971740292970.jpg', 'Elektronik', ''),
(137, 'Switch d-link', 'Kondisi bekas', 2, 'd03c52303005bf0e764a8b782c0ba3d81740293047.jpg', 'Computer Part', ''),
(138, 'Papan tulis 181 x91', 'Kondisi bekas', 1, '456ba658b4ba1ceb80bead3ed085d9671740293166.jpg', 'Atk', ''),
(139, 'Kursi kerja hitam', 'Kondisi bekas', 1, 'cafdd57b4ece2dbb1d51c3002084cc761740293243.jpg', 'Furniture', ''),
(140, 'Kursi kerja hitam putih', 'Kondisi bekas', 1, 'd2cbd752c6fffd5a1b451bf47024bec31740293303.jpg', 'Furniture', ''),
(141, 'Meja kecil 73 x 80', 'Kondisi bekas', 1, '173088d4e0093a1b40ef9582ae8fb2e61740293430.jpg', 'Furniture', ''),
(142, 'Pintu kaca depan 79,5 x 218', 'Kondisi bekas', 1, '51a12cd0b4e7c13eebffaba5f1b76cd01740293640.jpg', 'Furniture', ''),
(143, 'Kaca 108 x 82', 'Kondisi bekas', 1, '6dbf523d7695b961a59bfaf41a65795c1740293766.jpg', 'Furniture', ''),
(144, 'Kaca kusen 108,5 x 89', 'Kondisi bekas', 1, '169c9c0561c0442cb9a91739d73dc2531740293894.jpg', 'Furniture', ''),
(147, 'Kaca 61 x 72', 'Kondisi bekas', 1, '59075cb0a278b81dddfa78cffdbcacd31740294188.jpg', 'Furniture', ''),
(151, 'Kaca 47 x 81', 'Kondisi bekas', 1, '014ce913103a23bb2333199a7bac26471740294436.jpg', 'Furniture', ''),
(152, 'Partisi skat ', 'Kondisi bekas', 6, '857fc11394ebf5cf1dc043413e8ce9191740294538.jpg', 'Furniture', ''),
(153, 'Meja bulat pantry', 'Kondisi bekas', 1, '3f1078f257bdd1c210fd709907d944b71740296133.jpg', 'Furniture', ''),
(154, 'Both hpl 120 x 105', 'Kondisi bekas', 22, '55cf0713e2bcac4b1d95e29f03b4b1041740296439.jpg', 'Furniture', ''),
(155, 'Both busa 120 x 90', 'Kondisi bekas', 35, '8decb8f67a92ad8cb06d6c021a16594e1740296579.jpg', 'Furniture', ''),
(156, 'Both busa 1 90 x 120', 'Kondisi bekas', 12, '764c0a356f4883a09cee916190831d141740297113.jpg', 'Furniture', ''),
(157, 'Meja both', 'Kondisi bekas', 19, 'e49b41f57bd7d1b59c24dfdac1c466811740297207.jpg', 'Furniture', ''),
(158, 'Both 75 x 120', 'Kondisi bekas', 12, '085c38d863e4c922a56d14aaa2ec78a21740297304.jpg', 'Furniture', ''),
(159, 'Projektor layer L 303', 'Kondisi bekas', 1, '81eb142dd7490f58bfc2e9101f9109111740297905.jpg', 'Elektronik', ''),
(160, 'Laci both', 'Kondisi bekas', 10, '895504329311b647737de63088194fe01741751132.jpg', 'Furniture', ''),
(161, 'Both hpl 1 105 x 120', 'Kondisi bekas', 11, '60487102bb95a6355bb99ae6c08bd7581741752681.jpg', 'Furniture', ''),
(162, 'Pintu kayu 220 x 80', 'Kondisi bekas', 20, '8eb728e2342db4aa4f3338f59620e70e1743001726.jpg', 'Furniture', ''),
(163, 'Rak server 153 x 88', 'Kondisi bekas', 1, '1bb92b8c5c96eab2eb21b8bdb0d0b8c11743001857.jpg', 'Computer Part', ''),
(164, 'Rock wool board', 'Kondisi baru', 10, '031f81b4d5bba011f695decaa0b8fcaf1743001924.jpg', 'Furniture', ''),
(165, 'Kusen pintu 210 x 99,5', 'Kondisi bekas', 2, '36967f18c3acdf1f104aa156d4111fd61743002665.jpg', 'Furniture', ''),
(166, 'Kusen pintu 156,5 x 99,5', 'Kondisi bekas', 1, 'ce8c831d26e4ad31970255427917b8de1743003044.jpg', 'Furniture', ''),
(167, 'Kusen pintu 157,5 x 99,5', 'Kondisi bekas', 1, 'e3f314fc3c89a2cb811f5e8038731f511743003104.jpg', 'Furniture', ''),
(168, 'Kusen pintu 129,5 x 99,5', 'Kondisi bekas', 1, 'ebfb7a912fc2fe7d52841cfd2917d41d1743003193.jpg', 'Furniture', ''),
(169, 'Kusen pintu 60 x 100', 'Kondisi bekas', 4, '366ef770ab5ce491f67915f033f45cfe1743003270.jpg', 'Furniture', ''),
(170, 'Kusen pintu 100 x 99,5', 'Kondisi bekas', 17, '50955a40a5507935ba713286823f2f551743003659.jpg', 'Furniture', ''),
(171, 'Meja buluk', 'Kondisi bekas', 1, '406027fd4cb1a1f4c9f3cd67fd164dd81743177162.jpg', 'Computer Part', ''),
(172, 'Printer pixma', 'Kondisi bekas', 1, 'c85901a1ac212b9ec0b6b0d15456177d1743177405.jpg', 'Computer Part', ''),
(173, 'AC portable ', 'Kondisi bekas', 5, 'e54be4e57eff46d6a3c1abb570794e731743177535.jpg', 'Elektronik', ''),
(174, 'AC indoor casette', 'Kondisi bekas', 4, '0e2502770d6decbc3b059292bfb243ee1743177617.jpg', 'Elektronik', ''),
(175, 'AC indoor wall mounted', 'Kondisi bekas', 8, '194111e4c05171200a00c6aa8cc5c04e1743177723.jpg', 'Elektronik', ''),
(176, 'Drainpump', 'Kondisi bekas', 8, 'ca41dbd99991c14af95fbe7fb781607f1743177910.jpg', 'Elektronik', ''),
(177, 'Pipa AC foil', 'Kondisi bekas', 2, '855b703ab0cd53002780d41dd5a352481743177964.jpg', 'Elektronik', ''),
(178, 'Access lock exit button ', 'Kondisi bekas', 5, '4ae3f89b9405d8e5f2f8c98186ac05cb1743178022.jpg', 'Elektronik', ''),
(179, 'Meja lipat Bu jojo', 'Kondisi bekas', 1, '26bb9ec80ab3a336b1b24b76d54642961743178090.jpg', 'Computer Part', ''),
(180, 'Alat olahraga ', 'Kondisi bekas', 1, '181e9ed78215e2fcd631c9f12d9fe5a91743178171.jpg', 'Furniture', ''),
(181, 'Kunci pintu kayu', 'Kondisi bekas', 1, '4bd9173316cefad6e4193442ce03af611743178239.jpg', 'Furniture', ''),
(182, 'Panel switch ac indoor ', 'Kondisi bekas', 12, 'd897a2655f9c6a3c112cf10173307d8d1743178310.jpg', 'Elektronik', ''),
(183, 'Lampu alarm ', 'Kondisi bekas', 13, 'e1a9c8ce1eb73c8c6e4d741b830c0beb1743178408.jpg', 'Elektronik', ''),
(184, 'Logo rjm', 'Kondisi bekas', 1, 'de070f4bedebea95f66a5fa0482631c51743178570.jpg', 'Furniture', ''),
(185, 'Papan tulis 91,5 X 61,5', 'Kondisi bekas', 2, 'a57af24b2d5d5236a3fee2f33da247901743178699.jpg', 'Atk', ''),
(186, 'Papan tulis 151 X 101', 'Kondisi bekas', 2, '76c3dcd5c577b67774b00c22f10684ab1743178783.jpg', 'Atk', ''),
(187, 'Papan tulis 121 x 81,5', 'Kondisi bekas', 1, 'c84f5eb6b08a374089d0d127d47727771743178853.jpg', 'Atk', ''),
(188, 'Kaca kusen 155 x 87', 'Kondisi bekas', 1, '77b8023149212902b94839b8a64801601743179612.jpg', 'Furniture', ''),
(189, 'Kusen 150 x 100', 'Kondisi bekas', 1, '60300a33e383bf5504b6cfe7c054e3a71743183963.jpg', 'Furniture', ''),
(190, 'Kusen 225 x 89', 'Kondisi bekas', 14, '699a734be15a4e2eed1d42cac3ce80fd1743184092.jpg', 'Furniture', ''),
(191, 'Kusen 210 x 99,5', 'Kondisi bekas', 2, 'b0dc1c288a67e29d3ced65b375021a0c1743184161.jpg', 'Furniture', ''),
(192, 'Kusenkayu 225 x 88', 'Kondisi bekas', 6, '68dfb5063a3cff3d5ea13b5c8bfeb31d1743184222.jpg', 'Furniture', ''),
(193, 'Kaca 93,5 x 123,5', 'Kondisi bekas', 1, 'fff1eeea1642f8556458cae7c94d076e1743185336.jpg', 'Furniture', ''),
(194, 'Kaca 72 x 95 ', 'Kondisi bekas', 2, '5a61fd78aa144f787e89ac3f24d8a2ee1743185391.jpg', 'Furniture', ''),
(195, 'Kaca 203 x 93', 'Kondisi bekas', 2, '4dbd4cdc2df2167e176ce2854ef8e2331743185484.jpg', 'Furniture', ''),
(196, 'Kaca 103 x 93', 'Kondisi bekas', 17, '5a3a88f8b8b4bde05172e3126bddaabc1743185551.jpg', 'Furniture', ''),
(197, 'Kaca 149 x 92', 'Kondisi bekas', 2, 'd099bacbccaf45f267c99450c902bb7d1743185650.jpg', 'Furniture', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2y$10$0ZqTAfP7QJk1Nc5rnoZHHOBhF070sSUEFMF06xkN/2oVS8aExZvrm', 'admin'),
(2, 'user', '$2y$10$h2eEbj3C05rHVRAkbUjdU.TCRnM2UxzJGKx7zbzpHyHV/5rOFtNKi', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`),
  ADD KEY `fk_barang_keluar` (`id_barang`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`),
  ADD KEY `fk_barang_masuk` (`id_barang`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id_barang_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  MODIFY `id_barang_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD CONSTRAINT `fk_barang_keluar` FOREIGN KEY (`id_barang`) REFERENCES `stock` (`id_barang`) ON DELETE CASCADE;

--
-- Constraints for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD CONSTRAINT `fk_barang_masuk` FOREIGN KEY (`id_barang`) REFERENCES `stock` (`id_barang`) ON DELETE CASCADE;
--
-- Database: `gudr4699_inventory`
--
CREATE DATABASE IF NOT EXISTS `gudr4699_inventory` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gudr4699_inventory`;

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_barang_keluar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `penerima` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `input_by` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_barang_keluar`, `id_barang`, `tanggal`, `penerima`, `qty`, `input_by`) VALUES
(63, 147, '2025-03-05 02:00:52', 'Ch', 1, 'admin'),
(69, 98, '2025-03-12 03:37:27', 'Ch', 1, 'admin'),
(71, 155, '2025-03-12 03:41:42', 'Ch', 8, 'admin'),
(72, 157, '2025-03-12 03:41:56', 'Ch', 6, 'admin'),
(73, 154, '2025-03-12 03:42:46', 'Ch', 8, 'admin'),
(74, 160, '2025-03-12 03:47:35', 'Ch', 6, 'admin'),
(75, 156, '2025-03-12 04:05:50', 'Ch', 6, 'admin'),
(76, 161, '2025-03-12 04:14:58', 'Ch', 6, 'admin'),
(77, 202, '2025-04-23 09:16:26', 'bagas', 1, 'admin'),
(78, 202, '2025-04-23 10:30:29', 'agung', 1, 'admin'),
(79, 202, '2025-04-23 10:33:22', 'agung', 1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_barang_masuk` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `pengirim` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `input_by` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_barang_masuk`, `id_barang`, `tanggal`, `pengirim`, `qty`, `input_by`) VALUES
(83, 86, '2025-02-22 05:46:30', 'Gudang lama', 1, 'admin'),
(84, 87, '2025-02-22 05:49:25', 'Gudang lama', 1, 'admin'),
(85, 88, '2025-02-22 05:50:39', 'Gudang lama', 1, 'admin'),
(86, 89, '2025-02-22 05:52:17', 'Gudang lama', 24, 'admin'),
(87, 90, '2025-02-23 04:52:49', 'Gudang lama', 1, 'user'),
(88, 91, '2025-02-23 04:59:02', 'Gudang lama', 1, 'admin'),
(89, 92, '2025-02-23 05:02:00', 'Gudang lama', 1, 'admin'),
(90, 93, '2025-02-23 05:06:05', 'Gudang lama', 1, 'admin'),
(91, 94, '2025-02-23 05:08:06', 'Gudang lama', 2, 'admin'),
(92, 95, '2025-02-23 05:15:42', 'Gudang lama', 4, 'admin'),
(93, 96, '2025-02-23 05:16:47', 'Gudang lama', 1, 'admin'),
(94, 97, '2025-02-23 05:22:54', 'Gudang lama', 1, 'admin'),
(95, 98, '2025-02-23 05:24:06', 'Gudang lama', 2, 'admin'),
(96, 99, '2025-02-23 05:26:02', 'Gudang lama', 1, 'admin'),
(97, 100, '2025-02-23 05:28:17', 'Gudang lama', 5, 'admin'),
(98, 101, '2025-02-23 05:30:42', 'Gudang lama', 1, 'admin'),
(100, 103, '2025-02-23 05:34:31', 'Gudang lama', 1, 'admin'),
(101, 104, '2025-02-23 05:38:25', 'Gudang lama', 1, 'admin'),
(102, 105, '2025-02-23 05:39:32', 'Gudang lama', 1, 'admin'),
(103, 106, '2025-02-23 05:40:43', 'Gudang lama', 1, 'admin'),
(104, 107, '2025-02-23 05:42:14', 'Gudang lama', 1, 'admin'),
(105, 108, '2025-02-23 05:43:13', 'Gudang lama', 1, 'admin'),
(106, 109, '2025-02-23 05:44:26', 'Gudang lama', 1, 'admin'),
(107, 110, '2025-02-23 05:45:24', 'Gudang lama', 1, 'admin'),
(108, 111, '2025-02-23 05:46:21', 'Gudang lama', 1, 'admin'),
(109, 112, '2025-02-23 05:50:51', 'Gudang lama', 6, 'admin'),
(110, 113, '2025-02-23 05:52:09', 'Gudang lama', 2, 'admin'),
(111, 114, '2025-02-23 05:55:47', 'Gudang lama', 8, 'admin'),
(112, 115, '2025-02-23 05:58:04', 'Gudang lama', 1, 'admin'),
(113, 116, '2025-02-23 06:07:13', 'Gudang lama', 1, 'admin'),
(114, 117, '2025-02-23 06:08:35', 'Gudang lama', 2, 'admin'),
(115, 118, '2025-02-23 06:10:02', 'Gudang lama', 2, 'admin'),
(116, 119, '2025-02-23 06:11:13', 'Gudang lama', 4, 'admin'),
(117, 120, '2025-02-23 06:13:04', 'Gudang lama', 1, 'admin'),
(118, 121, '2025-02-23 06:14:17', 'Gudang lama', 1, 'admin'),
(119, 122, '2025-02-23 06:17:36', 'Gudang lama', 1, 'admin'),
(120, 123, '2025-02-23 06:19:07', 'Gudang lama', 1, 'admin'),
(121, 124, '2025-02-23 06:22:07', 'Gudang lama', 1, 'admin'),
(122, 125, '2025-02-23 06:23:31', 'Gudang lama', 1, 'admin'),
(123, 126, '2025-02-23 06:25:02', 'Gudang lama', 2, 'admin'),
(124, 127, '2025-02-23 06:26:05', 'Gudang lama', 1, 'admin'),
(126, 129, '2025-02-23 06:29:01', 'Gudang lama', 1, 'admin'),
(132, 135, '2025-02-23 06:41:46', 'Gudang lama', 1, 'admin'),
(133, 136, '2025-02-23 06:43:08', 'Gudang lama', 1, 'admin'),
(134, 137, '2025-02-23 06:44:36', 'Gudang lama', 2, 'admin'),
(135, 138, '2025-02-23 06:46:24', 'Gudang lama', 1, 'admin'),
(136, 139, '2025-02-23 06:48:46', 'Gudang lama', 1, 'admin'),
(137, 140, '2025-02-23 06:48:59', 'Gudang lama', 1, 'admin'),
(138, 141, '2025-02-23 06:51:15', 'Gudang lama', 1, 'admin'),
(139, 142, '2025-02-23 06:54:17', 'Gudang lama', 1, 'admin'),
(140, 143, '2025-02-23 06:56:29', 'Gudang lama', 1, 'admin'),
(141, 144, '2025-02-23 06:58:32', 'Gudang lama', 1, 'admin'),
(144, 147, '2025-02-23 07:03:29', 'Gudang lama', 2, 'admin'),
(148, 151, '2025-02-23 07:08:05', 'Gudang lama', 1, 'admin'),
(149, 152, '2025-02-23 07:09:19', 'Gudang lama', 6, 'admin'),
(150, 153, '2025-02-23 07:36:00', 'Gudang lama', 1, 'admin'),
(151, 154, '2025-02-23 07:50:06', 'Gudang lama', 30, 'admin'),
(152, 155, '2025-02-23 07:50:28', 'Gudang lama', 43, 'admin'),
(153, 156, '2025-02-23 07:52:15', 'Gudang lama', 18, 'admin'),
(154, 157, '2025-02-23 07:53:49', 'Gudang lama', 25, 'admin'),
(155, 158, '2025-02-23 07:55:40', 'Gudang lama', 12, 'admin'),
(156, 159, '2025-02-23 08:06:32', 'Gudang lama', 1, 'admin'),
(157, 160, '2025-03-12 03:45:49', 'Gudang lama', 16, 'admin'),
(158, 161, '2025-03-12 04:14:45', 'Gudang lama', 17, 'admin'),
(159, 162, '2025-03-26 15:09:08', 'Ch', 20, 'admin'),
(160, 163, '2025-03-26 15:11:10', 'Ch', 1, 'admin'),
(161, 164, '2025-03-26 15:12:19', 'Ch', 7, 'admin'),
(162, 165, '2025-03-26 15:24:39', 'Ch', 2, 'admin'),
(163, 166, '2025-03-26 15:30:59', 'Ch', 1, 'admin'),
(164, 167, '2025-03-26 15:31:58', 'Ch', 1, 'admin'),
(165, 168, '2025-03-26 15:33:26', 'Ch', 1, 'admin'),
(166, 169, '2025-03-26 15:34:43', 'Ch', 4, 'admin'),
(167, 170, '2025-03-26 15:41:14', 'Ch', 17, 'admin'),
(168, 164, '2025-03-28 15:46:52', 'Ch', 3, 'admin'),
(169, 171, '2025-03-28 15:52:53', 'Ch', 1, 'admin'),
(170, 172, '2025-03-28 15:56:57', 'Ch', 1, 'admin'),
(171, 173, '2025-03-28 15:59:08', 'Ch', 5, 'admin'),
(172, 174, '2025-03-28 16:00:38', 'Ch', 4, 'admin'),
(173, 175, '2025-03-28 16:02:19', 'Ch', 8, 'admin'),
(174, 176, '2025-03-28 16:05:24', 'Ch', 8, 'admin'),
(175, 177, '2025-03-28 16:06:16', 'Ch', 2, 'admin'),
(176, 178, '2025-03-28 16:07:24', 'Ch', 5, 'admin'),
(177, 179, '2025-03-28 16:08:23', 'Ch', 1, 'admin'),
(178, 180, '2025-03-28 16:09:45', 'Ch', 1, 'admin'),
(179, 181, '2025-03-28 16:11:00', 'Ch', 1, 'admin'),
(180, 182, '2025-03-28 16:12:06', 'Ch', 12, 'admin'),
(181, 183, '2025-03-28 16:14:36', 'Ch', 13, 'admin'),
(182, 184, '2025-03-28 16:16:29', 'Ch', 1, 'admin'),
(183, 185, '2025-03-28 16:18:36', 'Ch', 2, 'admin'),
(184, 186, '2025-03-28 16:19:57', 'Ch', 2, 'admin'),
(185, 187, '2025-03-28 16:21:07', 'Ch', 1, 'admin'),
(186, 188, '2025-03-28 16:34:29', 'Ch', 1, 'admin'),
(187, 189, '2025-03-28 17:46:16', 'Ch', 1, 'admin'),
(188, 190, '2025-03-28 17:48:36', 'Ch', 14, 'admin'),
(189, 191, '2025-03-28 17:49:32', 'Ch', 2, 'admin'),
(190, 192, '2025-03-28 17:50:39', 'Ch', 6, 'admin'),
(191, 193, '2025-03-28 18:09:10', 'Ch', 1, 'admin'),
(192, 194, '2025-03-28 18:10:05', 'Ch', 2, 'admin'),
(193, 195, '2025-03-28 18:11:45', 'Ch', 2, 'admin'),
(194, 196, '2025-03-28 18:12:45', 'Ch', 17, 'admin'),
(195, 197, '2025-03-28 18:14:23', 'Ch', 2, 'admin'),
(196, 198, '2025-04-05 06:49:34', 'ch', 2, 'admin'),
(197, 199, '2025-04-05 06:57:11', 'ch', 2, 'admin'),
(198, 200, '2025-04-05 07:03:22', 'ch', 1, 'admin'),
(199, 201, '2025-04-15 07:44:35', 'Ch', 4, 'admin'),
(200, 202, '2025-04-23 09:15:51', 'ch', 3, 'admin'),
(201, 202, '2025-04-23 10:33:55', 'Junior', 40, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(99) DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `input_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id_barang`, `nama_barang`, `deskripsi`, `stock`, `image`, `category`, `input_by`) VALUES
(86, 'Selang AC ', 'Kondisi bagus', 1, '2fcf95c70fc694c5475741d64a7ff8b41740203176.jpg', 'Elektronik', ''),
(87, 'Safebox', 'Kondisi baru', 1, '2c1bf92e34a239cb22aa75658572551c1740203341.jpg', 'Lainnya', ''),
(88, 'Speaker ', 'Kondisi bekas', 1, '24b48b4717e511168c47a53d3cf966b21740203429.jpg', 'Elektronik', ''),
(89, 'Telepon ', 'Kondisi bekas', 24, '2598cf518b242a92b40a6ac43eef29411740203516.jpg', 'Elektronik', ''),
(90, 'AC pujiare', '1 sett bekas', 1, '3f7e787fb811164e1d6a5a588e3f48471740286239.jpg', 'Elektronik', ''),
(91, 'Pagar besi rak server', '219 x 59 set ', 1, '7d22410b9dac890da5e400b723d5a5b51740286731.jpg', 'Lainnya', ''),
(92, 'Pintu kayu 61 x 194', 'Kondisi bekas', 1, '8fac7db45b73ff3ecffcf6f570e2371b1740286892.jpg', 'Furniture', ''),
(93, 'Pintu kayu sleding 218,5 x 88', 'Kondisi bekas', 1, 'd57d9ee2b17b08bf6e39bf23bf032e4c1740287030.jpg', 'Furniture', ''),
(94, 'Pintu kayu sleding 90 x 226', 'Kondisi bekas', 2, '67afa6c2f8ee00b83b2652dff952b9f61740287275.jpg', 'Furniture', ''),
(95, 'Ban mobil Alphard ', '4 ban baru', 4, '90b650a59a63dfc788fcfc61a5f76f541740287727.jpg', 'Lainnya', ''),
(96, 'Air cooler honeywell', 'Kondisi bekas', 1, '9cae97468e7e764611f02253ca353e7c1740287787.jpg', 'Elektronik', ''),
(97, 'AC Changhong ', 'Kondisi bekas', 1, '5a9432daa3ccd9eed3a33e8e5dc269f31740288136.jpg', 'Elektronik', ''),
(98, 'AC Daikin 2pk', 'Kondisi bekas', 1, '2ecdb9592d2c09e105ca218f29302c651740288228.jpg', 'Elektronik', ''),
(99, 'Rak server 85 x 183', 'Kondisi bekas', 1, 'ef4af45b2ac1973877e25483306035b51740288330.jpg', 'Computer Part', ''),
(100, 'CPU ', 'Kondisi bekas', 5, '2b12c8a6fb11437358f1ddb550ecc5391740288424.jpg', 'Computer Part', ''),
(101, 'Sape box bekas', 'Kondisi bekas', 1, 'bbbe6e51815fc0ca7321a63f84354f471740288621.jpg', 'Lainnya', ''),
(103, 'Mikrower sharp', 'Kondisi bekas', 1, '892ffb1ed222a1cb8ad368a5e34044361740288837.jpg', 'Elektronik', ''),
(104, 'Papan tulis 180 x 191', 'Kondisi bekas', 1, '93d0a356a2c3732eb041a4b22ad03c521740289082.jpg', 'Atk', ''),
(105, 'Papan tulis 152 x 100', 'Kondisi bekas', 1, 'cf59d8138d6f6e093a7bbb134ae6e8d71740289157.jpg', 'Atk', ''),
(106, 'Papan tulis 120 x 90', 'Kondisi bekas', 1, '649d0b06187049c1177d0fdb53e541a51740289226.jpg', 'Atk', ''),
(107, 'Papan tulis 181 x 120', 'Kondisi bekas', 1, '7ae23013a1ffd80427cf4f6d8d004d2a1740289315.jpg', 'Atk', ''),
(108, 'Papan tulis 161 x 92', 'Kondisi bekas', 1, 'eb677802ed0bd3ae1b5a4c1a65a340441740289378.jpg', 'Atk', ''),
(109, 'Papan tulis 121 x 181', 'Kondisi bekas', 1, '3c3e43109c4065701fdf69af7d84bac71740289443.jpg', 'Atk', ''),
(110, 'Papan tulis 61 x 92', 'Kondisi bekas', 1, '4c3163f6ffcddb63f1b307473e5bec4f1740289508.jpg', 'Atk', ''),
(111, 'Papan tulis 121 x 81', 'Kondisi bekas', 1, '158ac3d4428b72e3dd7f486727f098b81740289565.jpg', 'Atk', ''),
(112, 'Helm bogo', 'Kondisi bekas', 6, '38a2d2a0a8cf5e630fc56784c07267171740289836.jpg', 'Lainnya', ''),
(113, 'Swicth zyxel', 'Kondisi bekas', 2, '8c99853ca14087e5141262bb0eb867671740289910.jpg', 'Computer Part', ''),
(114, 'Monitor', 'Kondisi bekas', 8, '7e4f3ac2ee0e196fe774188032c3002a1740290086.jpg', 'Computer Part', ''),
(115, 'Rock wool', 'Kondisi baru', 1, '68515efe6f1050a79b347aad13ed114b1740290248.jpg', 'Lainnya', ''),
(116, 'Roller blind L 112 x L 324', 'Kondisi bekas', 1, 'd41fd57d481807a33b487267bf444a0c1740290801.jpg', 'Furniture', ''),
(117, 'Roller blind L 119 x L 390', 'Kondisi bekas', 2, '95d137da0ab61f7105f9071fe4e9d61e1740290887.jpg', 'Furniture', ''),
(118, 'Roller blind L 119,5 x L 120', 'Kondisi bekas', 2, 'ef27f14b8a3089158211a215a5e6e2ce1740290977.jpg', 'Furniture', ''),
(119, 'Roller blind L 89,5 x L 120', 'Kondisi bekas', 4, 'eb617778aa41263e6bce0f1e3964e4721740291052.jpg', 'Furniture', ''),
(120, 'Roller blind L 71 x L 390', 'Kondisi bekas', 1, 'e49d8b01c64e754b6fe2ed51004bf7091740291168.jpg', 'Furniture', ''),
(121, 'Roller blind L 63,5 x L 390', 'Kondisi bekas', 1, '1bbf41112059b5bdcd5eda69604dc15f1740291242.jpg', 'Furniture', ''),
(122, 'Roller blind L 73,5 x L 210', 'Kondisi bekas', 1, '7d23777beb0e99e13d9e25a0e00c44e01740291439.jpg', 'Furniture', ''),
(123, 'Roller blind ', 'No ukuran', 1, '2f3e94e34ca414833ef6f30d454f10781740291534.jpg', 'Furniture', ''),
(124, 'Meja 120 x 60', 'Kondisi bekas', 1, 'e2a4d4917b28253081f312a981f710bf1740291708.jpg', 'Furniture', ''),
(125, 'Meja resepsionis', 'Kondisi bekas', 1, '74bf8a5044b9c1824f3a786dbd82e0d01740291780.jpg', 'Furniture', ''),
(126, 'Meja 119 x 50', 'Kondisi bekas', 2, '7c8890b0ceb4c2921a392a066a3452e71740291879.jpg', 'Furniture', ''),
(127, 'Meja 80 x 38,5', 'Kondisi bekas', 1, '264e1a0c3751ec584e1ee296f14fc1801740291947.jpg', 'Furniture', ''),
(129, 'Mesin uang kazure', 'Kondisi bekas', 1, '52ce62a25d2d28ea3be69fc013b0929f1740292122.jpg', 'Elektronik', ''),
(135, 'Zixel GS3700-48', 'Kondisi bekas', 1, 'ca9521116a6609763784882accaf97ac1740292884.jpg', 'Computer Part', ''),
(136, 'Mesin hitung uang', 'Kondisi bekas', 1, 'd73787e7a391a184234214b24d5625971740292970.jpg', 'Elektronik', ''),
(137, 'Switch d-link', 'Kondisi bekas', 2, 'd03c52303005bf0e764a8b782c0ba3d81740293047.jpg', 'Computer Part', ''),
(138, 'Papan tulis 181 x91', 'Kondisi bekas', 1, '456ba658b4ba1ceb80bead3ed085d9671740293166.jpg', 'Atk', ''),
(139, 'Kursi kerja hitam', 'Kondisi bekas', 1, 'cafdd57b4ece2dbb1d51c3002084cc761740293243.jpg', 'Furniture', ''),
(140, 'Kursi kerja hitam putih', 'Kondisi bekas', 1, 'd2cbd752c6fffd5a1b451bf47024bec31740293303.jpg', 'Furniture', ''),
(141, 'Meja kecil 73 x 80', 'Kondisi bekas', 1, '173088d4e0093a1b40ef9582ae8fb2e61740293430.jpg', 'Furniture', ''),
(142, 'Pintu kaca 79,5 x 218', 'Kondisi bekas', 1, '51a12cd0b4e7c13eebffaba5f1b76cd01740293640.jpg', 'Furniture', ''),
(143, 'Kaca 108 x 82', 'Kondisi bekas', 1, '6dbf523d7695b961a59bfaf41a65795c1740293766.jpg', 'Furniture', ''),
(144, 'Kaca kusen 108,5 x 89', 'Kondisi bekas', 1, '169c9c0561c0442cb9a91739d73dc2531740293894.jpg', 'Furniture', ''),
(147, 'Kaca 61 x 72', 'Kondisi bekas', 1, '59075cb0a278b81dddfa78cffdbcacd31740294188.jpg', 'Furniture', ''),
(151, 'Kaca 47 x 81', 'Kondisi bekas', 1, '014ce913103a23bb2333199a7bac26471740294436.jpg', 'Furniture', ''),
(152, 'Partisi skat ', 'Kondisi bekas', 6, '857fc11394ebf5cf1dc043413e8ce9191740294538.jpg', 'Furniture', ''),
(153, 'Meja bulat pantry', 'Kondisi bekas', 1, '3f1078f257bdd1c210fd709907d944b71740296133.jpg', 'Furniture', ''),
(154, 'Both hpl 120 x 105', 'Kondisi bekas', 22, '55cf0713e2bcac4b1d95e29f03b4b1041740296439.jpg', 'Furniture', ''),
(155, 'Both busa 120 x 90', 'Kondisi bekas', 35, '8decb8f67a92ad8cb06d6c021a16594e1740296579.jpg', 'Furniture', ''),
(156, 'Both busa 1 90 x 120', 'Kondisi bekas', 12, '764c0a356f4883a09cee916190831d141740297113.jpg', 'Furniture', ''),
(157, 'Meja both', 'Kondisi bekas', 19, 'e49b41f57bd7d1b59c24dfdac1c466811740297207.jpg', 'Furniture', ''),
(158, 'Both 75 x 120', 'Kondisi bekas', 12, '085c38d863e4c922a56d14aaa2ec78a21740297304.jpg', 'Furniture', ''),
(159, 'Projektor layer L 303', 'Kondisi bekas', 1, '81eb142dd7490f58bfc2e9101f9109111740297905.jpg', 'Elektronik', ''),
(160, 'Laci both', 'Kondisi bekas', 10, '895504329311b647737de63088194fe01741751132.jpg', 'Furniture', ''),
(161, 'Both hpl 1 105 x 120', 'Kondisi bekas', 11, '60487102bb95a6355bb99ae6c08bd7581741752681.jpg', 'Furniture', ''),
(162, 'Pintu kayu 220 x 80', 'Kondisi bekas', 20, '8eb728e2342db4aa4f3338f59620e70e1743001726.jpg', 'Furniture', ''),
(163, 'Rak server 153 x 88', 'Kondisi bekas', 1, '1bb92b8c5c96eab2eb21b8bdb0d0b8c11743001857.jpg', 'Computer Part', ''),
(164, 'Rock wool board', 'Kondisi baru', 10, '031f81b4d5bba011f695decaa0b8fcaf1743001924.jpg', 'Furniture', ''),
(165, 'Kusen pintu 210 x 99,5', 'Kondisi bekas', 2, '36967f18c3acdf1f104aa156d4111fd61743002665.jpg', 'Furniture', ''),
(166, 'Kusen pintu 156,5 x 99,5', 'Kondisi bekas', 1, 'ce8c831d26e4ad31970255427917b8de1743003044.jpg', 'Furniture', ''),
(167, 'Kusen pintu 157,5 x 99,5', 'Kondisi bekas', 1, 'e3f314fc3c89a2cb811f5e8038731f511743003104.jpg', 'Furniture', ''),
(168, 'Kusen pintu 129,5 x 99,5', 'Kondisi bekas', 1, 'ebfb7a912fc2fe7d52841cfd2917d41d1743003193.jpg', 'Furniture', ''),
(169, 'Kusen pintu 60 x 100', 'Kondisi bekas', 4, '366ef770ab5ce491f67915f033f45cfe1743003270.jpg', 'Furniture', ''),
(170, 'Kusen pintu 100 x 99,5', 'Kondisi bekas', 17, '50955a40a5507935ba713286823f2f551743003659.jpg', 'Furniture', ''),
(171, 'Meja buluk', 'Kondisi bekas', 1, '406027fd4cb1a1f4c9f3cd67fd164dd81743177162.jpg', 'Computer Part', ''),
(172, 'Printer pixma', 'Kondisi bekas', 1, 'c85901a1ac212b9ec0b6b0d15456177d1743177405.jpg', 'Computer Part', ''),
(173, 'AC portable ', 'Barang di Ruko', 5, 'e54be4e57eff46d6a3c1abb570794e731743177535.jpg', 'Elektronik', ''),
(174, 'AC indoor casette', 'Barang di Ruko', 4, '0e2502770d6decbc3b059292bfb243ee1743177617.jpg', 'Elektronik', ''),
(175, 'AC indoor wall mounted', 'Barang di Ruko', 8, '194111e4c05171200a00c6aa8cc5c04e1743177723.jpg', 'Elektronik', ''),
(176, 'Drainpump', 'Kondisi bekas', 8, 'ca41dbd99991c14af95fbe7fb781607f1743177910.jpg', 'Elektronik', ''),
(177, 'Pipa AC foil', 'Kondisi bekas', 2, '855b703ab0cd53002780d41dd5a352481743177964.jpg', 'Elektronik', ''),
(178, 'Access lock exit button ', 'Kondisi bekas', 5, '4ae3f89b9405d8e5f2f8c98186ac05cb1743178022.jpg', 'Elektronik', ''),
(179, 'Meja lipat Bu jojo', 'Kondisi bekas', 1, '26bb9ec80ab3a336b1b24b76d54642961743178090.jpg', 'Computer Part', ''),
(180, 'Alat olahraga ', 'Kondisi bekas', 1, '181e9ed78215e2fcd631c9f12d9fe5a91743178171.jpg', 'Furniture', ''),
(181, 'Kunci pintu kayu', 'Kondisi bekas', 1, '4bd9173316cefad6e4193442ce03af611743178239.jpg', 'Furniture', ''),
(182, 'Panel switch ac indoor ', 'Kondisi bekas', 12, 'd897a2655f9c6a3c112cf10173307d8d1743178310.jpg', 'Elektronik', ''),
(183, 'Lampu alarm ', 'Kondisi bekas', 13, 'e1a9c8ce1eb73c8c6e4d741b830c0beb1743178408.jpg', 'Elektronik', ''),
(184, 'Logo rjm', 'Kondisi bekas', 1, 'de070f4bedebea95f66a5fa0482631c51743178570.jpg', 'Furniture', ''),
(185, 'Papan tulis 91,5 X 61,5', 'Kondisi bekas', 2, 'a57af24b2d5d5236a3fee2f33da247901743178699.jpg', 'Atk', ''),
(186, 'Papan tulis 151 X 101', 'Kondisi bekas', 2, '76c3dcd5c577b67774b00c22f10684ab1743178783.jpg', 'Atk', ''),
(187, 'Papan tulis 121 x 81,5', 'Kondisi bekas', 1, 'c84f5eb6b08a374089d0d127d47727771743178853.jpg', 'Atk', ''),
(188, 'Kaca kusen 155 x 87', 'Kondisi bekas', 1, '77b8023149212902b94839b8a64801601743179612.jpg', 'Furniture', ''),
(189, 'Kusen 150 x 100', 'Kondisi bekas', 1, '60300a33e383bf5504b6cfe7c054e3a71743183963.jpg', 'Furniture', ''),
(190, 'Kusen 225 x 89', 'Kondisi bekas', 14, '699a734be15a4e2eed1d42cac3ce80fd1743184092.jpg', 'Furniture', ''),
(191, 'Kusen 210 x 99,5', 'Kondisi bekas', 2, 'b0dc1c288a67e29d3ced65b375021a0c1743184161.jpg', 'Furniture', ''),
(192, 'Kusenkayu 225 x 88', 'Kondisi bekas', 6, '68dfb5063a3cff3d5ea13b5c8bfeb31d1743184222.jpg', 'Furniture', ''),
(193, 'Kaca 93,5 x 123,5', 'Kondisi bekas', 1, 'fff1eeea1642f8556458cae7c94d076e1743185336.jpg', 'Furniture', ''),
(194, 'Kaca 72 x 95 ', 'Kondisi bekas', 2, '5a61fd78aa144f787e89ac3f24d8a2ee1743185391.jpg', 'Furniture', ''),
(195, 'Kaca 203 x 93', 'Kondisi bekas', 2, '4dbd4cdc2df2167e176ce2854ef8e2331743185484.jpg', 'Furniture', ''),
(196, 'Kaca 103 x 93', 'Kondisi bekas', 17, '5a3a88f8b8b4bde05172e3126bddaabc1743185551.jpg', 'Furniture', ''),
(197, 'Kaca 149 x 92', 'Kondisi bekas', 2, 'd099bacbccaf45f267c99450c902bb7d1743185650.jpg', 'Furniture', ''),
(198, 'pintu kaca 240 x 90', 'Kondisi bekas', 2, 'd016984fe2605cf22e2f0d4d354a6d1a1743835739.jpg', 'Furniture', ''),
(199, 'kaca 53,5 X 94', 'Kondisi bekas', 2, '0cdfa64d987f3fb12fac8291acea146b1743836216.jpg', 'Furniture', ''),
(200, 'pintu kaca 218 x 80', 'Kondisi bekas', 1, '81c203b3ac317a79fb660636d345c2ea1743836566.jpg', 'Furniture', ''),
(201, 'Kaca 298,5 x 73', 'Kondisi bekas', 4, '8f948d9e9b6e5387a9af55efa16847821744703062.jpg', 'Furniture', ''),
(202, 'Test 1', 'Kondisi Baru', 40, 'eaaf3e48ccef8c92147a1399462396b31745399735.jpg', 'Furniture', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2y$10$0ZqTAfP7QJk1Nc5rnoZHHOBhF070sSUEFMF06xkN/2oVS8aExZvrm', 'admin'),
(2, 'user', '$2y$10$h2eEbj3C05rHVRAkbUjdU.TCRnM2UxzJGKx7zbzpHyHV/5rOFtNKi', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`),
  ADD KEY `fk_barang_keluar` (`id_barang`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`),
  ADD KEY `fk_barang_masuk` (`id_barang`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id_barang_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  MODIFY `id_barang_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD CONSTRAINT `fk_barang_keluar` FOREIGN KEY (`id_barang`) REFERENCES `stock` (`id_barang`) ON DELETE CASCADE;

--
-- Constraints for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD CONSTRAINT `fk_barang_masuk` FOREIGN KEY (`id_barang`) REFERENCES `stock` (`id_barang`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_pendaftaran\",\"table\":\"calon_siswa\"},{\"db\":\"db_inventory\",\"table\":\"barang\"},{\"db\":\"gudangkami\",\"table\":\"stock\"},{\"db\":\"inventory\",\"table\":\"stock\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-05-07 08:32:55', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
