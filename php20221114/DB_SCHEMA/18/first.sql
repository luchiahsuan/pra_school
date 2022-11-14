-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-07 04:35:11
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
-- 資料庫： `practice`
--

-- --------------------------------------------------------

--
-- 資料表結構 `first`
--

CREATE TABLE `first` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_520_ci NOT NULL,
  `schiool_id` varchar(6) COLLATE utf8_unicode_520_ci NOT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL,
  `enail` varchar(128) COLLATE utf8_unicode_520_ci NOT NULL,
  `tel` varchar(128) COLLATE utf8_unicode_520_ci NOT NULL,
  `birthday` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `classroom` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- 傾印資料表的資料 `first`
--

INSERT INTO `first` (`id`, `name`, `schiool_id`, `gender`, `enail`, `tel`, `birthday`, `classroom`, `created_at`, `updated_at`) VALUES
(1, '陳', '101001', 1, 'chen@gmail.com', 'A市B路1號2樓', '2022-11-07 03:23:12', 101, '2022-11-07 03:18:30', '2022-11-07 03:23:12'),
(2, '李', '101002', 0, 'lin@gmail.com', 'A市B路1號2樓', '2004-04-13 03:14:43', 101, '2022-11-07 03:19:56', '2022-11-07 03:21:22'),
(3, '王', '101003', 6, 'wang@gmail.com', 'A市B路1號2樓', '2004-06-15 03:14:43', 101, '2022-11-07 03:19:56', '2022-11-07 03:19:56'),
(4, '張', '101004', 6, 'zhang@gmail.com', 'A市B路1號2樓', '2022-11-07 03:22:41', 101, '2022-11-07 03:19:56', '2022-11-07 03:22:41'),
(5, '李', '101005', 1, 'li@gmail.com', 'A市B路1號2樓', '2022-11-07 03:22:48', 101, '2022-11-07 03:19:56', '2022-11-07 03:22:48');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `first`
--
ALTER TABLE `first`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `first`
--
ALTER TABLE `first`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
