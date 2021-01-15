use employees;

select first_name, last_name
from employees
where hire_date = (
    select hire_date
    from employees
    where emp_no = 101010
    );

select title
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
    )
      and employees.gender = 'F';

# BONUS 1
select dept_name
from departments
where dept_no in (
    select dept_manager.dept_no
    from dept_manager
    where emp_no in (
        select emp_no
        from employees
        where employees.gender = 'F'
        )
      and dept_manager.to_date > now()
    );

# BONUS 2
select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from salaries
    where salary = '158220'
    );