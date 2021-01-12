USE codeup_test_db;

DELETE FROM album WHERE release_date > 1991;

DELETE FROM album WHERE genre = 'Disco';

DELETE FROM album WHERE artist = 'Whitney Houston / Various artists';

SELECT * FROM album;
