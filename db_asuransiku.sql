-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2020 at 12:47 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_asuransiku`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` int(10) UNSIGNED NOT NULL,
  `jenis_asuransi` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `jenis_asuransi`, `created_at`, `updated_at`) VALUES
(1, 'Seumur hidup', '2020-07-05 22:20:19', '2020-07-05 22:20:19'),
(2, 'Berjangka', '2020-07-05 22:20:28', '2020-07-05 22:20:28'),
(3, 'Dwiguna', '2020-07-08 07:17:46', '2020-07-08 07:17:46'),
(4, 'Unit Link', '2020-07-08 07:18:06', '2020-07-08 07:18:06'),
(5, 'Coba', '2020-07-08 22:52:40', '2020-07-08 22:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_06_28_184119_create_table_nasabah', 1),
(4, '2020_06_28_191141_create_table_telepon', 1),
(5, '2020_06_28_192649_create_table_jenis', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nasabah`
--

CREATE TABLE `nasabah` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_nasabah` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `nama_nasabah` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Menikah','Belum Menikah') COLLATE utf8_unicode_ci NOT NULL,
  `pekerjaan` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `penghasilan` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `id_jenis` int(10) UNSIGNED NOT NULL,
  `foto` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nasabah`
--

INSERT INTO `nasabah` (`id`, `id_nasabah`, `nama_nasabah`, `tanggal_lahir`, `jenis_kelamin`, `status`, `pekerjaan`, `penghasilan`, `id_jenis`, `foto`, `created_at`, `updated_at`) VALUES
(1, '001021', 'Marni', '1988-12-20', 'P', 'Belum Menikah', 'PNS', '15.000.000', 2, '20200708183509.jpg', '2020-07-05 22:23:03', '2020-07-08 11:35:09'),
(2, '001022', 'Nurul', '1989-03-19', 'P', 'Menikah', 'Wirausaha', '27.000.000', 4, '20200708183537.jpg', '2020-07-07 09:39:30', '2020-07-08 11:35:37'),
(3, '001023', 'Ridwan', '1994-02-19', 'L', 'Belum Menikah', 'Polisi', '10.000.000', 2, '20200708183702.jpg', '2020-07-07 11:16:59', '2020-07-08 11:37:02'),
(4, '001024', 'Bagas', '1992-11-29', 'L', 'Belum Menikah', 'Guru', '4.500.000', 2, '20200708183752.jpeg', '2020-07-07 11:29:28', '2020-07-08 11:37:52'),
(5, '001025', 'Rafly', '1992-04-20', 'L', 'Belum Menikah', 'Petani', '26.000.000', 1, '20200708183617.jpg', '2020-07-07 11:35:04', '2020-07-08 11:36:17'),
(7, '001027', 'Fani', '1991-02-16', 'P', 'Menikah', 'Dosen', '12.000.000', 3, '20200708183940.jpg', '2020-07-08 11:39:40', '2020-07-08 11:39:40'),
(8, '001028', 'Siska', '1989-08-23', 'P', 'Belum Menikah', 'Arsitek', '25.000.000', 2, '20200708184043.jpg', '2020-07-08 11:40:43', '2020-07-08 11:40:43'),
(9, '001029', 'Rahmat', '1993-08-15', 'L', 'Menikah', 'Pilot', '60.000.000', 1, '20200708184154.jpg', '2020-07-08 11:41:54', '2020-07-08 11:41:54'),
(10, '001030', 'Abdul', '1989-12-02', 'L', 'Menikah', 'Programmer', '12.000.000', 2, '20200708184319.jpg', '2020-07-08 11:43:19', '2020-07-08 12:46:32'),
(11, '001026', 'Malik', '1980-11-10', 'L', 'Belum Menikah', 'Polisi', '10.000.000', 2, '20200709053526.jpg', '2020-07-08 22:35:26', '2020-07-08 22:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telepon`
--

CREATE TABLE `telepon` (
  `id_nasabah` int(10) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `telepon`
--

INSERT INTO `telepon` (`id_nasabah`, `nomor_telepon`, `created_at`, `updated_at`) VALUES
(1, '086562536253', '2020-07-05 22:23:03', '2020-07-05 22:23:03'),
(2, '085287263527', '2020-07-07 09:39:31', '2020-07-07 09:39:31'),
(3, '085682727262', '2020-07-07 11:16:59', '2020-07-07 11:16:59'),
(4, '086765765434', '2020-07-07 11:29:28', '2020-07-07 11:29:28'),
(5, '089828383827', '2020-07-07 11:35:04', '2020-07-07 11:35:04'),
(7, '089828374635', '2020-07-08 11:39:40', '2020-07-08 11:39:40'),
(8, '087836352635', '2020-07-08 11:40:43', '2020-07-08 11:40:43'),
(9, '089872635243', '2020-07-08 11:41:54', '2020-07-08 11:41:54'),
(10, '087627362513', '2020-07-08 11:43:19', '2020-07-08 11:43:19'),
(11, '085262533528', '2020-07-08 22:35:26', '2020-07-08 22:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` enum('admin','operator') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `level`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'admin@gmail.com', NULL, '$2y$10$PGMp30xPyY5VcNTOr0USRuMZu0XbpMbJOYGus9VBBQD/WFz/zKPgC', 'Va7s0TGa8S7SYVrXr6ORCyTofTj0Lbi3Ij1TefdJvjAARZKzccVgvYY8f1ZG', 'admin', '2020-07-07 09:04:20', '2020-07-07 09:04:20'),
(5, 'fitrah', 'fitrah@gmail.com', NULL, '$2y$10$HL9EWirMlBw/7UTlHXBv5uSfq1VOYO8GuC6L5aoXio1coLR.xqq1O', NULL, 'admin', '2020-07-08 11:51:07', '2020-07-08 11:51:07'),
(7, 'alghiffari', 'alghiffari@gmail.com', NULL, '$2y$10$RsMr.557IFePjxgl2rzEH.sqIX2s5lTF8I0ZjThgo4tz25dq9JE3y', NULL, 'admin', '2020-07-30 02:55:47', '2020-07-30 02:55:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nasabah_id_nasabah_unique` (`id_nasabah`),
  ADD KEY `nasabah_id_jenis_foreign` (`id_jenis`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `telepon`
--
ALTER TABLE `telepon`
  ADD PRIMARY KEY (`id_nasabah`),
  ADD UNIQUE KEY `telepon_nomor_telepon_unique` (`nomor_telepon`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nasabah`
--
ALTER TABLE `nasabah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD CONSTRAINT `nasabah_id_jenis_foreign` FOREIGN KEY (`id_jenis`) REFERENCES `jenis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `telepon`
--
ALTER TABLE `telepon`
  ADD CONSTRAINT `telepon_id_nasabah_foreign` FOREIGN KEY (`id_nasabah`) REFERENCES `nasabah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
