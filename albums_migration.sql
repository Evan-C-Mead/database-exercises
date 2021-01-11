USE codeup_test_db;

DROP TABLE IF EXISTS album;

CREATE TABLE IF NOT EXISTS album (
    id INT UNSIGNED AUTO_INCREMENT,
    artist VARCHAR(255),
    name VARCHAR(255),
    release_date DATE,
    sales INT,
    genre CHAR(50),
    PRIMARY KEY (id)
);