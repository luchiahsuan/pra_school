-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-11-08 03:37:20
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
-- 資料庫： `schools`
--

-- --------------------------------------------------------

--
-- 資料表結構 `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_num` int(4) NOT NULL COMMENT '所屬班級',
  `name` varchar(24) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '姓名',
  `school_num` int(3) NOT NULL COMMENT '座號',
  `gender` int(1) NOT NULL COMMENT '性別',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '資料建立時間',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '資料更新時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`id`, `class_num`, `name`, `school_num`, `gender`, `created_at`, `updated_at`) VALUES
(1, 1113, 'lisa', 1, 2, '2022-11-08 01:57:44', '2022-11-08 01:57:44'),
(2, 1113, 'Amy', 2, 2, '2022-11-08 01:57:44', '2022-11-08 01:57:44'),
(3, 1113, 'Eason', 3, 1, '2022-11-08 01:57:44', '2022-11-08 01:57:44'),
(4, 1113, 'Adam', 4, 1, '2022-11-08 01:57:44', '2022-11-08 01:57:44'),
(5, 1113, 'Joanne', 5, 2, '2022-11-08 01:57:44', '2022-11-08 01:57:44'),
(6, 1113, 'Leo', 6, 1, '2022-11-08 02:36:18', '2022-11-08 02:36:18');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
