use employees;

select *
from employees
where hire_date = (
    select hire_date
    from employees
    where emp_no = '101010'
    );

select *
from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
    );

select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from dept_manager
    where dept_manager.to_date > now()
      and employees.gender = 'F'
    );