USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd.' AS '-----INFO--------';
SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS '-----INFO--------';
SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'genre for Nevermind' AS '-----INFO--------';
SELECT genre
FROM albums
WHERE name = 'Nevermind';

SELECT 'albums were released in the 1990s' AS '-----INFO--------';
SELECT name
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'albums had less than 20 million certified sales' AS '-----INFO--------';
SELECT name
FROM albums
WHERE sales < 20;

SELECT 'albums with a genre of "Rock"' AS '-----INFO--------';
SELECT name
FROM albums
WHERE genre = 'Rock' && 'Progressive rock';