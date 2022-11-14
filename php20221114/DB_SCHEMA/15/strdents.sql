-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-07 04:31:46
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
-- 資料表結構 `strdents`
--

CREATE TABLE `strdents` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '編號',
  `name` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '姓名',
  `school_num` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '學號',
  `gender` tinyint(1) NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `birthday` date NOT NULL,
  `classroom` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `strdents`
--

INSERT INTO `strdents` (`id`, `name`, `school_num`, `gender`, `email`, `tel`, `birthday`, `classroom`, `created_at`, `updated_at`) VALUES
(2, '亞斯納', '111001', 1, 'asuna@gmail.com', '0908123456', '2006-10-12', '11101', '2022-11-07 02:59:40', '2022-11-07 03:04:38'),
(3, '比克', '111002', 1, 'bebe@gamil.com', '0901123456', '2005-08-08', '11101', '2022-11-07 02:59:40', '2022-11-07 02:59:40'),
(4, '音砂', '111003', 2, 'say@gmail.com', '0912123456', '2007-01-12', '11101', '2022-11-07 03:03:57', '2022-11-07 03:03:57'),
(5, 'music', '111004', 2, 'music@gmail.com', '0936777777', '2006-04-16', '11101', '2022-11-07 03:03:57', '2022-11-07 03:03:57'),
(6, '孫悟空', '111005', 1, 'njp@gmail.com', '0975123456', '2004-12-08', '11101', '2022-11-07 03:03:57', '2022-11-07 03:03:57');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `strdents`
--
ALTER TABLE `strdents`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `strdents`
--
ALTER TABLE `strdents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '編號', AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
