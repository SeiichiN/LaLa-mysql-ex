-- gender�\������

DROP TABLE IF EXISTS gender;

CREATE TABLE gender (
  gid char(1) PRIMARY KEY,
  gname char(1) NOT NULL
);

INSERT INTO gender VALUES
('0', '�|'),
('1', '�j'),
('2', '��'),
('3', '��');

SELECT * FROM gender;

UPDATE person SET gender = '1' WHERE id = 1;
UPDATE person SET gender = '2' WHERE id = 2;
UPDATE person SET gender = '1' WHERE id = 3;
UPDATE person SET gender = '1' WHERE id = 4;
UPDATE person SET gender = '2' WHERE id = 5;
 