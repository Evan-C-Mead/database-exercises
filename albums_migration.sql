USE codeup_test_db;

DROP TABLE IF EXISTS album;

CREATE TABLE IF NOT EXISTS album (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(255) NOT NULL DEFAULT 'Unknown',
    name VARCHAR(255) NOT NULL DEFAULT 'Unknown' UNIQUE,
    release_date INT UNSIGNED,
    sales FLOAT UNSIGNED,
    genre CHAR(50),
    PRIMARY KEY (id)
);