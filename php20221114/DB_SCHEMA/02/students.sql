-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
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
  `classroom` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `creates_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`id`, `name`, `school_num`, `gender`, `email`, `tel`, `birthday`, `classroom`, `creates_at`, `updated_at`) VALUES
(1, '結城明日奈', '111001', 2, 'asuna@gmail.com', '0920070930', '2007-09-30', '11101', '2022-11-07 02:58:27', '2022-11-07 02:58:27'),
(2, '桐谷和人', '111002', 1, 'kirito@gmail.com', '0920081007', '2008-10-07', '11101', '2022-11-07 03:02:45', '2022-11-07 03:02:45'),
(3, '結衣', '111003', 2, 'yui@gmail.com', '0920220801', '2022-08-01', '11101', '2022-11-07 03:17:19', '2022-11-07 03:17:19'),
(4, '桐谷直葉', '111004', 2, 'leafa@gmail.com', '0920090419', '2009-04-19', '11102', '2022-11-07 03:18:43', '2022-11-07 03:18:43'),
(5, '朝田詩乃', '111005', 2, 'sinon@gmail.com', '0920090821', '2009-08-21', '11103', '2022-11-07 03:20:16', '2022-11-07 03:20:16'),
(6, '紺野木綿季', '111006', 2, 'yuuki@gmail.com', '0920110523', '2011-05-23', '11103', '2022-11-07 03:22:24', '2022-11-07 03:22:24'),
(7, '尤吉歐·辛賽西斯·薩提滋', '111007', 1, 'eugeo@gmail.com', '0903610410', '2008-04-10', '11104', '2022-11-07 03:27:37', '2022-11-07 03:27:37');

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
