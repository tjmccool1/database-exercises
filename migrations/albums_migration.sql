USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums(

  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist varchar(50) DEFAULT NULL,
  name varchar(50) NOT NULL,
  release_date DECIMAL (4,0) NOT NULL,
  sales DECIMAL (11,2) NOT NULL,
  genre VARCHAR (50) NOT NULL,
  PRIMARY KEY (id)

)