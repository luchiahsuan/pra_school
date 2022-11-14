-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-07 04:29:53
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
  `id` int(10) UNSIGNED NOT NULL COMMENT '編號',
  `name` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '姓名',
  `school_num` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '學號',
  `sex` tinyint(1) UNSIGNED NOT NULL,
  `e-mail` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `birthday` date NOT NULL,
  `classroom` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`id`, `name`, `school_num`, `sex`, `e-mail`, `tel`, `birthday`, `classroom`, `created_at`, `updated_at`) VALUES
(1, '亞斯納', '111001', 2, 'asuna@gmail.com', '0900344512', '2006-06-12', '11101', '2022-11-07 02:58:31', '2022-11-07 03:02:50'),
(3, '雅雅雅', '111002', 1, 'XXX@gmail.com', '0912345678', '2006-10-12', '11102', '2022-11-07 03:11:43', '2022-11-07 03:11:43'),
(4, '雅雅雅', '111002', 1, 'XXX@gmail.com', '0912345678', '2006-10-12', '11102', '2022-11-07 03:11:47', '2022-11-07 03:11:47'),
(5, '那嘶啞', '111002', 2, 'aadmin@gmail.com', '0900000000', '1964-02-11', '11101', '2022-11-07 03:16:32', '2022-11-07 03:16:32'),
(6, '哥哥爸爸', '111003', 1, 'ggiq@gmail.com', '0987654321', '1964-11-11', '11101', '2022-11-07 03:17:36', '2022-11-07 03:17:36'),
(7, '一筆壓壓', '111007', 1, 'adshue@gmail.com', '0954678912', '1874-01-01', '11103', '2022-11-07 03:20:09', '2022-11-07 03:20:09');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '編號', AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
