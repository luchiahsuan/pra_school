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
  `school_num` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tel` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `birthday` date NOT NULL,
  `classsroom` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`id`, `name`, `school_num`, `gender`, `email`, `tel`, `birthday`, `classsroom`, `created_at`, `updated_at`) VALUES
(1, '王小明', '111001', 1, 'smallname@gmail.com', '0987878787', '2000-01-01', '11101', '2022-11-07 03:11:02', '2022-11-07 03:11:02'),
(2, '李二白', '111002', 2, 'leewhite@gmail.com', '0988988988', '2000-07-01', '11101', '2022-11-07 03:13:05', '2022-11-07 03:13:05'),
(3, '白三癡', '111003', 1, 'whiteeat@gmail.com', '0989898989', '2000-03-01', '11101', '2022-11-07 03:14:29', '2022-11-07 03:14:29'),
(4, '習維尼', '111004', 1, '64door@gmail.com', '0978788788', '1987-08-07', '11101', '2022-11-07 03:16:16', '2022-11-07 03:16:16'),
(5, '習小熊', '111005', 1, 'bear@gmail.com', '0964646464', '1987-06-04', '11101', '2022-11-07 03:19:07', '2022-11-07 03:19:07');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '編號', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
