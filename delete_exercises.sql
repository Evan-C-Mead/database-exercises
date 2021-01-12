USE codeup_test_db;

SELECT 'Albums released after 1991' AS '';
DELETE name FROM album WHERE release_date > 1991;

SELECT 'Albums with the genre disco' AS '';
DELETE name FROM album WHERE genre = 'disco';

SELECT 'Albums by Whitney Houston' AS '';
DELETE name FROM album WHERE artist = 'Whitney Houston';

SELECT * FROM album;
