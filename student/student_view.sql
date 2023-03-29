CREATE VIEW student_view AS
SELECT
    p.id       AS ID,
    p.name     AS 名前,
    g.name    AS 性別,
    p.birthday AS 誕生日,
    s.name     AS 出身,
    c.name   AS コース
  FROM person p
  INNER JOIN gender g
    ON p.gender = g.id
  INNER JOIN course c
    ON p.c_id = c.id
  INNER JOIN state s
    ON p.s_code = s.code;
