-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2025 at 12:38 PM
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
-- Database: `db_pendaftaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `calon_siswa`
--

CREATE TABLE `calon_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `sekolah_asal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calon_siswa`
--

INSERT INTO `calon_siswa` (`id`, `nama`, `alamat`, `jenis_kelamin`, `agama`, `sekolah_asal`) VALUES
(6, 'anjani', 'jalan mangga', 'perempuan', 'Islam', 'sdn 01 jakarta'),
(7, 'asiwa', 'jalan mangun', 'perempuan', 'Hindu', 'smk 01'),
(8, 'farid', 'jalan mangga 2', 'laki-laki', 'Hindu', 'smk ujung pandang'),
(9, 'aby', 'jalan bogor timur', 'laki-laki', 'Islam', 'sekolah smp manggala'),
(10, 'aby marines', 'jalan jalan aja', 'laki-laki', 'Atheis', 'smk 01 jakarta'),
(11, 'budi', 'jalan kenanga', 'laki-laki', 'Islam', 'smp 02 jakarta'),
(12, 'siti', 'jalan melati', 'perempuan', 'Kristen', 'sdn 05 bogor'),
(13, 'agus', 'jalan cempaka', 'laki-laki', 'Hindu', 'smp 03 bandung'),
(14, 'lina', 'jalan mawar', 'perempuan', 'Islam', 'sdn 04 depok'),
(15, 'andi', 'jalan anggrek', 'laki-laki', 'Buddha', 'smp 06 surabaya'),
(16, 'dian', 'jalan melur', 'perempuan', 'Kristen', 'sdn 07 medan'),
(17, 'fauzan', 'jalan flamboyan', 'laki-laki', 'Islam', 'smp 08 malang'),
(18, 'sari', 'jalan durian', 'perempuan', 'Hindu', 'sdn 09 bogor'),
(19, 'rahmat', 'jalan pisang', 'laki-laki', 'Islam', 'smp 11 makassar'),
(20, 'tina', 'jalan alpukat', 'perempuan', 'Buddha', 'sdn 12 yogyakarta'),
(21, 'joko', 'jalan salak', 'laki-laki', 'Kristen', 'smp 13 semarang'),
(22, 'rani', 'jalan nangka', 'perempuan', 'Islam', 'sdn 14 tangerang'),
(23, 'hendra', 'jalan durian', 'laki-laki', 'Hindu', 'smp 15 jakarta'),
(24, 'vina', 'jalan rambutan', 'perempuan', 'Buddha', 'sdn 16 bandung'),
(25, 'reza', 'jalan manggis', 'laki-laki', 'Islam', 'smp 17 surabaya'),
(26, 'ayu', 'jalan duku', 'perempuan', 'Kristen', 'sdn 18 depok'),
(27, 'surya', 'jalan anggur', 'laki-laki', 'Islam', 'smp 19 medan'),
(28, 'winda', 'jalan melon', 'perempuan', 'Buddha', 'sdn 20 bogor'),
(29, 'fikri', 'jalan kelapa', 'laki-laki', 'Islam', 'smp 21 makassar'),
(30, 'yuli', 'jalan pepaya', 'perempuan', 'Hindu', 'sdn 22 yogyakarta'),
(31, 'eka', 'jalan belimbing', 'laki-laki', 'Kristen', 'smp 23 semarang'),
(32, 'nita', 'jalan sawo', 'perempuan', 'Islam', 'sdn 24 jakarta'),
(33, 'adi', 'jalan ceri', 'laki-laki', 'Buddha', 'smp 25 bandung'),
(34, 'risa', 'jalan jambu', 'perempuan', 'Hindu', 'sdn 26 surabaya'),
(35, 'roni', 'jalan semangka', 'laki-laki', 'Islam', 'smp 27 tangerang'),
(36, 'susan', 'jalan jeruk', 'perempuan', 'Kristen', 'sdn 28 depok'),
(37, 'fadil', 'jalan kedondong', 'laki-laki', 'Islam', 'smp 29 medan'),
(38, 'lina', 'jalan kemuning', 'perempuan', 'Buddha', 'sdn 30 bogor'),
(39, 'jihan', 'jalan cempedak', 'perempuan', 'Islam', 'sdn 31 malang'),
(40, 'rizky', 'jalan pisang mas', 'laki-laki', 'Hindu', 'smp 32 makassar'),
(41, 'yani', 'jalan srikaya', 'perempuan', 'Kristen', 'sdn 33 yogyakarta'),
(42, 'ferdi', 'jalan delima', 'laki-laki', 'Islam', 'smp 34 semarang'),
(43, 'siska', 'jalan cempaka', 'perempuan', 'Buddha', 'sdn 35 tangerang'),
(44, 'bagus', 'jalan kenari', 'laki-laki', 'Islam', 'smp 36 jakarta'),
(45, 'dewi', 'jalan flamboyan', 'perempuan', 'Hindu', 'sdn 37 bandung'),
(46, 'agus', 'jalan mawar', 'laki-laki', 'Islam', 'smp 38 surabaya'),
(47, 'rina', 'jalan anggrek', 'perempuan', 'Kristen', 'sdn 39 depok'),
(48, 'arif', 'jalan melati', 'laki-laki', 'Islam', 'smp 40 medan'),
(49, 'citra', 'jalan dahlia', 'perempuan', 'Buddha', 'sdn 41 bogor'),
(50, 'agus', 'jalan teratai', 'laki-laki', 'Islam', 'smp 42 makassar'),
(51, 'desi', 'jalan seroja', 'perempuan', 'Kristen', 'sdn 43 yogyakarta'),
(52, 'muhammad', 'jalan kamboja', 'laki-laki', 'Islam', 'smp 44 semarang'),
(53, 'yana', 'jalan semangka', 'perempuan', 'Islam', 'smp 45 tangerang'),
(54, 'gilang', 'jalan beringin', 'laki-laki', 'Islam', 'smp 46 malang'),
(55, 'bella', 'jalan cemara', 'perempuan', 'Kristen', 'sdn 47 bandung'),
(56, 'fahmi', 'jalan kapas', 'laki-laki', 'Islam', 'smp 48 depok'),
(57, 'nina', 'jalan kenanga', 'perempuan', 'Hindu', 'sdn 49 jakarta'),
(58, 'reza', 'jalan cendana', 'laki-laki', 'Buddha', 'smp 50 medan'),
(59, 'johan', 'jalan bambu', 'laki-laki', 'Islam', 'smp 51 surabaya'),
(60, 'salsa', 'jalan pinus', 'perempuan', 'Kristen', 'sdn 52 malang'),
(61, 'eko', 'jalan kenanga', 'laki-laki', 'Hindu', 'smp 53 makassar'),
(62, 'fira faraun', 'jalan sejahtera 1', 'laki-laki', 'Kristen', 'sdn 54 medan 12'),
(76, 'bagas saputra 12', 'jalan jalan', 'laki-laki', 'Hindu', 'SMK sejahtera'),
(77, 'fger erwer wqw 12', 'rtetret', 'perempuan', 'Hindu', 'retret'),
(79, 'budi agungret 22323', 'ewrwer', 'perempuan', 'Hindu', 'werwer');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
