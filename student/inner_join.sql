CREATE VIEW student_view AS
SELECT
    p.id       AS ID,
    p.name     AS ���O,
    g.gname    AS ����,
    p.birthday AS �a����,
    p.state    AS �o�g,
    c.c_name   AS �R�[�X
  FROM person p
  INNER JOIN gender g
    ON p.gender = g.gid
  INNER JOIN course c
    ON p.c_code = c.c_id;
