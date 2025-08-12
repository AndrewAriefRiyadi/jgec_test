-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2025 at 12:09 PM
-- Server version: 5.7.33
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jgec`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `nama_certif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certifications`
--

INSERT INTO `certifications` (`id`, `created_at`, `updated_at`, `student_id`, `nama_certif`, `tahun`, `bulan`) VALUES
(1, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 1, 'optio Certification', 1984, 'October'),
(5, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 4, 'aliquid Certification', 2001, 'December'),
(6, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 5, 'rerum Certification', 1985, 'November'),
(7, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 6, 'et Certification', 1988, 'October'),
(8, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 6, 'dicta Certification', 2002, 'September'),
(9, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 7, 'cumque Certification', 1975, 'February'),
(10, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 8, 'delectus Certification', 1973, 'April'),
(11, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 9, 'dicta Certification', 1984, 'April'),
(14, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 11, 'similique Certification', 1976, 'April'),
(15, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 12, 'in Certification', 1987, 'October'),
(16, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 12, 'nihil Certification', 1971, 'February'),
(19, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 14, 'vel Certification', 1991, 'February'),
(20, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 14, 'hic Certification', 2022, 'June'),
(21, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 15, 'et Certification', 2011, 'December'),
(22, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 15, 'itaque Certification', 2019, 'May'),
(23, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 16, 'ullam Certification', 1978, 'July'),
(24, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 17, 'in Certification', 1976, 'February'),
(25, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 18, 'id Certification', 2002, 'December'),
(26, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 18, 'molestiae Certification', 2003, 'January'),
(27, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 19, 'sed Certification', 1970, 'October'),
(28, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 19, 'voluptatum Certification', 2009, 'March'),
(29, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 20, 'vel Certification', 2004, 'November'),
(30, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 20, 'mollitia Certification', 1979, 'July'),
(31, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 21, 'dolorem Certification', 1991, 'December'),
(32, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 22, 'esse Certification', 1997, 'July'),
(33, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 22, 'distinctio Certification', 1970, 'September'),
(34, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 23, 'at Certification', 1997, 'November'),
(35, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 24, 'et Certification', 1987, 'October'),
(36, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 25, 'quisquam Certification', 1991, 'October'),
(37, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 26, 'molestias Certification', 2011, 'January'),
(38, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 26, 'fuga Certification', 1985, 'February'),
(39, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 27, 'illo Certification', 1986, 'March'),
(40, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 27, 'animi Certification', 1989, 'May'),
(41, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 28, 'aspernatur Certification', 2008, 'October'),
(42, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 29, 'dolor Certification', 2022, 'April'),
(43, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 30, 'laborum Certification', 1973, 'June'),
(44, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 31, 'esse Certification', 1982, 'May'),
(45, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 32, 'iure Certification', 1983, 'April'),
(46, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 33, 'enim Certification', 1971, 'August'),
(47, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 33, 'molestiae Certification', 1988, 'June'),
(48, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 34, 'natus Certification', 2013, 'June'),
(49, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 35, 'incidunt Certification', 2017, 'December'),
(50, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 36, 'cum Certification', 2000, 'July'),
(51, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 36, 'ut Certification', 1998, 'September'),
(52, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 37, 'sint Certification', 2023, 'June'),
(53, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 38, 'provident Certification', 1987, 'July'),
(54, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 39, 'quia Certification', 1994, 'April'),
(55, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 39, 'et Certification', 2012, 'May'),
(56, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 40, 'nulla Certification', 1986, 'October'),
(57, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 40, 'ea Certification', 1986, 'May'),
(58, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 41, 'neque Certification', 1985, 'December'),
(59, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 42, 'doloremque Certification', 2000, 'June'),
(60, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 43, 'recusandae Certification', 1982, 'May'),
(61, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 44, 'maxime Certification', 1980, 'April'),
(62, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 45, 'ab Certification', 1986, 'May'),
(63, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 45, 'consequuntur Certification', 2023, 'January'),
(64, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 46, 'veniam Certification', 2004, 'April'),
(65, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 47, 'omnis Certification', 2013, 'May'),
(66, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 47, 'laborum Certification', 2021, 'October'),
(67, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 48, 'amet Certification', 1971, 'May'),
(68, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 49, 'nam Certification', 1994, 'February'),
(69, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 49, 'fugiat Certification', 2020, 'September'),
(70, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 50, 'nostrum Certification', 1977, 'February'),
(71, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 50, 'corrupti Certification', 1980, 'May'),
(73, '2025-08-11 11:50:19', '2025-08-11 11:50:19', 53, 'SERTIFIKAT ABC', 2024, 'Juni'),
(76, '2025-08-11 11:51:15', '2025-08-11 11:51:15', 53, 'Sertifikat EFG', 2024, 'November'),
(77, '2025-08-11 12:07:04', '2025-08-11 12:07:04', 53, 'Sertifikasi HIJ', 2025, 'Januari'),
(78, '2025-08-11 23:40:25', '2025-08-11 23:40:25', 55, 'Sertifikasi ABC', 2025, 'Januari');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_masukperusahaan` int(11) NOT NULL,
  `bulan_masukperusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `created_at`, `updated_at`, `student_id`, `nama_perusahaan`, `tahun_masukperusahaan`, `bulan_masukperusahaan`, `status`) VALUES
(1, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 1, 'Mills Ltd', 2003, 'August', 'Masuk'),
(2, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 1, 'Beer-Corkery', 2010, 'January', 'Resign'),
(7, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 4, 'Hintz PLC', 1995, 'January', 'Masuk'),
(8, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 5, 'Prohaska Inc', 1988, 'July', 'Resign'),
(9, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 5, 'Walsh LLC', 1983, 'May', 'Masuk'),
(10, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 6, 'Hill-Jerde', 1989, 'April', 'Masuk'),
(11, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 7, 'Kihn-Balistreri', 1971, 'October', 'Resign'),
(12, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 7, 'Johnston Ltd', 1976, 'January', 'Resign'),
(13, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 8, 'Roob-Jaskolski', 2010, 'December', 'Masuk'),
(14, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 8, 'Pagac Inc', 2022, 'August', 'Masuk'),
(15, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 9, 'Witting-Schaefer', 1984, 'November', 'Resign'),
(16, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 9, 'Berge, Wisozk and Thiel', 2009, 'March', 'Masuk'),
(18, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 11, 'Sauer-Willms', 1985, 'August', 'Resign'),
(19, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 11, 'Mante-Gislason', 2003, 'May', 'Resign'),
(20, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 12, 'Altenwerth-Olson', 1977, 'October', 'Resign'),
(23, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 14, 'Emard LLC', 2006, 'December', 'Masuk'),
(24, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 14, 'Bauch, O\'Kon and Rohan', 1995, 'November', 'Masuk'),
(25, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 15, 'Larkin PLC', 1975, 'July', 'Masuk'),
(26, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 15, 'Baumbach Group', 1988, 'April', 'Masuk'),
(27, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 16, 'Gusikowski-Herman', 1980, 'November', 'Masuk'),
(28, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 17, 'West-Nolan', 1988, 'April', 'Resign'),
(29, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 17, 'Reichel Group', 1990, 'July', 'Masuk'),
(30, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 18, 'Marks Inc', 2000, 'January', 'Masuk'),
(31, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 19, 'Schumm-Huels', 1985, 'January', 'Masuk'),
(32, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 20, 'Hane Ltd', 1999, 'June', 'Resign'),
(33, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 20, 'Lang-Kovacek', 2017, 'July', 'Masuk'),
(34, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 21, 'Strosin-Tillman', 2001, 'May', 'Masuk'),
(35, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 21, 'Gerlach-Fahey', 2016, 'June', 'Resign'),
(36, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 22, 'Osinski-Veum', 2020, 'May', 'Masuk'),
(37, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 22, 'Watsica and Sons', 1979, 'January', 'Resign'),
(38, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 23, 'Brakus Group', 2020, 'September', 'Masuk'),
(39, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 24, 'Schumm-Becker', 1993, 'July', 'Masuk'),
(40, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 25, 'Douglas LLC', 2024, 'July', 'Masuk'),
(41, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 26, 'Carter and Sons', 1985, 'September', 'Resign'),
(42, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 26, 'Turcotte, D\'Amore and Orn', 1971, 'May', 'Masuk'),
(43, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 27, 'Cole, Nitzsche and Rau', 2003, 'August', 'Masuk'),
(44, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 28, 'Auer, Greenfelder and Senger', 2022, 'September', 'Masuk'),
(45, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 28, 'Tillman-Von', 1990, 'June', 'Masuk'),
(46, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 29, 'Walter-Koepp', 1985, 'January', 'Masuk'),
(47, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 30, 'Russel-Trantow', 2002, 'September', 'Masuk'),
(48, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 31, 'Beatty-Hintz', 1980, 'October', 'Resign'),
(49, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 32, 'Dibbert-Leffler', 2019, 'January', 'Masuk'),
(50, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 32, 'Pacocha LLC', 2018, 'October', 'Masuk'),
(51, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 33, 'Nicolas-Padberg', 2017, 'April', 'Masuk'),
(52, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 34, 'Cartwright-Swaniawski', 2001, 'May', 'Masuk'),
(53, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 35, 'Hegmann-Stroman', 1977, 'January', 'Resign'),
(54, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 35, 'Nicolas PLC', 1974, 'August', 'Masuk'),
(55, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 36, 'Wehner LLC', 2020, 'June', 'Resign'),
(56, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 36, 'Pacocha and Sons', 2009, 'January', 'Resign'),
(57, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 37, 'Bernhard, Stokes and Dietrich', 1973, 'January', 'Masuk'),
(58, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 37, 'Ankunding LLC', 2001, 'July', 'Masuk'),
(59, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 38, 'Lind-Prosacco', 1974, 'December', 'Masuk'),
(60, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 38, 'Schneider PLC', 2001, 'June', 'Masuk'),
(61, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 39, 'Satterfield-Wisoky', 1992, 'April', 'Resign'),
(62, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 40, 'Pfannerstill Inc', 2014, 'February', 'Resign'),
(63, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 41, 'Abbott Group', 1999, 'July', 'Resign'),
(64, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 41, 'Bernhard-Harris', 1979, 'March', 'Masuk'),
(65, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 42, 'Waters and Sons', 2003, 'June', 'Masuk'),
(66, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 42, 'Balistreri, Douglas and Fritsch', 2005, 'July', 'Masuk'),
(67, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 43, 'Pfeffer Group', 1981, 'January', 'Masuk'),
(68, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 43, 'Kling-O\'Hara', 2020, 'February', 'Resign'),
(69, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 44, 'Glover, Senger and Wiegand', 1999, 'October', 'Masuk'),
(70, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 44, 'Lind, Erdman and Powlowski', 2011, 'December', 'Masuk'),
(71, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 45, 'Nader, Grady and Jones', 2016, 'September', 'Masuk'),
(72, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 46, 'Erdman PLC', 2005, 'November', 'Masuk'),
(73, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 47, 'Smith-Feest', 1986, 'December', 'Resign'),
(74, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 47, 'Bartoletti Ltd', 2001, 'April', 'Masuk'),
(75, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 48, 'Wiegand, Gleichner and Moen', 2003, 'May', 'Resign'),
(76, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 48, 'Sanford-West', 1976, 'August', 'Resign'),
(77, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 49, 'Crist Ltd', 1988, 'February', 'Masuk'),
(78, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 50, 'Stamm Ltd', 1989, 'July', 'Resign'),
(79, '2025-08-11 11:37:22', '2025-08-11 11:37:22', 53, 'PT Maju Jaya', 2025, 'Januari', 'Masuk'),
(80, '2025-08-11 11:37:57', '2025-08-11 11:37:57', 53, 'PT Maju Jaya', 2025, 'November', 'Berhenti'),
(81, '2025-08-11 23:39:47', '2025-08-11 23:39:47', 55, 'Universitas Balikpapan', 2024, 'Juli', 'Masuk'),
(82, '2025-08-11 23:39:58', '2025-08-11 23:39:58', 55, 'Universitas Balikpapan', 2024, 'Desember', 'Berhenti');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_11_120538_create_students_table', 1),
(5, '2025_08_11_121343_create_schools_table', 1),
(6, '2025_08_11_121619_create_companies_table', 1),
(7, '2025_08_11_121747_create_certifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `nama_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_masuksekolah` int(11) NOT NULL,
  `bulan_masuksekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `created_at`, `updated_at`, `student_id`, `nama_sekolah`, `tahun_masuksekolah`, `bulan_masuksekolah`, `status_sekolah`) VALUES
