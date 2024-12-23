-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2024 at 01:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uang_kas`
--

-- --------------------------------------------------------

--
-- Table structure for table `bulan_pembayaran`
--

CREATE TABLE `bulan_pembayaran` (
  `id_bulan_pembayaran` int(11) NOT NULL,
  `nama_bulan` enum('januari','februari','maret','april','mei','juni','juli','agustus','september','oktober','november','desember') NOT NULL,
  `tahun` int(4) NOT NULL,
  `pembayaran_perminggu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'administrator'),
(2, 'bendahara'),
(3, 'guru');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `jumlah_pengeluaran` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_uang_kas` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id_riwayat`, `id_user`, `id_uang_kas`, `aksi`, `tanggal`) VALUES
(1, 1, 2, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1611256476),
(2, 1, 2, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1611256479),
(3, 1, 2, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1611256484),
(4, 1, 2, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 4,000', 1611256488),
(5, 1, 1, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1611256492),
(6, 1, 1, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1611256495),
(7, 1, 1, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1611256500),
(8, 1, 1, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1611256504),
(9, 1, 3, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1611256508),
(10, 1, 3, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1611256512),
(11, 1, 4, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 500', 1611256518),
(12, 1, 4, 'telah mengubah pembayaran minggu ke-1 dari Rp. 500 menjadi Rp. 5,000', 1611256526),
(13, 1, 5, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1611256530),
(14, 1, 5, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1611256534),
(15, 1, 2, 'telah mengubah pembayaran minggu ke-4 dari Rp. 4,000 menjadi Rp. 3,000', 1611257026),
(16, 1, 2, 'telah mengubah pembayaran minggu ke-4 dari Rp. 3,000 menjadi Rp. 5,000', 1652453172),
(17, 1, 3, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1652453181),
(18, 1, 3, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1652453187),
(19, 1, 4, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1652453192),
(20, 1, 4, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1652453196),
(21, 1, 4, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1652453201),
(22, 1, 5, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1652453205),
(23, 1, 5, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1652453209),
(24, 1, 11, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1652453353),
(25, 1, 11, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1652453358),
(26, 1, 11, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1652453362),
(27, 1, 11, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1652453366),
(28, 2, 11, 'telah mengubah pembayaran minggu ke-4 dari Rp. 5,000 menjadi Rp. 1,000', 1652454260),
(29, 2, 11, 'telah mengubah pembayaran minggu ke-4 dari Rp. 1,000 menjadi Rp. 5,000', 1652454272),
(30, 1, 12, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 5,000', 1734832689),
(31, 1, 12, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 5,000', 1734832696),
(32, 1, 12, 'telah mengubah pembayaran minggu ke-3 dari Rp. 0 menjadi Rp. 5,000', 1734832701),
(33, 1, 12, 'telah mengubah pembayaran minggu ke-4 dari Rp. 0 menjadi Rp. 5,000', 1734832715),
(34, 1, 1, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 1', 1734835635),
(35, 1, 1, 'telah mengubah pembayaran minggu ke-1 dari Rp. 1 menjadi Rp. ', 1734835685),
(36, 1, 49, 'telah mengubah pembayaran minggu ke-1 dari Rp. 0 menjadi Rp. 2,000', 1734869302),
(37, 1, 49, 'telah mengubah pembayaran minggu ke-2 dari Rp. 0 menjadi Rp. 2,000', 1734869313);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pengeluaran`
--

CREATE TABLE `riwayat_pengeluaran` (
  `id_riwayat_pengeluaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `aksi` text NOT NULL,
  `tanggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat_pengeluaran`
--

INSERT INTO `riwayat_pengeluaran` (`id_riwayat_pengeluaran`, `id_user`, `aksi`, `tanggal`) VALUES
(1, 1, 'telah menambahkan pengeluaran permen dengan biaya Rp. 1,000', 1734832573);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `no_telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `jenis_kelamin`, `no_telepon`, `email`) VALUES
(1, 'Ahmad Ihsanudin', 'pria', '0', 'xpplg1@gmail.com'),
(2, 'Alfin Rano', 'pria', '0', 'xpplg1@gmail.com'),
(3, 'Alisa Khairan', 'wanita', '0', 'xpplg1@gmail.com'),
(4, 'Arin Novis Rizky', 'wanita', '0', 'xpplg1@gmail.com'),
(5, 'Daffa Mulyansyah', 'pria', '0', 'xpplg1@gmail.com'),
(6, 'Dewi Sri Rahayu', 'wanita', '0', 'xpplg1@gmail.com'),
(7, 'Egi Bintang Aditya', 'pria', '0', 'xpplg1@gmail.com'),
(8, 'Ellen Junithan Daeli', 'wanita', '0', 'xpplg1@gmail.com'),
(9, 'Epan Ahmad Jajuli', 'pria', '0', 'xpplg1@gmail.com'),
(10, 'Fadhil Rafi Nakhlah', 'pria', '0', 'xpplg1@gmail.com'),
(11, 'Fandi Septia', 'pria', '0', 'xpplg1@gmail.com'),
(12, 'Fasya Ramadhan', 'pria', '0', 'xpplg1@gmail.com'),
(13, 'Fatur Rachman', 'pria', '0', 'xpplg1@gmail.com'),
(14, 'Fazar Anshari Ahmad', 'pria', '0', 'xpplg1@gmail.com'),
(15, 'Haikal Putra Perniawan', 'pria', '0', 'xpplg1@gmail.com'),
(16, 'Hasan Asykari', 'pria', '0', 'xpplg1@gmail.com'),
(17, 'Ihsan Maulidhan Saputra', 'pria', '0', 'xpplg1@gmail.com'),
(18, 'Irma Diana', 'wanita', '0', 'xpplg1@gmail.com'),
(19, 'M Pashya Al Adzany', 'pria', '0', 'xpplg1@gmail.com'),
(20, 'Muhamad Aprizal', 'pria', '0', 'xpplg1@gmail.com'),
(21, 'Muhammad Ilham', 'pria', '0', 'xpplg1@gmail.com'),
(22, 'Muhammad Iqbal Jawahir', 'pria', '0', 'xpplg1@gmail.com'),
(23, 'Muhammad Nur Aziz', 'pria', '0', 'xpplg1@gmail.com'),
(24, 'Muhammad Raihan Herdiana Putra', 'pria', '0', 'xpplg1@gmail.com'),
(25, 'Muhammad Reza Ramadhan', 'pria', '0', 'xpplg1@gmail.com'),
(26, 'Mutiara Ferisca Sandi', 'wanita', '0', 'xpplg1@gmail.com'),
(27, 'Nova Herawati', 'wanita', '0', 'xpplg1@gmail.com'),
(28, 'Rehan Muhammad Al Haqqu', 'pria', '0', 'xpplg1@gmail.com'),
(29, 'Rehan Ramadhani', 'pria', '0', 'xpplg1@gmail.com'),
(30, 'Reza Saputra Christian', 'pria', '0', 'xpplg1@gmail.com'),
(31, 'Rindu Aulia', 'wanita', '0', 'xpplg1@gmail.com'),
(32, 'Rizkia Bintara', 'pria', '0', 'xpplg1@gmail.com'),
(33, 'Rizky Putra Prasetia', 'pria', '0', 'xpplg1@gmail.com'),
(34, 'Tasya Julyanti', 'wanita', '0', 'xpplg1@gmail.com'),
(35, 'Virly Septiadi Irawan', 'pria', '0', 'xpplg1@gmail.com'),
(36, 'Yohana Maryani Siagian', 'wanita', '0', 'xpplg1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `uang_kas`
--

CREATE TABLE `uang_kas` (
  `id_uang_kas` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_bulan_pembayaran` int(11) NOT NULL,
  `minggu_ke_1` int(11) DEFAULT NULL,
  `minggu_ke_2` int(11) DEFAULT NULL,
  `minggu_ke_3` int(11) DEFAULT NULL,
  `minggu_ke_4` int(11) DEFAULT NULL,
  `status_lunas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_jabatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_jabatan`) VALUES
(1, 'Rizkia Bintara', 'bintara', '$2y$10$jUXpEiooYBAk.rqOQ051eOb2gc.omaJEa7Emf/2PtJBLJoHnQb7DG', 1),
(2, 'Rakai Meta Pusparini, S.Pt', 'bu meta', '$2y$10$1G9mvmbcbdwjdqCb1EuG5OGAYNhPa1aOmlmd2yS2/Yz.A3HRS/u5u', 3),
(3, 'Yohana Maryani Siagian', 'yohana', '$2y$10$fdeYDCtDbXiGEQGLtbiAgOjZe240BbZJfVZK.61cItcJ/VZqO.f4.', 2),
(4, 'Rindu Aulia', 'rindu', '$2y$10$fdeYDCtDbXiGEQGLtbiAgOjZe240BbZJfVZK.61cItcJ/VZqO.f4.', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  ADD PRIMARY KEY (`id_bulan_pembayaran`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_uang_kas` (`id_uang_kas`);

--
-- Indexes for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  ADD PRIMARY KEY (`id_riwayat_pengeluaran`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `uang_kas`
--
ALTER TABLE `uang_kas`
  ADD PRIMARY KEY (`id_uang_kas`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_bulan_pembayaran` (`id_bulan_pembayaran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bulan_pembayaran`
--
ALTER TABLE `bulan_pembayaran`
  MODIFY `id_bulan_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `riwayat_pengeluaran`
--
ALTER TABLE `riwayat_pengeluaran`
  MODIFY `id_riwayat_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `uang_kas`
--
ALTER TABLE `uang_kas`
  MODIFY `id_uang_kas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
