USE codeup_test_db;

SELECT name AS 'All Albums' FROM album;

SELECT name AS 'Before 1980' FROM album WHERE release_date < 1980;

SELECT name AS 'Michael Jackson' FROM album WHERE artist = 'Michael Jackson';

UPDATE album SET sales = (sales * 10);
SELECT * FROM album;

UPDATE album SET release_date = (release_date - 100) WHERE release_date < 1980;
SELECT name, release_date FROM album WHERE release_date < 1980;

UPDATE album SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT artist, name FROM album WHERE artist = 'Peter Jackson';