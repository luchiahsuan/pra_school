-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-07 04:30:44
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
-- 資料表結構 `class_room_01`
--

CREATE TABLE `class_room_01` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT '編號',
  `name` varchar(32) COLLATE utf8_unicode_520_ci NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `phone_number` varchar(10) COLLATE utf8_unicode_520_ci NOT NULL,
  `identify` varchar(6) COLLATE utf8_unicode_520_ci NOT NULL,
  `career_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- 傾印資料表的資料 `class_room_01`
--

INSERT INTO `class_room_01` (`id`, `name`, `gender`, `phone_number`, `identify`, `career_time`) VALUES
(0000000001, 'sky_walk', 1, '0912345678', 'vip_1', '2022-11-06 16:00:00'),
(0000000002, 'sky_walk2', 1, '0912345688', 'vip_2', '2022-11-06 16:00:00'),
(0000000003, 'sky_walk3', 1, '0912345688', 'vip_3', '2022-11-06 16:00:00'),
(0000000004, 'sky_walk4', 1, '0912345677', 'vip_4', '2022-11-06 16:00:00'),
(0000000005, 'sky_walk5', 1, '0912345698', 'vip_5', '2022-11-06 16:00:00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `class_room_01`
--
ALTER TABLE `class_room_01`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `class_room_01`
--
ALTER TABLE `class_room_01`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '編號', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
