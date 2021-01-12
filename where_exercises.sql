use employees;

select first_name, last_name
from employees
where gender = 'M'
and (first_name in ('Irena', 'Vidya')
   or first_name = 'Maya');

select first_name, last_name
from employees
where last_name like 'E%'
or last_name like '%e';

# select first_name, last_name
# from employees
# where last_name like 'E%e';

select first_name, last_name
from employees
where last_name like 'E%'
  and (last_name like '%e');

select first_name, last_name
from employees
where hire_date like '199%'
  and (birth_date like '%-12-25');

select  first_name, last_name
from employees
where last_name like '%q%'
  and (employees.last_name not like '%qu%');