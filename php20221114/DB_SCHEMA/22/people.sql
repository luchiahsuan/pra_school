-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-07 04:30:14
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
-- 資料庫： `mfsql`
--

-- --------------------------------------------------------

--
-- 資料表結構 `people`
--

CREATE TABLE `people` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'sequence',
  `name` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'name',
  `student_id` int(6) NOT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL,
  `Email` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `birthday` date NOT NULL,
  `class` int(11) NOT NULL,
  `cd` timestamp NOT NULL DEFAULT current_timestamp(),
  `ud` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `people`
--

INSERT INTO `people` (`id`, `name`, `student_id`, `gender`, `Email`, `phone`, `birthday`, `class`, `cd`, `ud`) VALUES
(1, 'asna', 1301, 2, 'asuna@gmail.com', '0123456789', '2022-11-01', 1113, '2022-11-07 03:01:12', '2022-11-07 03:01:12'),
(2, 'ben', 1302, 1, 'ben@email.com', '0123456789', '2022-11-02', 1113, '2022-11-07 03:12:49', '2022-11-07 03:12:49'),
(3, 'can', 1303, 1, 'ben@mail.com', '01112345', '2022-11-05', 1104, '2022-11-07 03:12:49', '2022-11-07 03:12:49'),
(4, 'dan', 1304, 1, 'dan@mail.com', '123456785', '2022-11-06', 1113, '2022-11-07 03:15:19', '2022-11-07 03:15:57'),
(5, 'echo', 1305, 2, 'echo@mail.com', '3654872', '2022-11-08', 1104, '2022-11-07 03:15:19', '2022-11-07 03:15:19'),
(6, 'fancy', 1306, 2, 'fan@mail.com', '8456789', '2017-11-01', 1113, '2022-11-07 03:21:22', '2022-11-07 03:21:22'),
(7, 'guy', 1309, 1, 'guy@mail.com', '365654872', '2022-10-02', 1104, '2022-11-07 03:21:22', '2022-11-07 03:21:22');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `people`
--
ALTER TABLE `people`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'sequence', AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
