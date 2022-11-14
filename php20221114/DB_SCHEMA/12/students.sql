-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-07 04:30:16
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `school`
--

-- --------------------------------------------------------

--
-- 資料表結構 `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `school_num` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `birthday` date NOT NULL,
  `classroom` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`id`, `name`, `school_num`, `gender`, `email`, `tel`, `birthday`, `classroom`, `create_at`, `update_at`) VALUES
(1, 'fox', '202211', 2, 'djfh@gmail.com.com', '02-2568789', '2016-07-19', '1113', '2022-11-06 16:00:00', '2022-11-07 03:24:27'),
(2, 'john', '123456', 1, 'bbb@hotmail.com.tw', '03-1234567', '2022-07-05', '1113', '2022-11-07 03:17:31', '2022-11-07 03:17:31'),
(3, 'mary', '123457', 2, 'ccc@yahoo.com.tw', '049-854271', '2013-10-15', '1113', '2022-11-07 03:20:47', '2022-11-07 03:20:47'),
(4, 'brown', '123458', 1, 'bas@gmail.com', '09-1234567', '2012-11-14', '1113', '2022-11-07 03:20:47', '2022-11-07 03:20:47'),
(5, 'joe', '987654', 1, 'dfa@gmail.com', '0902214875', '2018-05-15', '1114', '2022-11-07 03:22:56', '2022-11-07 03:22:56'),
(6, 'jenny', '874561', 2, 'hjge@gmail.com', '0902254879', '2018-11-19', '1114', '2022-11-07 03:22:56', '2022-11-07 03:22:56');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
