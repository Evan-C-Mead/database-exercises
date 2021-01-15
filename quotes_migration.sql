use codeup_test_db;

DROP TABLE IF EXISTS authors;
CREATE TABLE authors (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO authors(first_name, last_name) VALUES
    ('Douglas', 'Adams'),
    ('Mark', 'Twain'),
    ('Kurt', 'Vonnegut');

SELECT * FROM authors;

DROP TABLE IF EXISTS quotes;
CREATE TABLE quotes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    content TEXT NOT NULL,
    author_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (author_id) REFERENCES authors (id)
);

INSERT INTO quotes(id, content, author_id) VALUES
    (1, 'I love deadlines. I love the whooshing noise they make as they go by.', 1),
    (2, 'Don''t Panic.', 1),
    (3, 'Time is an illusion. Lunchtime doubly so.', 1),
    (4, 'Clothes make the man. Naked people have little or no influence on society.', 2),
    (5, 'The universe is a big place, perhaps the biggest.', 3);

SELECT * FROM quotes;

DROP TABLE IF EXISTS topics;
CREATE TABLE topics (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO topics(name) VALUES
    ('Space and Time'),
    ('Humor'),
    ('Office Life'),
    ('Hitchiker''s Guide to the Galaxy');

SELECT * FROM topics;

DROP TABLE IF EXISTS quote_topic;
CREATE TABLE quote_topic (
    quote_id INTEGER UNSIGNED NOT NULL,
    topic_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (quote_id) REFERENCES quotes(id),
    FOREIGN KEY (topic_id) REFERENCES topics(id)
);

INSERT INTO quote_topic(quote_id, topic_id)
    VALUES (1, 2),
           (1, 3),
           (2, 4),
           (3, 1),
           (3, 2),
           (3, 3),
           (3, 4),
           (4, 2),
           (5, 1);

SELECT * FROM quote_topic;