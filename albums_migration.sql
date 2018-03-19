USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist varchar(100) DEFAULT NULL,
  name varchar(100) DEFAULT NULL,
  release_date INT DEFAULT NULL,
  sales DECIMAL (6, 2) DEFAULT NULL,
  genre VARCHAR (100) DEFAULT NULL,
  PRIMARY KEY (id)
);
-- must be in the dir of file to run from cmdLine;
-- mysql -u codeup_test_user -p < albums_migration.sql;