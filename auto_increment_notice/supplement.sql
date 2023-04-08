
--
-- データベース: supplement
--
CREATE DATABASE IF NOT EXISTS supplement;
USE supplement;

-- --------------------------------------------------------

--
-- テーブルの構造 emp
--

DROP TABLE IF EXISTS emp;
CREATE TABLE emp (
  id int(11) AUTO_INCREMENT,
  name varchar(20),
  age int(11),
  birthyear year,
  dept varchar(20),
  PRIMARY KEY (id)
); 

--
-- テーブルのデータのダンプ emp
--

INSERT INTO emp
(name, age, birthyear, dept) VALUES
('菅原文太', 40, 1933, '総務部'),
('千葉真一', 34, 1940, '営業部'),
('北大路欣也', 30, 1943, '経理部'),
('梶芽衣子', 26, 1947, '営業部');



-- 修正時刻: Sat 2023/04/08 10:58:40
