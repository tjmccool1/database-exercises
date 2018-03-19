USE codeup_test_db
-- Write SELECT statements to output each of the following with a caption:
-- All albums in your table
-- After each SELECT add an UPDATE statement to:
-- Make all the albums 10 times more popular (sales * 10)
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.
SELECT 'All albums in your table' As '------------------';
SELECT * FROM albums;

UPDATE albums
SET sales = sales * 10
WHERE sales = sales;

-- All albums released before 1980
-- After each SELECT add an UPDATE statement to:
-- Move all the albums before 1980 back to the 1800s.
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.

SELECT 'All albums released before 1980' AS '----------------';
SELECT name
FROM albums
WHERE release_date < 1980;
--
SELECT 'update albums released before 1980' AS '----------------';
UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;
--
SELECT 'updated albums released to 1800' AS '----------------';
SELECT name, release_date
FROM albums
WHERE release_date = 1800;


-- All albums by Michael Jackson
-- After each SELECT add an UPDATE statement to:
-- Change 'Michael Jackson' to 'Peter Jackson'
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.

SELECT 'All albums by Michael Jackson' AS '-------------------';
SELECT name, artist
FROM albums
WHERE artist = 'Michael Jackson';

SELECT 'All albums updated from Michael Jackson to Peter Jackson' AS '-------------------';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT 'All albums by Peter jackson' AS '-------------------';
SELECT artist, name
FROM albums
WHERE artist = 'Peter Jackson';



