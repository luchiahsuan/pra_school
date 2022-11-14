-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-07 04:30:31
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
  `id` int(10) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '姓名',
  `school_num` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '班級',
  `gender` tinyint(1) NOT NULL COMMENT '性別',
  `email` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'email',
  `tel` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '電話',
  `birthday` date NOT NULL COMMENT '生日',
  `classromm` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '班級',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '建立日期',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '最後修改日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`id`, `name`, `school_num`, `gender`, `email`, `tel`, `birthday`, `classromm`, `created_at`, `updated_at`) VALUES
(1, '家瑩', '111002', 2, 'Zhou_Jiaying@gmail.com', '090033854', '2000-01-12', '11101', '2022-11-07 03:13:05', '2022-11-07 03:13:05'),
(2, '絲娜', '111001', 2, 'asuna@gmail.com', '0900344512', '2006-10-12', '11101', '2022-11-07 02:59:00', '2022-11-07 02:59:00'),
(3, '維德', '111003', 1, 'ZhengWeide@gmail.com', '0926885201', '2000-06-12', '11101', '2022-11-07 03:16:56', '2022-11-07 03:16:56'),
(4, '育菁', '111004', 2, 'pai@gmail.com', '09330201', '2000-11-03', '11101', '2022-11-07 03:18:56', '2022-11-07 03:20:35'),
(5, '怡珮', '111005', 2, 'YiPei@gmail.com', '0900660501', '2001-02-12', '11101', '2022-11-07 03:20:14', '2022-11-07 03:20:14');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
