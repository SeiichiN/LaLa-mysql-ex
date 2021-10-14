-- book_db
-- user: book_user
-- pass: bookxxx

CREATE DATABASE IF NOT EXISTS book_db;
USE book_db;

DROP TABLE IF EXISTS book;  -- book�\���폜
DROP TABLE IF EXISTS genre; -- genre�\���폜


-- �݌v1(genre�\��code��INT�ɂ���j
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
    '�悭�킩��o��',
    '�R�c����',
    '2010/11/3',
    1
   ),
   (
    '���{���w����I',
    '�匴�m�q',
    '1998/3/5',
    2
   ),
   (
    '���{�o�ώj',
    '�{�{�Ǒ�',
    '2016/7/20',
    1
   ),
   (
    'HTML&CSS��Web�f�U�C������u��',
    'Mana',
    '2019/3/16',
    3
   );

INSERT INTO genre (name) VALUES
('�o��'), ('���w'), ('�R���s���[�^');

SELECT * FROM book;
SELECT * FROM genre;

SELECT *
  FROM book b
  INNER JOIN genre g
  ON b.gen_id = g.code;