(1, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 1, 'Wisoky LLC School', 2004, 'September', 'Masuk'),
(2, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 1, 'Kemmer-Will School', 2012, 'May', 'Lulus'),
(6, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 4, 'Gottlieb-Witting School', 1984, 'November', 'Masuk'),
(7, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 4, 'Medhurst LLC School', 2004, 'August', 'Lulus'),
(8, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 5, 'Bashirian, Torphy and Pfannerstill School', 1990, 'July', 'Lulus'),
(9, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 6, 'Welch LLC School', 2006, 'February', 'Masuk'),
(10, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 7, 'Bashirian, Weissnat and Lowe School', 2021, 'November', 'Masuk'),
(11, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 8, 'Brekke Inc School', 1989, 'August', 'Lulus'),
(12, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 8, 'Rogahn Inc School', 2017, 'April', 'Masuk'),
(13, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 9, 'Schamberger-Schaden School', 1991, 'March', 'Masuk'),
(14, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 9, 'Ullrich-Schinner School', 1981, 'November', 'Lulus'),
(16, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 11, 'Wilderman, Bode and Donnelly School', 2018, 'December', 'Masuk'),
(17, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 12, 'Yost, Rolfson and Schmeler School', 2007, 'January', 'Masuk'),
(18, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 12, 'Ward Group School', 1998, 'November', 'Masuk'),
(20, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 14, 'Breitenberg-Fay School', 2007, 'February', 'Lulus'),
(21, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 15, 'Dibbert LLC School', 2005, 'December', 'Lulus'),
(22, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 15, 'Dickens Inc School', 1998, 'February', 'Masuk'),
(23, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 16, 'Strosin-Steuber School', 1990, 'May', 'Lulus'),
(24, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 16, 'Kihn-D\'Amore School', 1981, 'February', 'Masuk'),
(25, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 17, 'Murray Group School', 1973, 'October', 'Lulus'),
(26, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 17, 'Reilly, Kuphal and Larkin School', 1972, 'January', 'Lulus'),
(27, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 18, 'Smith-Waters School', 1994, 'September', 'Masuk'),
(28, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 18, 'Sauer, Morar and Bogisich School', 2013, 'June', 'Masuk'),
(29, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 19, 'Hickle, Buckridge and Hartmann School', 2012, 'November', 'Lulus'),
(30, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 19, 'O\'Reilly Ltd School', 1993, 'March', 'Masuk'),
(31, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 20, 'Romaguera-Kreiger School', 2010, 'November', 'Masuk'),
(32, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 20, 'Bode, Oberbrunner and Dicki School', 1978, 'November', 'Lulus'),
(33, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 21, 'Yundt, Hills and Schaefer School', 1990, 'November', 'Lulus'),
(34, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 22, 'Stiedemann-Sawayn School', 2009, 'June', 'Masuk'),
(35, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 22, 'Hayes-Hahn School', 1996, 'April', 'Masuk'),
(36, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 23, 'Fisher-O\'Conner School', 1985, 'November', 'Lulus'),
(37, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 24, 'Bins Group School', 1970, 'May', 'Masuk'),
(38, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 24, 'Feest Inc School', 1979, 'July', 'Lulus'),
(39, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 25, 'Buckridge, Hartmann and Hermann School', 2019, 'April', 'Lulus'),
(40, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 25, 'Hoeger-Crist School', 1976, 'October', 'Lulus'),
(41, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 26, 'Batz-Daugherty School', 2009, 'January', 'Masuk'),
(42, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 27, 'Jenkins-Smith School', 2007, 'March', 'Masuk'),
(43, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 28, 'Rosenbaum, Watsica and Hand School', 1971, 'January', 'Lulus'),
(44, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 28, 'Cassin-Braun School', 2000, 'May', 'Masuk'),
(45, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 29, 'Fadel and Sons School', 2022, 'November', 'Masuk'),
(46, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 29, 'Reinger, Shields and Eichmann School', 2016, 'October', 'Lulus'),
(47, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 30, 'Schmitt, Cormier and Hamill School', 1982, 'July', 'Masuk'),
(48, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 30, 'Hartmann, Schiller and Murray School', 1976, 'July', 'Masuk'),
(49, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 31, 'Keeling Inc School', 2017, 'April', 'Lulus'),
(50, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 32, 'Klein PLC School', 1997, 'March', 'Masuk'),
(51, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 33, 'Dooley, White and Auer School', 1973, 'December', 'Lulus'),
(52, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 33, 'Mills, Kuhic and Runte School', 1988, 'November', 'Masuk'),
(53, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 34, 'Huel Inc School', 1993, 'February', 'Lulus'),
(54, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 34, 'Romaguera-Fisher School', 2023, 'February', 'Masuk'),
(55, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 35, 'Nicolas, Kub and Green School', 1981, 'April', 'Masuk'),
(56, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 36, 'Olson, Tillman and Abernathy School', 2002, 'December', 'Lulus'),
(57, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 36, 'Johnston, Morissette and Rodriguez School', 2025, 'June', 'Masuk'),
(58, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 37, 'Grady-Von School', 1975, 'March', 'Masuk'),
(59, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 38, 'Skiles, Johnston and Pollich School', 2021, 'December', 'Masuk'),
(60, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 39, 'Hill, Funk and Anderson School', 1998, 'December', 'Lulus'),
(61, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 39, 'Witting LLC School', 1982, 'January', 'Masuk'),
(62, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 40, 'Crist-Rippin School', 2023, 'September', 'Masuk'),
(63, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 41, 'Langosh, Flatley and Zieme School', 2007, 'July', 'Masuk'),
(64, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 42, 'Kohler-Rice School', 2021, 'October', 'Lulus'),
(65, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 42, 'Koelpin LLC School', 1999, 'June', 'Masuk'),
(66, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 43, 'Kovacek-O\'Connell School', 2011, 'August', 'Lulus'),
(67, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 44, 'Greenholt Ltd School', 1995, 'August', 'Lulus'),
(68, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 44, 'Bartoletti, Kertzmann and Hegmann School', 1998, 'February', 'Masuk'),
(69, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 45, 'Schoen-Russel School', 2006, 'May', 'Masuk'),
(70, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 46, 'Ankunding LLC School', 2008, 'August', 'Lulus'),
(71, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 47, 'Pollich, Nolan and Cruickshank School', 1987, 'November', 'Masuk'),
(72, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 48, 'Bosco, Jones and Kutch School', 1980, 'August', 'Masuk'),
(73, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 48, 'O\'Keefe Group School', 2024, 'October', 'Lulus'),
(74, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 49, 'Ferry-Schiller School', 1999, 'June', 'Masuk'),
(75, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 50, 'Krajcik, Collier and O\'Kon School', 2018, 'October', 'Masuk'),
(76, '2025-08-11 06:27:50', '2025-08-11 06:27:50', 50, 'DuBuque-Douglas School', 2025, 'May', 'Masuk'),
(77, '2025-08-11 11:01:50', '2025-08-11 11:01:50', 53, 'SMK Negeri Jakarta 1', 2019, 'Januari', 'Masuk'),
(79, '2025-08-11 11:08:07', '2025-08-11 11:08:07', 53, 'SMK Negeri Jakarta 1', 2020, 'Oktober', 'Lulus'),
(80, '2025-08-11 11:18:28', '2025-08-11 11:18:28', 53, 'Universitas Indonesia', 2021, 'Juni', 'Masuk'),
(82, '2025-08-11 11:18:54', '2025-08-11 11:18:54', 53, 'Universitas Indonesia', 2025, 'Agustus', 'Lulus'),
(83, '2025-08-11 12:17:14', '2025-08-11 12:17:14', 14, 'Universitas Indonesia', 2025, 'Januari', 'Masuk'),
(84, '2025-08-11 23:37:57', '2025-08-11 23:37:57', 55, 'SMKN 1 Bontang', 2018, 'April', 'Masuk'),
(85, '2025-08-11 23:38:19', '2025-08-11 23:38:19', 55, 'SMKN 1 Bontang', 2021, 'September', 'Lulus');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('YCYV0Wnomav1Kf5xkGVq2MXituPpcRa584SEbGVt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:141.0) Gecko/20100101 Firefox/141.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWRlVFZWU0FRelpaOGk5ME1pRXJoeFROdWJ0UDFIQ1ZhOHFEMGcxTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50L2N2LzU1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1754985233);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nikah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `umur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kewarganegaraan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bahasa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domisili` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinggi_badan` int(11) DEFAULT NULL,
  `berat_badan` int(11) DEFAULT NULL,
  `ukuran_sepatu` int(11) DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelebihan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kekurangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promosi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinggal_jp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan_tinggal_jp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `created_at`, `updated_at`, `nis`, `nama`, `gender`, `nikah`, `tanggal_lahir`, `umur`, `kewarganegaraan`, `bahasa`, `domisili`, `nomor`, `email`, `tinggi_badan`, `berat_badan`, `ukuran_sepatu`, `agama`, `kelebihan`, `kekurangan`, `promosi`, `tinggal_jp`, `keterangan_tinggal_jp`) VALUES
