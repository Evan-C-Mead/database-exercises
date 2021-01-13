use employees;

select first_name, last_name
from employees
where gender = 'M'
  and (first_name in ('Irena', 'Vidya')
    or first_name = 'Maya')
order by last_name, first_name;

select first_name, last_name
from employees
where last_name like 'E%'
order by emp_no;

select first_name, last_name
from employees
where hire_date like '199%'
  and (birth_date like '%-12-25')
order by birth_date asc, hire_date desc;