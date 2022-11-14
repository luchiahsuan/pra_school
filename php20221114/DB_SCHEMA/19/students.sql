-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-07 04:36:51
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
  `name` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '姓名',
  `school_num` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `birthday` date NOT NULL,
  `classroom` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '這筆資料何時建立的',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '資料更新的時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`id`, `name`, `school_num`, `gender`, `email`, `tel`, `birthday`, `classroom`, `created_at`, `updated_at`) VALUES
(1, '李米ㄉㄟˊ', '5350001', 1, 'mide0608@gamil.com', '0910480760', '2019-06-08', '11101', '2022-11-07 02:57:39', '2022-11-07 02:59:28'),
(2, '李米漿', '5350002', 2, 'mijun0618@gmail.com', '0910480761', '2019-06-18', '11101', '2022-11-07 02:59:05', '2022-11-07 03:00:02'),
(3, '陳唐唐', '5350003', 1, 'tumtum1117@gmaill.com', '0910480762', '1991-11-17', '11102', '2022-11-07 03:12:26', '2022-11-07 03:14:14'),
(4, '李米包', '5350004', 1, 'mihu1217@gmail.com', '0910480763', '1994-12-17', '11103', '2022-11-07 03:14:04', '2022-11-07 03:36:29'),
(5, '李米飯', '5350005', 2, 'mifun1031@gmail.com', '0910480764', '1990-10-31', '11101', '2022-11-07 03:16:13', '2022-11-07 03:16:13'),
(6, '李米酒', '5350006', 1, 'mijo0106@gmail.com', '0910480765', '1992-01-06', '11101', '2022-11-07 03:29:37', '2022-11-07 03:29:37'),
(7, '李清酒', '5350007', 1, 'chinjo0207@gmail.com', '0910480766', '1993-02-07', '11102', '2022-11-07 03:29:37', '2022-11-07 03:29:37'),
(8, '李梅酒', '5350008', 2, 'mayjo0308@gmail.com', '0910480767', '1994-03-08', '11101', '2022-11-07 03:29:37', '2022-11-07 03:29:37'),
(9, '李燒酒', '5350009', 2, 'shoujo0409@gmail.com', '0910480768', '1995-04-09', '11102', '2022-11-07 03:29:37', '2022-11-07 03:29:37'),
(10, '李紅酒', '5350010', 1, 'hunjo0510@gmail.com', '0910480769', '1996-05-10', '11103', '2022-11-07 03:29:37', '2022-11-07 03:29:37');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '編號', AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
