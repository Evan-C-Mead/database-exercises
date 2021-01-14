use employees;

select concat(last_name, ', ', first_name) as full_name
from employees
limit 10;

select concat(last_name, ', ', first_name) as full_name, birth_date as DOB
from employees
limit 10;

select concat(emp_no, ' - ', last_name, ', ', first_name) as employee_number_and_full_name, birth_date as DOB
from employees
limit 10;