(1, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '500888', 'Jaime Keebler', 'Perempuan', 'Menikah', '1976-02-20', '29', 'United States Minor Outlying Islands', 'Inggris', 'Beerbury', '0886944522', 'ullrich.miguel@example.com', 159, 57, 44, 'Hindu', 'Explicabo eaque occaecati dicta possimus iste.', 'Est autem aspernatur recusandae unde.', 'Id tempore dolores repellat incidunt.', 'Ya', 'Dicta vel et aut perspiciatis quasi possimus voluptates modi.'),
(4, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '262050', 'Miss Julianne Lebsack', 'Perempuan', 'Menikah', '1996-07-11', '17', 'Saint Helena', 'Jepang', 'West Bufordland', '0846568011', 'trantow.abe@example.com', 159, 75, 38, 'Hindu', 'Consequatur voluptatem quis eius exercitationem qui suscipit distinctio et.', 'Fugit reprehenderit fuga adipisci officiis.', 'Commodi rem nulla sint reprehenderit.', 'Ya', 'Quae aut velit et dignissimos et et necessitatibus.'),
(5, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '047759', 'Ansel Leannon', 'Laki-laki', 'Belum Menikah', '1997-11-24', '25', 'Nauru', 'Indonesia', 'North Chaimfort', '0817020018', 'uwilderman@example.com', 173, 56, 44, 'Hindu', 'Itaque sit numquam sed voluptate velit atque accusamus.', 'Suscipit et non ut aut.', 'Praesentium iusto odio quod accusamus iste.', 'Ya', 'Totam minus ut unde occaecati.'),
(6, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '320526', 'Titus Mills', 'Perempuan', 'Menikah', '2013-03-09', '20', 'Ghana', 'Indonesia', 'North Charleschester', '0839665936', 'omaggio@example.org', 156, 47, 45, 'Kristen', 'Quasi rerum dolor consequatur commodi omnis.', 'Laudantium voluptatum ipsam consequuntur iure sequi.', 'Ea et dolore mollitia temporibus excepturi esse commodi quia.', 'Tidak', 'Et eligendi eum voluptatem et commodi.'),
(7, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '631777', 'Mortimer Kemmer', 'Laki-laki', 'Belum Menikah', '2007-02-21', '23', 'Hong Kong', 'Inggris', 'Chelseaport', '0885539310', 'imurazik@example.com', 182, 71, 41, 'Hindu', 'Laboriosam eum numquam qui explicabo qui accusantium.', 'Autem officia voluptatem in nihil accusamus et corporis doloremque.', 'Reprehenderit occaecati ea rerum soluta.', 'Tidak', 'Sunt quis dolorem itaque beatae et ea molestiae.'),
(8, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '859969', 'Deangelo McClure I', 'Laki-laki', 'Belum Menikah', '1970-07-01', '17', 'Singapore', 'Jepang', 'Arturoburgh', '0888110654', 'nkreiger@example.org', 159, 71, 40, 'Hindu', 'Est perferendis rerum sed ut neque quas nostrum eum.', 'Soluta sit nam dolorem.', 'Dolorem labore pariatur aut sed eos ut sunt fuga.', 'Tidak', 'Incidunt dolores nisi est incidunt earum ullam.'),
(9, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '873111', 'Odell Green', 'Perempuan', 'Menikah', '2003-11-12', '18', 'Palestinian Territories', 'Jepang', 'Greenton', '0847075771', 'wiza.sandy@example.net', 167, 66, 39, 'Islam', 'Et id et qui aut qui.', 'Libero quis minima qui eaque nesciunt.', 'Nisi hic molestiae sit iusto ipsum.', 'Tidak', 'Et voluptas ex dolor nam consequatur nulla aliquid.'),
(11, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '583765', 'Virgie Welch', 'Laki-laki', 'Belum Menikah', '2021-08-06', '29', 'Bermuda', 'Jepang', 'Wiegandton', '0838597024', 'umurazik@example.com', 157, 76, 39, 'Hindu', 'Velit numquam dignissimos tempore dolores cumque error sint.', 'Veritatis quisquam repellendus aliquam quasi.', 'Consectetur aperiam deserunt dolorem iure est.', 'Ya', 'Iure aut placeat est voluptatem vero ut.'),
(12, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '929065', 'Ottis Zboncak', 'Perempuan', 'Belum Menikah', '2006-11-21', '23', 'Ghana', 'Jepang', 'East Mitchelltown', '0815199070', 'jluettgen@example.net', 190, 65, 42, 'Hindu', 'Sapiente voluptate praesentium labore voluptatum quisquam voluptatem delectus.', 'Et quisquam quia suscipit reprehenderit voluptate omnis doloremque repellat.', 'Atque deleniti velit rerum natus sequi.', 'Tidak', 'Ullam quaerat ducimus suscipit hic voluptatum.'),
(14, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '694047', 'Casimir Witting', 'Laki-laki', 'Menikah', '1999-08-16', '18', 'Luxembourg', 'Inggris', 'Conorview', '0851526831', 'rosalia.gorczany@example.org', 154, 47, 45, 'Hindu', 'Culpa id necessitatibus ut sit deserunt sed provident.', 'Blanditiis rerum officia animi tempora dolorem corporis distinctio.', 'Sunt non eius debitis distinctio itaque.', 'Tidak', 'Provident non eum quas ut maxime nisi.'),
(15, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '030363', 'Garland Bradtke', 'Perempuan', 'Belum Menikah', '2004-10-16', '17', 'Ethiopia', 'Indonesia', 'New Darleneland', '0819774002', 'nils.weber@example.com', 163, 80, 36, 'Budha', 'Laboriosam dicta vero maxime pariatur et nemo error.', 'Ut non ut illo qui non sunt quibusdam nihil.', 'Incidunt ut qui velit architecto rem adipisci eligendi.', 'Ya', 'Iste beatae sequi pariatur labore nihil explicabo.'),
(16, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '353641', 'Kurt Ortiz', 'Perempuan', 'Belum Menikah', '1987-09-22', '17', 'China', 'Indonesia', 'Friesenland', '0851337380', 'rwilkinson@example.com', 154, 73, 37, 'Budha', 'Quia earum voluptatibus eos voluptatem.', 'Consequuntur laboriosam et est dolores vero temporibus aut.', 'Numquam voluptatibus nesciunt minus aut et adipisci excepturi.', 'Ya', 'Nostrum perspiciatis quo voluptatem libero temporibus.'),
(17, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '390601', 'Maritza Muller', 'Laki-laki', 'Menikah', '1974-06-11', '23', 'Croatia', 'Inggris', 'South Jodieburgh', '0844171735', 'gregg.heller@example.net', 169, 61, 36, 'Islam', 'Et esse labore et eum sit sed inventore voluptates.', 'Quidem qui nesciunt ea suscipit est soluta.', 'Nesciunt corrupti dicta molestiae praesentium non facere et.', 'Tidak', 'Iure at quam nulla.'),
(18, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '419041', 'Shaun Legros', 'Perempuan', 'Belum Menikah', '1981-11-01', '18', 'Japan', 'Jepang', 'Lake Ciceroside', '0882826870', 'laury34@example.net', 173, 72, 41, 'Islam', 'Et et accusamus neque ut veniam quis odit.', 'Enim ratione et provident aspernatur illo ea.', 'Molestiae mollitia illo praesentium ipsa sapiente.', 'Ya', 'Illo nesciunt sed laudantium eum impedit magnam.'),
(19, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '253137', 'Prof. Heaven Dach', 'Perempuan', 'Belum Menikah', '1991-12-26', '26', 'Slovakia (Slovak Republic)', 'Jepang', 'Port Maudie', '0861914819', 'fadel.verona@example.org', 152, 57, 44, 'Islam', 'Quia corporis eos quos sit facere.', 'Rerum rerum ex ea.', 'Numquam vel cupiditate id natus possimus.', 'Tidak', 'Dolor cum qui porro praesentium.'),
(20, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '919693', 'Lou Fay', 'Laki-laki', 'Belum Menikah', '1978-06-16', '28', 'Antarctica (the territory South of 60 deg S)', 'Indonesia', 'Colechester', '0896189087', 'simonis.gilbert@example.com', 167, 66, 42, 'Kristen', 'Qui omnis possimus veniam praesentium.', 'Ut ea deleniti debitis animi ut odit.', 'Eum nam natus aliquam ut.', 'Tidak', 'Consequatur dolores veritatis praesentium itaque.'),
(21, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '137717', 'Einar Brekke', 'Laki-laki', 'Belum Menikah', '2011-11-11', '17', 'Congo', 'Inggris', 'West Eliezerburgh', '0801655069', 'ybrekke@example.com', 182, 78, 44, 'Hindu', 'Repellat itaque nam fuga minima ut.', 'Reprehenderit est voluptas odit est fugit qui est minus.', 'Temporibus quo eos qui minima.', 'Ya', 'Ex animi et tenetur et aut.'),
(22, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '819923', 'Hans Harris', 'Laki-laki', 'Belum Menikah', '2008-09-01', '27', 'Chad', 'Jepang', 'Lake Leslie', '0831110191', 'watsica.brent@example.net', 167, 85, 40, 'Kristen', 'Labore est quo aut tempore assumenda.', 'Non quibusdam et sit aliquam quis cupiditate illum ratione.', 'Velit nam laborum eveniet illo sint ea incidunt.', 'Ya', 'Quo provident et dicta mollitia.'),
(23, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '640764', 'Jarred Fay', 'Perempuan', 'Menikah', '1971-10-15', '23', 'Georgia', 'Indonesia', 'Constancemouth', '0837334364', 'umarquardt@example.com', 154, 71, 45, 'Islam', 'Ut vero enim aut qui repellat.', 'Illum consequatur placeat aut dolore enim nesciunt.', 'Et dolorum earum aut ut ad.', 'Tidak', 'Omnis autem impedit sunt esse laboriosam dignissimos dolor.'),
(24, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '976862', 'Charles Harvey PhD', 'Perempuan', 'Belum Menikah', '2022-04-28', '21', 'Bhutan', 'Jepang', 'North Darrin', '0837637230', 'wunsch.kali@example.org', 188, 56, 44, 'Budha', 'Harum laudantium deleniti nemo consequuntur quia voluptatem vero mollitia.', 'Nam vero aut magnam.', 'Et cupiditate magni ullam voluptas molestiae dignissimos.', 'Tidak', 'Non molestiae aperiam quam in voluptatem.'),
(25, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '939352', 'Reed Romaguera', 'Laki-laki', 'Belum Menikah', '1987-06-07', '18', 'Kyrgyz Republic', 'Jepang', 'Hendersonview', '0846142468', 'robel.carmelo@example.com', 158, 65, 39, 'Kristen', 'Explicabo dolores tenetur et laudantium.', 'Deleniti non cum unde nemo aut earum.', 'Voluptas doloribus iure neque repudiandae.', 'Ya', 'Consequatur nulla illum sed sit et sit.'),
(26, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '889963', 'Ryder Hammes', 'Laki-laki', 'Belum Menikah', '2007-04-22', '22', 'Malawi', 'Inggris', 'Port Naomi', '0861847948', 'jamarcus83@example.org', 189, 59, 45, 'Kristen', 'Eos excepturi et sit aut.', 'Accusamus itaque id provident consequatur provident consectetur qui.', 'Quae voluptatem cumque aut necessitatibus dolorum voluptatem sunt non.', 'Tidak', 'Beatae quia quos impedit porro officia ratione.'),
(27, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '063816', 'Janie Abbott', 'Laki-laki', 'Belum Menikah', '1970-07-29', '21', 'Taiwan', 'Indonesia', 'Donnamouth', '0816648731', 'vmacejkovic@example.com', 183, 55, 43, 'Islam', 'Totam illum a vel accusantium reiciendis.', 'Rerum officia impedit ullam veniam.', 'Corrupti dignissimos rerum similique maiores.', 'Ya', 'Ducimus qui architecto aspernatur quaerat.'),
(28, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '706718', 'Kaitlyn Boyle', 'Perempuan', 'Belum Menikah', '1988-12-07', '20', 'United States Virgin Islands', 'Inggris', 'South Kristinaton', '0858812639', 'ykertzmann@example.net', 180, 64, 37, 'Budha', 'Qui dignissimos quibusdam odit ratione tempora et.', 'Et numquam voluptatem provident aut ut esse consequatur.', 'Accusantium quaerat consequatur sed aut odio.', 'Ya', 'Eos molestias et quo sed modi dolor voluptatem qui.'),
(29, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '287862', 'Ethel Ondricka III', 'Laki-laki', 'Menikah', '1993-09-14', '19', 'Cote d\'Ivoire', 'Indonesia', 'West Jannie', '0810371977', 'joey75@example.com', 152, 70, 37, 'Budha', 'Quaerat culpa corporis ea nostrum facilis.', 'Corporis sunt consequatur sed.', 'Dicta soluta adipisci veniam cum.', 'Tidak', 'Molestias sunt ipsa quaerat quis velit est.'),
(30, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '868241', 'Dr. Lucio O\'Conner', 'Perempuan', 'Belum Menikah', '1977-10-20', '21', 'Cameroon', 'Jepang', 'Laurelborough', '0815114665', 'dorothea.kessler@example.org', 153, 53, 39, 'Budha', 'Omnis maiores ducimus quis consequatur nihil.', 'Blanditiis et neque eum eos nobis rerum.', 'Voluptatibus et debitis sint nostrum animi sit libero.', 'Ya', 'Ut omnis placeat est et odit.'),
(31, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '023403', 'Carlo Windler PhD', 'Laki-laki', 'Belum Menikah', '2020-05-20', '30', 'Costa Rica', 'Inggris', 'Kristophermouth', '0826947524', 'forrest.schamberger@example.org', 187, 58, 38, 'Budha', 'Delectus deserunt facilis saepe autem.', 'Perspiciatis et commodi ipsum harum eveniet accusamus distinctio exercitationem.', 'Provident quibusdam quae assumenda in doloremque incidunt possimus.', 'Tidak', 'Neque enim impedit ducimus sint quam maxime ut.'),
(32, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '696493', 'Tommie Bergstrom', 'Laki-laki', 'Menikah', '1988-10-15', '30', 'Central African Republic', 'Inggris', 'Ornside', '0801454204', 'turner58@example.com', 151, 76, 43, 'Kristen', 'Rerum praesentium ut sit nihil natus autem.', 'Sit explicabo perferendis voluptatem id.', 'Sed occaecati sed iure laboriosam voluptatem voluptatem.', 'Ya', 'Dolore quas quibusdam ipsa alias.'),
(33, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '306861', 'Dr. Brennon Hauck', 'Laki-laki', 'Menikah', '2024-07-17', '22', 'Uganda', 'Inggris', 'Lilatown', '0841836668', 'bernhard.chasity@example.org', 156, 75, 45, 'Islam', 'Sit eos architecto iusto nam et nesciunt qui eius.', 'Nobis et voluptatem iure placeat mollitia aliquid omnis consequatur.', 'Illo illo a tempora eum.', 'Tidak', 'Sequi beatae modi officiis est repellendus quis quia.'),
(34, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '202781', 'Kiarra Koepp', 'Laki-laki', 'Menikah', '1985-09-10', '29', 'Japan', 'Indonesia', 'East Aubreyville', '0864732241', 'carolanne19@example.com', 179, 84, 37, 'Islam', 'Et rerum vero repellendus quasi.', 'Quia ullam debitis tempore maiores ratione.', 'Aut aut nobis sint eos velit cum nihil enim.', 'Tidak', 'Aut eos consequatur itaque officia qui.'),
(35, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '729980', 'Christopher Schamberger', 'Laki-laki', 'Belum Menikah', '1990-02-06', '24', 'Philippines', 'Jepang', 'West Miltonchester', '0872314219', 'vonrueden.esther@example.net', 179, 66, 44, 'Budha', 'Et eius odio ut adipisci eos maiores vitae.', 'Velit nihil et ut odio voluptatem sed at.', 'Nulla expedita iste nihil.', 'Tidak', 'Qui itaque ipsam odit et soluta facere ducimus.'),
(36, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '124305', 'Dr. Camron McDermott III', 'Laki-laki', 'Belum Menikah', '1970-03-26', '22', 'Netherlands', 'Jepang', 'New Leonardport', '0891157894', 'brendan.effertz@example.net', 184, 75, 41, 'Hindu', 'Ex cum autem eum aperiam animi eos distinctio.', 'Aut tempora quaerat dignissimos aut qui.', 'Accusamus commodi voluptates autem praesentium aut dolorem atque.', 'Tidak', 'Accusantium totam dolorum eius itaque.'),
(37, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '192714', 'Mrs. Maymie Krajcik', 'Perempuan', 'Menikah', '1978-04-08', '19', 'Eritrea', 'Jepang', 'West Lorafurt', '0815905336', 'romaguera.kailyn@example.com', 150, 51, 41, 'Islam', 'Et sunt sed laudantium non repellendus.', 'Et veritatis et maiores officia nihil voluptatem iure.', 'Sit quasi atque perspiciatis dolorem aut.', 'Ya', 'Sint beatae eaque vel molestiae praesentium ad magni.'),
(38, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '951742', 'Kiel Mitchell IV', 'Perempuan', 'Belum Menikah', '1991-08-02', '27', 'Oman', 'Inggris', 'Harveyville', '0800531642', 'mosciski.gilbert@example.org', 183, 64, 41, 'Budha', 'Quas nemo neque voluptatem enim accusamus magni qui.', 'Est omnis distinctio ea provident omnis.', 'Asperiores architecto dolor expedita qui et.', 'Ya', 'Delectus aliquid consequuntur quia odio nihil.'),
(39, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '374535', 'Herta Ledner', 'Perempuan', 'Belum Menikah', '2007-01-04', '23', 'Belgium', 'Jepang', 'Aureliemouth', '0874078938', 'alba83@example.net', 162, 86, 38, 'Budha', 'Dicta molestias facilis dolores.', 'Sed aliquam porro officia cum voluptas.', 'Doloribus distinctio repellendus maxime ratione.', 'Tidak', 'Qui quas laudantium dicta voluptate pariatur possimus.'),
(40, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '012661', 'Una Hand', 'Laki-laki', 'Belum Menikah', '2006-07-25', '21', 'South Africa', 'Indonesia', 'South Elizabethshire', '0859705962', 'hagenes.katheryn@example.net', 165, 57, 41, 'Budha', 'Nesciunt doloremque aut vero quae enim consequatur commodi.', 'Dolores enim tenetur esse in vero.', 'Consequatur est tenetur ullam beatae quia alias pariatur.', 'Tidak', 'Quis aut eveniet porro quo exercitationem.'),
(41, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '305202', 'Margie Pollich DVM', 'Laki-laki', 'Belum Menikah', '1998-02-03', '22', 'Switzerland', 'Jepang', 'North Christophermouth', '0872115979', 'reid.ullrich@example.org', 158, 87, 37, 'Kristen', 'Qui corporis animi amet dicta numquam dolore ut et.', 'Expedita beatae nihil natus neque.', 'Vitae corrupti distinctio dolores aperiam optio.', 'Ya', 'Voluptatum voluptas quia minima qui officia.'),
(42, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '031998', 'Neal Kulas IV', 'Perempuan', 'Menikah', '2009-09-24', '23', 'Saint Vincent and the Grenadines', 'Jepang', 'Santaville', '0831774455', 'kylie60@example.com', 186, 81, 36, 'Hindu', 'Praesentium et rerum earum omnis est.', 'Voluptatum dolores ex id sed distinctio.', 'Vitae nulla omnis et et rerum velit vel.', 'Ya', 'Optio reiciendis optio sed libero est.'),
(43, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '702673', 'Moshe Bergnaum', 'Laki-laki', 'Menikah', '2003-08-02', '25', 'Maldives', 'Indonesia', 'Burdettetown', '0813554054', 'terry.chloe@example.net', 164, 55, 44, 'Budha', 'Nemo fugit facilis itaque ad qui.', 'Rem ad itaque perspiciatis in.', 'Saepe iure dolor aut est et.', 'Ya', 'Reiciendis saepe dicta consequatur.'),
(44, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '360076', 'Dallin Quitzon', 'Laki-laki', 'Belum Menikah', '1986-11-24', '21', 'Montserrat', 'Indonesia', 'New April', '0805535859', 'glarson@example.net', 157, 62, 42, 'Budha', 'Qui corporis non laudantium sed atque debitis.', 'Non iusto eos neque culpa quasi suscipit.', 'Repellendus architecto et vero saepe laboriosam.', 'Ya', 'Harum non placeat sequi maxime occaecati atque est.'),
(45, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '515268', 'Gay Klein', 'Laki-laki', 'Belum Menikah', '1982-03-25', '22', 'Saint Martin', 'Jepang', 'New Myrtistown', '0865445053', 'dschiller@example.org', 176, 65, 42, 'Kristen', 'Aut dolor tempore rerum.', 'Sed saepe ea unde dolor.', 'Sint reprehenderit temporibus aliquid sequi velit atque.', 'Tidak', 'Quasi blanditiis pariatur fuga iure ducimus velit.'),
(46, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '084709', 'Dr. Kirstin Wilderman V', 'Perempuan', 'Menikah', '1987-05-06', '18', 'Singapore', 'Jepang', 'Letitiachester', '0850502339', 'jast.hunter@example.com', 173, 80, 37, 'Budha', 'Ut animi hic alias molestiae sit fugit.', 'Et ea eum animi saepe.', 'Soluta assumenda aut reprehenderit non.', 'Ya', 'Ea placeat odit quisquam.'),
(47, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '725663', 'Ellie Stehr', 'Perempuan', 'Belum Menikah', '2012-09-11', '29', 'Norway', 'Indonesia', 'Ortizland', '0890861796', 'rutherford.mossie@example.com', 161, 45, 43, 'Hindu', 'Repellat eaque consequatur aut ut inventore at.', 'Qui tenetur laboriosam laborum sequi accusantium et accusantium.', 'Est ullam id et placeat architecto nihil.', 'Ya', 'Voluptatem pariatur et quo maiores repellendus modi nisi soluta.'),
(48, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '800721', 'Dr. Kole Hill', 'Perempuan', 'Menikah', '1994-07-15', '27', 'Cuba', 'Inggris', 'Candidoborough', '0817689371', 'dante.sporer@example.com', 177, 51, 38, 'Budha', 'Eos libero id fugit ut assumenda.', 'Aut rem minima iure aliquam est dolores.', 'Ut amet sit ex neque voluptatem occaecati.', 'Tidak', 'Modi molestiae facere distinctio.'),
(49, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '943155', 'Prof. Kelli Braun DVM', 'Laki-laki', 'Belum Menikah', '1977-03-16', '23', 'Egypt', 'Inggris', 'Harmonyport', '0847906156', 'chasity28@example.net', 151, 52, 36, 'Kristen', 'Laboriosam esse ut iure cumque facilis accusantium.', 'Eaque perferendis earum voluptatem fugit eaque.', 'Odio aliquid ea aperiam animi ducimus mollitia dolores.', 'Tidak', 'Unde est non dolorem deleniti doloribus.'),
(50, '2025-08-11 06:27:50', '2025-08-11 06:27:50', '150957', 'Danyka Cronin III', 'Laki-laki', 'Menikah', '2017-06-16', '25', 'Denmark', 'Jepang', 'West Moshefort', '0844155133', 'abelardo29@example.net', 187, 51, 43, 'Hindu', 'Non commodi quisquam suscipit cumque.', 'Sed voluptatem qui eos animi molestiae accusantium molestiae ducimus.', 'Accusantium minima est iusto corrupti.', 'Tidak', 'Consequuntur aspernatur maxime nostrum similique et dolorem numquam.'),
(52, '2025-08-11 10:05:54', '2025-08-11 10:05:54', '1362416', 'Andrew Arief Riyadi', 'Laki-laki', 'Belum Menikah', '2025-08-05', '21', 'Indonesia', 'Jepang', 'DKI Jakarta', '0861368493', 'otwjepanglagi@gmail.com', 185, 85, 46, 'Islam', 'Keren', 'Jelek', 'Saya keren', 'Tidak', NULL),
(53, '2025-08-11 10:14:44', '2025-08-11 10:14:44', '13680703', 'Andrew Arief Riyadi', 'Laki-laki', 'Belum Menikah', '2025-07-31', '21', 'Indonesia', 'Jepang', 'DKI Jakarta', '08215151435418', 'otwjepang2@gmail.com', 186, 90, 45, 'islam', 'Mudah beradaptasi', 'emosional', 'Saya orangnya seperti', 'Tidak', NULL),
(54, '2025-08-11 23:27:20', '2025-08-11 23:27:20', '12345678', 'Andrew Arief Riyadi', 'Laki-laki', 'Belum Menikah', '2025-07-31', '21', 'Indonesia', 'Jepang', 'Bekasi', '082151758696', 'jagojepang@gmail.com', 130, 20, 29, 'Islam', 'Berkarisma', 'Mudah sakit hati', 'Saya orang yang giat belajar ...', 'Ya', 'Bekerja sebagai chef ramen'),
(55, '2025-08-11 23:37:23', '2025-08-11 23:41:45', '1234512345', 'Andrew Arief Riyadi Terbaru', 'Laki-laki', 'Belum Menikah', '2025-08-01', '22', 'Indonesia', 'Indonesia', 'Bontang, Kalimantan Timur', '082151545775', 'andru@gmail.com', 175, 50, 43, 'Islam', 'Mudah beradaptasi, semangar belajar ...', 'Mudah sakit hati, sering lapar', 'Saya orangnya begini begini...', 'Ya', 'Jadi koki ramen');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certifications_student_id_foreign` (`student_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_student_id_foreign` (`student_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schools_student_id_foreign` (`student_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certifications`
--
ALTER TABLE `certifications`
  ADD CONSTRAINT `certifications_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
