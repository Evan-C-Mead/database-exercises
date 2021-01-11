USE codeup_test_db;

DROP TABLE IF EXISTS pizza_orders;

CREATE TABLE IF NOT EXISTS pizza_orders (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(25) NOT NULL,
    email VARCHAR(255),
    address VARCHAR(255) NOT NULL,
    pizza_size INT NOT NULL,
    total_cost DECIMAL(10, 2) NOT NULL,
    description VARCHAR(255),
    is_delivered TINYINT default 0,
    created_at DATE,
    updated_at DATE,
    PRIMARY KEY (id),
    UNIQUE KEY phone_number (phone_number)
);