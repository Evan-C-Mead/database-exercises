use employees;

# SELECT column_a, column_b, column_c
# FROM table_a
# WHERE column_a IN (
#     SELECT column_a
#     FROM table_b
#     WHERE column_b = true
# );

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

# FIND THE INFORMATION FOR THE DEPARTMENTS WHERE THE DEPARTMENT NAME IS 'CUSTOMER SERVICE'
select *
from departments;

select dept_no
from departments
where dept_name = 'Customer Service';

select *
from departments
where dept_no = (
    select dept_no
    from departments
    where dept_name = 'Customer Service'
    );

# SALES DEPARTMENT MANAGER EMPLOYEE NUMBER
select emp_no
from dept_manager
where dept_no in (
    select dept_no
    from departments
    where dept_name = 'Sales'
    )
  and to_date > now();

# CONCATENATE THE FIRST TWO EMPLOYEE'S HIGHEST SALARIES
select concat(
    (
        select max(salary)
        from salaries
        where emp_no = 10001
    ),
    ' ',
    (
        select max(salary)
        from salaries
        where emp_no = 10002
    )
);

# FIND FIRST AND LAST NAME OF ALL DEPARTMENT MANAGERS
select e.first_name, e.last_name
from employees as e
join dept_manager as dm on e.emp_no = dm.emp_no;

select first_name, last_name
from employees
where emp_no in (
    select emp_no from dept_manager
    );