-- book_db
-- user: book_user
-- pass: bookxxx

CREATE DATABASE IF NOT EXISTS book_db;
USE book_db;


DROP TABLE IF EXISTS book;  -- book表を削除
DROP TABLE IF EXISTS genre; -- genre表を削除

-- 設計2(genre表のcodeをchar(2)にする)
CREATE TABLE book (
  id INT AUTO_INCREMENT,
  title VARCHAR(60) NOT NULL,
  author VARCHAR(20) NOT NULL,
  pub_date DATE NOT NULL,
  gen_id CHAR(2),
  PRIMARY KEY (id)
);

CREATE TABLE genre (
  code CHAR(2),
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (code)
);

ALTER TABLE book AUTO_INCREMENT = 1;


INSERT INTO book
  (title, author, pub_date, gen_id)
  VALUES
   (
    'よくわかる経済',
    '山田健介',
    '2010/11/3',
    '01'
   ),
   (
    '日本文学傑作選',
    '大原洋子',
    '1998/3/5',
    '02'
   ),
   (
    '日本経済史',
    '宮本良太',
    '2016/7/20',
    '01'
   ),
   (
    'HTML&CSSとWebデザイン入門講座',
    'Mana',
    '2019/3/16',
    '03'
   );

INSERT INTO genre VALUES
('01', '経済'),
('02', '文学'),
('03', 'コンピュータ');

SELECT * FROM book;
SELECT * FROM genre;


SELECT *
  FROM book b
  INNER JOIN genre g
  ON b.gen_id = g.code;
  
  