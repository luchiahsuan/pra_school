-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2022 at 03:38 AM
-- Server version: 10.11.0-MariaDB-log
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `t01`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `school_num` int(6) NOT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `birthday` date NOT NULL,
  `classroom` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `school_num`, `gender`, `email`, `phone`, `birthday`, `classroom`, `created_at`, `updated_at`) VALUES
(1, 'Kirito', 1, 1, '1110001@123.cc', '0901110001', '2007-09-30', 'Sword Art', '2022-11-07 03:38:12', '2022-11-07 03:38:12'),
(2, 'Asuna', 2, 2, '1110002@123.cc', '0901110002', '2007-09-30', 'Sword Art', '2022-11-07 03:38:12', '2022-11-07 03:38:12'),
(3, 'Sinon', 3, 2, '1110003@123.cc', '0901110003', '2007-09-30', 'Sword Art', '2022-11-07 03:38:12', '2022-11-07 03:38:12'),
(4, 'Alice', 4, 2, '1110004@123.cc', '0901110004', '2007-09-30', 'Sword Art', '2022-11-07 03:38:12', '2022-11-07 03:38:12'),
(5, 'Eugeo', 5, 1, '1110005@123.cc', '0901110005', '2007-09-30', 'Sword Art', '2022-11-07 03:38:12', '2022-11-07 03:38:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
