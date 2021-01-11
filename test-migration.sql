USE codeup_test_db;

CREATE TABLE IF NOT EXISTS transactions (
    id INT,
    date DATE,
    description VARCHAR(255),
    amount DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS items (
    id INT,
    price DECIMAL(10, 2),
    description VARCHAR(255),
    name VARCHAR(255),
    category VARCHAR(128)
);

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED AUTO_INCREMENT,
    is_admin TINYINT default 0,
    zipcode CHAR(15),
    primary key(id)
);

alter table users auto_increment = 1000;

create table if not exists blog_posts (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) not null,
    content TEXT not null,
    primary key(id)
);

DROP TABLE transactions;
DROP TABLE items;
DROP TABLE users;
DROP TABLE blog_posts;