-- book_db
-- user: book_user
-- pass: bookxxx

CREATE DATABASE IF NOT EXISTS book_db;
USE book_db;


DROP TABLE IF EXISTS book;  -- book�\���폜
DROP TABLE IF EXISTS genre; -- genre�\���폜

-- �݌v2(genre�\��code��char(2)�ɂ���)
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
    '�悭�킩��o��',
    '�R�c����',
    '2010/11/3',
    '01'
   ),
   (
    '���{���w����I',
    '�匴�m�q',
    '1998/3/5',
    '02'
   ),
   (
    '���{�o�ώj',
    '�{�{�Ǒ�',
    '2016/7/20',
    '01'
   ),
   (
    'HTML&CSS��Web�f�U�C������u��',
    'Mana',
    '2019/3/16',
    '03'
   );

INSERT INTO genre VALUES
('01', '�o��'),
('02', '���w'),
('03', '�R���s���[�^');

SELECT * FROM book;
SELECT * FROM genre;


SELECT *
  FROM book b
  INNER JOIN genre g
  ON b.gen_id = g.code;
  
  