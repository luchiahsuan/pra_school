-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-10 09:04:42
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
  `name` varchar(26) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '姓名',
  `school_num` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gender` tinyint(3) UNSIGNED NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `birthday` date NOT NULL,
  `classroom` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`id`, `name`, `school_num`, `gender`, `email`, `tel`, `birthday`, `classroom`, `created_at`, `updated_at`, `score`) VALUES
(1, '學生1', '111006', 2, 's1@MM', '011', '1994-12-16', '1113', '2022-11-07 02:58:49', '2022-11-10 07:57:25', 90),
(2, '學生2', '111009', 2, 's2@mm', '022', '2012-11-09', '1113', '2022-11-07 03:12:55', '2022-11-10 07:58:02', 100),
(3, '學生3', '111007', 1, 's3@QQ', '033', '2013-09-15', '1113', '2022-11-07 03:14:15', '2022-11-10 08:00:32', 92),
(4, '學生4', '111010', 1, 's4@cc', '044', '1992-04-09', '1113', '2022-11-07 03:16:37', '2022-11-10 08:00:43', 83),
(5, '學生5', '111008', 2, 's5@nn', '055', '1986-07-10', '1113', '2022-11-07 03:18:57', '2022-11-10 08:00:50', 72);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '編號', AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
