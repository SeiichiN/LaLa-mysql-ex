-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2023 年 4 月 05 日 07:23
-- サーバのバージョン： 10.6.12-MariaDB-0ubuntu0.22.04.1
-- PHP のバージョン: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `student`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `id` char(2) NOT NULL,
  `name` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `state`
--

INSERT INTO `state` (`id`, `name`) VALUES
('01', '北海道'),
('02', '青森県'),
('03', '岩手県'),
('04', '宮城県'),
('05', '秋田県'),
('06', '山形県'),
('07', '福島県'),
('08', '茨城県'),
('09', '栃木県'),
('10', '群馬県'),
('11', '埼玉県'),
('12', '千葉県'),
('13', '東京都'),
('14', '神奈川県'),
('15', '新潟県'),
('16', '富山県'),
('17', '石川県'),
('18', '福井県'),
('19', '山梨県'),
('20', '長野県'),
('21', '岐阜県'),
('22', '静岡県'),
('23', '愛知県'),
('24', '三重県'),
('25', '滋賀県'),
('26', '京都府'),
('27', '大阪府'),
('28', '兵庫県'),
('29', '奈良県'),
('30', '和歌山県'),
('31', '鳥取県'),
('32', '島根県'),
('33', '岡山県'),
('34', '広島県'),
('35', '山口県'),
('36', '徳島県'),
('37', '香川県'),
('38', '愛媛県'),
('39', '高知県'),
('40', '福岡県'),
('41', '佐賀県'),
('42', '長崎県'),
('43', '熊本県'),
('44', '大分県'),
('45', '宮崎県'),
('46', '鹿児島県'),
('47', '沖縄県');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
