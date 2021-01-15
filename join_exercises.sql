USE employees;

select departments.dept_name as 'Department Name', concat(employees.first_name, ' ', employees.last_name)as 'Department Manager'
from employees
join dept_manager
  on dept_manager.emp_no = employees.emp_no
join departments
  on departments.dept_no = dept_manager.dept_no
where to_date like '9999-01-01'
order by departments.dept_name;

select dept_name as 'Department Name', concat(employees.first_name, ' ', employees.last_name)as 'Department Manager'
from employees
join dept_manager
  on dept_manager.emp_no = employees.emp_no
join departments
  on departments.dept_no = dept_manager.dept_no
where employees.gender = 'F' and to_date like '9999-01-01'
order by departments.dept_name;

select title as 'Title', count(*) as 'Count'
from departments
join dept_emp
  on departments.dept_no = dept_emp.dept_no
join titles
  on dept_emp.emp_no = titles.emp_no
where dept_emp.to_date > now()
  and titles.to_date > now()
  and departments.dept_name = 'Customer Service'
group by title;

select departments.dept_name as 'Department Name', concat(employees.first_name, ' ', employees.last_name) as 'Manager', salaries.salary as 'Salary'
from salaries
join dept_manager
  on dept_manager.emp_no = salaries.emp_no
join employees
  on dept_manager.emp_no = employees.emp_no
join departments
  on dept_manager.dept_no = departments.dept_no
where dept_manager.to_date > now()
  and salaries.to_date > now()
order by departments.dept_name;