-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-07 04:29:54
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
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '姓名',
  `school_num` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '學號',
  `gender` tinyint(1) UNSIGNED NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `birthday` date NOT NULL,
  `classroom` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`id`, `name`, `school_num`, `gender`, `email`, `tel`, `birthday`, `classroom`, `created_at`, `updated_at`) VALUES
(1, '王小明', '111001', 1, 'min@gmail.com', '0900123456', '2006-11-02', '111001', '2022-11-07 02:52:57', '2022-11-07 03:03:14'),
(2, '小花', '111002', 2, 'flower@gmail.com', '0911222344', '2007-05-26', '111001', '2022-11-07 03:12:10', '2022-11-07 03:12:10'),
(3, '陳小華', '111003', 1, 'hua@hotmail.com', '0911223578', '2007-03-01', '111002', '2022-11-07 03:16:37', '2022-11-07 03:16:37'),
(4, '黃美美', '111004', 2, 'mei@gmail.com', '0922113335', '2007-09-04', '111003', '2022-11-07 03:16:37', '2022-11-07 03:16:37'),
(5, '吳阿明', '111005', 1, 'hu@gmail.com', '0933445566', '2006-12-01', '111003', '2022-11-07 03:16:37', '2022-11-07 03:16:37'),
(6, '王曉明', '111006', 1, 'min2@gmail.com', '0900123456', '2006-11-02', '111001', '2022-11-07 02:52:57', '2022-11-07 03:03:14'),
(7, '張大成', '111007', 1, 'aaa@gmail.com', '0911216345', '2007-12-01', '111002', '2022-11-07 03:29:12', '2022-11-07 03:29:12'),
(8, '方曉美', '111008', 2, 'bbb@gmail.com', '0922456789', '2007-12-01', '111001', '2022-11-07 03:29:12', '2022-11-07 03:29:12'),
(9, '黃嘉玲', '111009', 2, 'ccc@gmail.com', '0933456789', '2007-12-01', '111003', '2022-11-07 03:29:12', '2022-11-07 03:29:12'),
(10, '陳佳君', '111010', 2, 'ddd@gmail.com', '0944456789', '2007-12-01', '111002', '2022-11-07 03:29:12', '2022-11-07 03:29:12'),
(11, '王大豪', '111011', 1, 'eee@gmail.com', '0955465789', '2007-12-01', '111002', '2022-11-07 03:29:12', '2022-11-07 03:29:12');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '編號', AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
