USE codeup_test_db;

SELECT * FROM album WHERE artist = 'Pink Floyd';

SELECT release_date FROM album WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM album WHERE name = 'Nevermind';

SELECT * FROM album WHERE release_date BETWEEN 1990 AND 1999;

SELECT * FROM album WHERE sales < 20;

SELECT * FROM album WHERE genre = 'Rock';