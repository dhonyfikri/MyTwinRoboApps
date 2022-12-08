-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 10:51 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twinsroboapp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `info_lomba`
--

CREATE TABLE `info_lomba` (
  `id` bigint(20) NOT NULL,
  `judul_lomba` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `pamflet` varchar(255) NOT NULL DEFAULT '/twinsrobo/image/image-banner-lomba/default/none.png',
  `start_at` date NOT NULL,
  `end_at` date NOT NULL,
  `cat_sumo_rc` tinyint(1) NOT NULL DEFAULT 0,
  `cat_maze_solving` tinyint(1) NOT NULL DEFAULT 0,
  `cat_transporter` tinyint(1) NOT NULL DEFAULT 0,
  `cat_drone_race` tinyint(1) NOT NULL DEFAULT 0,
  `cat_under_water` tinyint(1) NOT NULL DEFAULT 0,
  `number_of_views` bigint(20) NOT NULL DEFAULT 0,
  `number_of_shares` bigint(20) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info_lomba`
--

INSERT INTO `info_lomba` (`id`, `judul_lomba`, `deskripsi`, `pamflet`, `start_at`, `end_at`, `cat_sumo_rc`, `cat_maze_solving`, `cat_transporter`, `cat_drone_race`, `cat_under_water`, `number_of_views`, `number_of_shares`, `created_at`, `updated_at`) VALUES
(1, 'Super Lomba Robotik Nasional 2021', 'Dengan bangga Rotary Club of Surabaya Persada mengadakan Lomba Robotika\r\nNasional ke 2 tahun 2021 yg akan diselenggarakan pada tanggal *27-28 Maret 2021*. <br>\r\n<ul>\r\n<li>Total hadiah Rp. 10.000.000</li>\r\n<li>Piagam pemenang tandatangan Gubernur Jawa Timur.</li>\r\n</ul>', '/twinsrobo/image/image-banner-lomba/pamflet1.jpg', '2021-03-16', '2021-04-08', 1, 1, 1, 1, 1, 864, 684, '2021-03-16', '2021-03-29'),
(2, 'Lomba Fotografi', 'Pengadaan lomba fotografi berhadiah jutaan rupiah. Ayo daftarkan diri anda segera sebelum kuota peserta habis.<br>\r\n<ul>\r\n<li>Total hadiah Rp. 10.000.000</li>\r\n<li>Piagam pemenang tandatangan Gubernur Jawa Timur.</li>\r\n</ul>', '/twinsrobo/image/image-banner-lomba/pamflet2.jpg', '2021-03-23', '2021-03-31', 1, 1, 0, 1, 0, 345, 123, '2021-03-01', '2021-03-01'),
(3, 'Elektro Line Follower Contest', 'Pengadaan ELCO berhadiah jutaan rupiah. Ayo daftarkan diri anda segera sebelum kuota peserta habis.<br>\r\n<ul>\r\n<li>Total hadiah Rp. 10.000.000</li>\r\n<li>Piagam pemenang tandatangan Gubernur Jawa Timur.</li>\r\n</ul>', '/twinsrobo/image/image-banner-lomba/pamflet3.jpg', '2021-03-31', '2021-03-31', 0, 1, 1, 0, 1, 654, 334, '2021-03-17', '2021-03-17'),
(4, 'Muhammadiyah Line Tracer Competition', 'Pengadaan MLTC berhadiah jutaan rupiah. Ayo daftarkan diri anda segera sebelum kuota peserta habis.<br>\r\n<ul>\r\n<li>Total hadiah Rp. 10.000.000</li>\r\n<li>Piagam pemenang tandatangan Gubernur Jawa Timur.</li>\r\n</ul>', '/twinsrobo/image/image-banner-lomba/pamflet4.jpg', '2021-03-16', '2022-02-08', 1, 1, 1, 0, 0, 756, 234, '2021-03-23', '2021-03-23'),
(5, 'Ajang Lomba Anak Islami', 'Pengadaan Ajang Lomba Islami berhadiah jutaan rupiah. Ayo daftarkan diri anda segera sebelum kuota peserta habis.<br>\r\n<ul>\r\n<li>Total hadiah Rp. 10.000.000</li>\r\n<li>Piagam pemenang tandatangan Gubernur Jawa Timur.</li>\r\n</ul>', '/twinsrobo/image/image-banner-lomba/pamflet5.jpg', '2021-03-24', '2021-03-25', 0, 0, 1, 0, 1, 324, 233, '2021-03-18', '2021-03-18'),
(6, 'Lomba Temu Tegak Ke-XI', 'Pengadaan Lomba Temu Tegak Ke-XI berhadiah jutaan rupiah. Ayo daftarkan diri anda segera sebelum kuota peserta habis.<br>\r\n<ul>\r\n<li>Total hadiah Rp. 10.000.000</li>\r\n<li>Piagam pemenang tandatangan Gubernur Jawa Timur.</li>\r\n</ul>', '/twinsrobo/image/image-banner-lomba/pamflet6.jpg', '2021-03-28', '2021-03-28', 0, 0, 1, 1, 1, 654, 342, '2021-03-20', '2021-03-20'),
(7, 'Lomba Menggambar Dan Mewarnai', 'Pengadaan Lomba Menggambar Dan Mewarnai berhadiah jutaan rupiah. Ayo daftarkan diri anda segera sebelum kuota peserta habis.<br>\r\n<ul>\r\n<li>Total hadiah Rp. 10.000.000</li>\r\n<li>Piagam pemenang tandatangan Gubernur Jawa Timur.</li>\r\n</ul>', '/twinsrobo/image/image-banner-lomba/pamflet7.jpg', '2021-03-31', '2021-03-31', 0, 1, 1, 0, 1, 765, 486, '2021-03-25', '2021-03-26'),
(8, 'Lomba Video Jurnal Dan Short Movie', 'Pengadaan Lomba Video Jurnal Dan Short Movie berhadiah jutaan rupiah. Ayo daftarkan diri anda segera sebelum kuota peserta habis.<br>\r\n<ul>\r\n<li>Total hadiah Rp. 10.000.000</li>\r\n<li>Piagam pemenang tandatangan Gubernur Jawa Timur.</li>\r\n</ul>', '/twinsrobo/image/image-banner-lomba/pamflet8.jpg', '2021-01-14', '2021-03-29', 1, 0, 0, 0, 1, 444, 222, '2021-03-25', '2021-03-25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama_depan` varchar(30) NOT NULL,
  `nama_belakang` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `foto_profil` varchar(500) NOT NULL DEFAULT '/twinsrobo/image/image-user/default/none.jpg',
  `vip_limit` date NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'general',
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `username`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `tanggal_lahir`, `nama_sekolah`, `foto_profil`, `vip_limit`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'muhamad.fikri251114@gmail.com', 'ce442221391d3b0d2fa4b0d5131e83e8', 'dhony88', 'Muhamad Fikri', 'Rizki Romadhoni', 'Male', '2000-12-08', 'SMK Negeri 2 Adiwerna', '5', '0001-01-01', 'general', '2021-03-15', '2021-11-16'),
(52, 'indry.tkj1@gmail.com', '97a958bdac56570684fb24f3eb31670b', 'indry25', 'Indry', 'Puji Lestari', 'Female', '2000-01-20', 'SMK Darussalam', '/twinsrobo/image/image-user/img52.jpeg', '0001-01-01', 'general', '2021-03-17', '2021-05-19'),
(53, 'safira@gmail.com', 'b04284069ddd397ed8298738d3005532', 'safiraana', 'Safira', 'Ana', 'Female', '1998-04-09', 'UNIWARA', '/twinsrobo/image/image-user/img53.jpeg', '2121-12-08', 'general', '2021-03-17', '2021-04-08'),
(54, 'uswa@gmail.com', '9a1e6fa11389a6221c24b5c09fa91534', 'uswa', 'Uswa', 'Almira', 'Female', '2001-12-08', 'SMA Jambi', '/twinsrobo/image/image-user/default/none.png', '0001-01-01', 'general', '2021-03-17', '2021-03-17'),
(55, 'asih@gmail.com', '037e263b930b63976b66f302380897b0', 'artiasih', 'Arti', 'Asih', 'Female', '2000-03-17', 'SMK NU Slawi', '4', '0001-01-01', 'general', '2021-03-17', '2021-03-17'),
(59, 'safira.ana04@gmail.com', '38b84cee09cf1923475786540407cab1', 'safiraanacantik', 'Safira', 'Two', 'Female', '1998-04-08', 'Pondok', '5', '2121-12-08', 'general', '2021-03-21', '2021-03-21'),
(61, 'dummy.1@gmail.com', '851fdee206c1eec10cee5ec8e8962af2', 'dummy', 'Dummy', 'One', 'Male', '2018-02-06', 'SMK N Dummy 10', '/twinsrobo/image/image-user/img61.jpeg', '2121-12-08', 'general', '2021-03-22', '2021-03-30'),
(62, 'dummy.2@gmail.com', '851fdee206c1eec10cee5ec8e8962af2', 'dummy2', 'Dummy', 'Two', 'Male', '1975-03-10', 'SMK N Dummy 2', '/twinsrobo/image/image-user/img62.jpeg', '0001-01-01', 'general', '2021-03-25', '2021-03-25'),
(63, 'dummy.3@gmail.com', '851fdee206c1eec10cee5ec8e8962af2', 'dummythree', 'Dummy', 'Three', 'Male', '2019-03-04', 'SMK N Dummy 3', '/twinsrobo/image/image-user/img63.jpeg', '0001-01-01', 'general', '2021-03-26', '2021-03-26'),
(64, 'safira.dhony@gmail.com', 'c4b7fe14745d3d1ef8aefee0e3477851', 'safiradhony', 'Safira', 'Three', 'Female', '2002-04-09', 'Al-Fatimiyah', '/twinsrobo/image/image-user/img64.jpeg', '2121-12-08', 'general', '2021-04-03', '2021-04-03'),
(65, 'coba10@gmail.com', '202cb962ac59075b964b07152d234b70', 'coba10', 'coba', 'sepuluh', 'Female', '2017-04-05', 'smk coba', '5', '0001-01-01', 'general', '2021-04-06', '2021-04-06'),
(66, 'coba11@gmail.com', '3ef3699d13dcb525f7dc10cae32eb7b7', 'coba11', 'Coba', 'Sebelas', 'Male', '2016-02-09', 'SMK N 11 Coba', '14', '0001-01-01', 'general', '2021-04-08', '2021-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_info_lomba`
--

CREATE TABLE `wishlist_info_lomba` (
  `id_wishlist` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `id_info_lomba` bigint(20) NOT NULL,
  `added_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist_info_lomba`
--

INSERT INTO `wishlist_info_lomba` (`id_wishlist`, `id_user`, `id_info_lomba`, `added_on`) VALUES
(53, 52, 7, '2021-05-19'),
(64, 1, 7, '2021-10-31'),
(65, 1, 4, '2021-10-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info_lomba`
--
ALTER TABLE `info_lomba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist_info_lomba`
--
ALTER TABLE `wishlist_info_lomba`
  ADD PRIMARY KEY (`id_wishlist`),
  ADD KEY `id_user` (`id_user`,`id_info_lomba`),
  ADD KEY `menyukai` (`id_info_lomba`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info_lomba`
--
ALTER TABLE `info_lomba`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `wishlist_info_lomba`
--
ALTER TABLE `wishlist_info_lomba`
  MODIFY `id_wishlist` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wishlist_info_lomba`
--
ALTER TABLE `wishlist_info_lomba`
  ADD CONSTRAINT `disukai` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menyukai` FOREIGN KEY (`id_info_lomba`) REFERENCES `info_lomba` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
