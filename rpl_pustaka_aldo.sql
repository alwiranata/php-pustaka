-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2023 at 12:55 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpl_pustaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `muda_buku`
--

CREATE TABLE `muda_buku` (
  `isbn` varchar(25) NOT NULL,
  `judul_buku` varchar(100) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `tahun_terbit` varchar(20) DEFAULT NULL,
  `jenis_buku` varchar(25) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muda_buku`
--

INSERT INTO `muda_buku` (`isbn`, `judul_buku`, `pengarang`, `penerbit`, `tahun_terbit`, `jenis_buku`, `stok`) VALUES
('1234543322', 'CINTA LAMA BERSMI', 'aldo', 'ALWI', '10-21-2022', 'Haram', 321);

-- --------------------------------------------------------

--
-- Table structure for table `muda_peminjaman`
--

CREATE TABLE `muda_peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `nisn` varchar(10) DEFAULT NULL,
  `isbn` varchar(25) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` enum('pinjam selesai') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `muda_siswa`
--

CREATE TABLE `muda_siswa` (
  `nisn` varchar(10) NOT NULL,
  `nama_siswa` varchar(50) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(2) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muda_siswa`
--

INSERT INTO `muda_siswa` (`nisn`, `nama_siswa`, `jurusan`, `jenis_kelamin`, `alamat`, `no_hp`) VALUES
('1234567891', 'Aldo Wiranata', 'PPLG', 'L', 'JL.Kesuma', '0895634889510'),
('1234567894', 'AlWINATA', 'PPLG', 'L', 'JL KESUMA', '321'),
('1234567899', 'AlWI', 'PPLG', 'L', 'JL KESUMA', '321'),
('2222222224', 'ALDO', 'AKL', 'L', 'eeq', '211');

-- --------------------------------------------------------

--
-- Table structure for table `muda_user`
--

CREATE TABLE `muda_user` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `nama_user` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` enum('admin','user') DEFAULT NULL,
  `is_active` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muda_user`
--

INSERT INTO `muda_user` (`id`, `image`, `nama_user`, `username`, `password`, `level`, `is_active`) VALUES
(11, 'aldo.jpg', 'ALDO WIRANATA', 'siswa', '$2y$10$cwicVIkNxduS/vbyCRZGyOnTpmTm274oXtWwRI2y9DM2UGA/zdNgC', 'admin', 1),
(130, 'th_(57).jpg', '321', 'sis32', '$2y$10$ePIUxDWdgNJsReGtrH08y.KJPiXne1zMngQrAApXuzhFv6CPE32De', 'user', 1),
(131, 'th_(58).jpg', '321', '32221', '$2y$10$mJyR4mbyGybsnz2/vxoe2Om2SieGh20MHPyoUdqCdRdczrGAneU5K', 'user', 1),
(132, 'WhatsApp_Image_2023-10-05_at_09_55_54.jpeg', 'ALDO WIRANATA', 'power', '$2y$10$ENznATj2U8qIA3DQxYWPWOCRXtdeEErTibad/3GH2qFRjaW6ltRvy', 'user', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `muda_buku`
--
ALTER TABLE `muda_buku`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `muda_peminjaman`
--
ALTER TABLE `muda_peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `muda_siswa`
--
ALTER TABLE `muda_siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `muda_user`
--
ALTER TABLE `muda_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `muda_user`
--
ALTER TABLE `muda_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
