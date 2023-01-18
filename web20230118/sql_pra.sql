
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `test`
--

-- --------------------------------------------------------

--
-- 資料表結構 `db06`
--

CREATE TABLE `db06` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `age` int(4) NOT NULL,
  `tel` int(64) NOT NULL
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;



-- 增
INSERT INTO `db06` (`id`, `name`, `age`, `tel`, 'id') 
            VALUES ('1', 'lulu', '15', '451223', '224157888'), 
                   ('2', 'kiki', '23', '587456', '223152458'),
                   ('3', 'nini', '27', '845126', '221485287')
-- 改
ALTER TABLE `db06` 
CHANGE `id` `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, 
add PRIMARY KEY (`id`);
-- 查
SELECT * FROM `db06` WHERE `name` LIKE 'nini'
-- 刪
DELETE FROM `db06` WHERE `db06`.`id` = 2