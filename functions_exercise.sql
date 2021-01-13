use employees;

select concat(first_name, ' ', last_name) as 'Employee names that start and end "E/e"'
from employees
where last_name like 'E%e';

select concat(first_name, ' ', last_name) as 'Employee',
       datediff(current_date(), hire_date) as 'Days worked at Company'
from employees
where hire_date like '199%'
  and (birth_date like '%-12-25')
order by birth_date asc, hire_date desc;