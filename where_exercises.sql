use employees;

select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

select first_name, last_name
from employees
where last_name like 'E%';

select first_name, last_name
from employees
where hire_date like '199%';

select first_name, last_name
from employees
where birth_date like '%-12-25';

select  first_name, last_name
from employees
where last_name like '%q%';