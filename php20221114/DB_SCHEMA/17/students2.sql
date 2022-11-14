-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022-11-07 04:29:44
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
-- 資料表結構 `students2`
--

CREATE TABLE `students2` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '編號',
  `name` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '姓名',
  `school_num` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `birthday` date NOT NULL,
  `classroom` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `students2`
--

INSERT INTO `students2` (`id`, `name`, `school_num`, `gender`, `email`, `tel`, `birthday`, `classroom`, `created_at`, `updated_at`) VALUES
(1, 'アスナ', '111001', 2, 'asuna@gmail.com', '0910456123', '2006-06-12', '11101', '2022-11-07 02:58:21', '2022-11-07 03:02:48'),
(2, 'asus1', '111001', 1, 'asus1@gmail.com', '0910456124', '2022-11-10', '11101', '2022-11-07 03:11:57', '2022-11-07 03:11:57'),
(3, 'asus2', '111001', 1, 'asus2@gmail.com', '0910456125', '2022-07-06', '11101', '2022-11-07 03:12:34', '2022-11-07 03:12:34'),
(4, 'asus3', '111001', 2, 'asus3@gmai.com', '0910456126', '2022-04-19', '11101', '2022-11-07 03:13:07', '2022-11-07 03:13:07'),
(5, 'asus4', '111001', 2, 'asus4@gmail.com', '0910456127', '2022-04-19', '11101', '2022-11-07 03:13:43', '2022-11-07 03:13:43'),
(6, 'asus5', '111001', 2, 'asus5@gmail.com', '0910456128', '2022-03-15', '11101', '2022-11-07 03:14:15', '2022-11-07 03:14:15'),
(7, '羅炎塔爾', '111002', 1, '555@gmail.com', '3345678', '2003-05-11', '', '2022-11-07 03:28:48', '2022-11-07 03:28:48');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `students2`
--
ALTER TABLE `students2`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `students2`
--
ALTER TABLE `students2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '編號', AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
