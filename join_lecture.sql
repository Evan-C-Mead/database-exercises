USE codeup_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

SELECT * FROM roles;
SELECT * FROM users;

INSERT INTO users (name, email, role_id) VALUES
('craig-exercise', 'craig@example.com', null),
('tammy-exercise', 'tammy@example.com', 2),
('jules-exercise', 'jules@example.com', 2),
('frank-exercise', 'frank@example.com', 2);

# INNER JOIN - this returns records that have values for user_name AND role_name
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

# LEFT JOIN
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

# RIGHT JOIN
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;


# ============================== JOINS

# Use joins when you need columns of data across multiple tables

# Use foreign keys to ensure referential integrity
#   (can't insert record with id for record that doesn't exist) and to clearly describe DB structure


# Posts
#
# id(PK) | title | content | user_id (FK) | created_at | updated_at
#
# Users
#
# id(PK) | email | pass    | created_at | updated_at


# ============================== BASIC JOINS

use employees;

select * from employees;
select * from titles;

select concat(employees.first_name, ' ', employees.last_name), titles.title
from employees
join titles on titles.emp_no = employees.emp_no
where titles.to_date > now()
order by titles.title;

describe titles;

# ============================== BASIC JOINS WITH ALIASES

# USING AN ALIAS
select concat(e.first_name, ' ', e.last_name), t.title
from employees as e
join titles as t on e.emp_no = t.emp_no
where t.to_date > now()
order by t.title;

# ============================== ASSOCIATIVE TABLES AND JOINS

# OUTPUT NAME AND CURRENT DEPARTMENT FOR EMPLOYEE NUMBER 10001
select concat(e.first_name, ' ', e.last_name) as full_name, d.dept_name
from employees as e
join dept_emp as de
  on de.emp_no = e.emp_no
join departments as d
  on d.dept_no = de.dept_no
where de.to_date = '9999-01-01' and e.emp_no = 10001;