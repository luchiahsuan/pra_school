-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
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
-- 資料庫： `student`
--

-- --------------------------------------------------------

--
-- 資料表結構 `class`
--

CREATE TABLE `class` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '編號',
  `name` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '姓名',
  `number` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '學號',
  `email` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '信箱',
  `tel` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '電話',
  `birthday` date NOT NULL COMMENT '生日',
  `classroom` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '班級',
  `gender` tinyint(1) UNSIGNED ZEROFILL NOT NULL COMMENT '性別',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '新增時間',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '最後修改時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `class`
--

INSERT INTO `class` (`id`, `name`, `number`, `email`, `tel`, `birthday`, `classroom`, `gender`, `created_at`, `updated_at`) VALUES
(1, '腿軟的章魚', '111001', 'Octopus@gmail.com', '0911111111', '2022-11-01', '11101', 1, '2022-11-07 02:58:30', '2022-11-07 02:58:30'),
(2, '腿軟的烏賊', '111002', 'squid@gmail.com', '0922222222', '2022-11-02', '11101', 1, '2022-11-07 03:03:06', '2022-11-07 03:03:06'),
(3, '腿軟的軟絲', '111003', 'soft_silk@gmail.com', '0933333333', '2022-11-03', '11101', 2, '2022-11-07 03:05:19', '2022-11-07 03:05:19'),
(4, '腿軟的中卷', '111004', 'Volumes@gmail.com', '0944444444', '2022-11-04', '11101', 1, '2022-11-07 03:06:19', '2022-11-07 03:07:53'),
(5, '腿軟的海葵', '111005', 'sea_​​anemone@gmail.com', '0955555555', '2022-11-05', '11101', 2, '2022-11-07 03:07:36', '2022-11-07 03:08:00'),
(6, '腿軟的花枝', '111006', 'flower@gmail.com', '0966666666', '2022-11-06', '11101', 2, '2022-11-07 03:20:02', '2022-11-07 03:20:02');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `class`
--
ALTER TABLE `class`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '編號', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
