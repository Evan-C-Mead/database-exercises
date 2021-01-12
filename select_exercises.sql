USE codeup_test_db;

SELECT name AS 'Pink Floyd albums'
FROM album WHERE artist = 'Pink Floyd';

SELECT release_date AS ' The year Sgt. Pepper''''s Lonely Hearts Club Band released'
FROM album WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'The genre for Nevermind'
FROM album WHERE name = 'Nevermind';

SELECT name AS 'Albums released int the 90''s'
FROM album WHERE release_date BETWEEN 1990 AND 1999;

SELECT name AS 'Albums with less than 20M sales'
FROM album WHERE sales < 20;

SELECT name AS 'All Rock albums'
FROM album WHERE genre = 'Rock';