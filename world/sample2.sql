-- user: world_user
-- pass: worldxxx

CREATE DATABASE IF NOT EXISTS sample2;
USE sample2;

DROP TABLE IF EXISTS data;
CREATE TABLE data (
  code   INT,
  name   VARCHAR(20),
  amount INT,
  PRIMARY KEY (code)
);
