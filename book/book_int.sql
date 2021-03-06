-- book_db
-- user: book_user
-- pass: bookxxx

CREATE DATABASE IF NOT EXISTS book_db;
USE book_db;

DROP TABLE IF EXISTS book;  -- book表を削除
DROP TABLE IF EXISTS genre; -- genre表を削除


-- 設計1(genre表のcodeをINTにする）
CREATE TABLE book (
  id INT AUTO_INCREMENT,
  title VARCHAR(60) NOT NULL,
  author VARCHAR(20) NOT NULL,
  pub_date DATE NOT NULL,
  gen_id INT,
  PRIMARY KEY (id)
);

CREATE TABLE genre (
  code INT AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (code)
);


ALTER TABLE book AUTO_INCREMENT = 1;
ALTER TABLE genre AUTO_INCREMENT = 1;


INSERT INTO book
  (title, author, pub_date, gen_id)
  VALUES
   (
    'よくわかる経済',
    '山田健介',
    '2010/11/3',
    1
   ),
   (
    '日本文学傑作選',
    '大原洋子',
    '1998/3/5',
    2
   ),
   (
    '日本経済史',
    '宮本良太',
    '2016/7/20',
    1
   ),
   (
    'HTML&CSSとWebデザイン入門講座',
    'Mana',
    '2019/3/16',
    3
   );

INSERT INTO genre (name) VALUES
('経済'), ('文学'), ('コンピュータ');

SELECT * FROM book;
SELECT * FROM genre;

SELECT *
  FROM book b
  INNER JOIN genre g
  ON b.gen_id = g.code;
