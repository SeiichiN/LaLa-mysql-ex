CREATE VIEW student_view AS
SELECT
    p.id       AS ID,
    p.name     AS 名前,
    g.gname    AS 性別,
    p.birthday AS 誕生日,
    s.name     AS 出身,
    c.c_name   AS コース
  FROM person p
  INNER JOIN gender g
    ON p.gender = g.gid
  INNER JOIN course c
    ON p.c_code = c.c_id
  INNER JOIN state s
    ON p.state = s.code;
