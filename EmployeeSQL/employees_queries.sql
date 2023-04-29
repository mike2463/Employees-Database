select * from departments limit 10;

select * from titles limit 10;

select * from employees limit 10;

select * from dept_emp limit 10;

select * from dept_manager limit 10;

select * from salaries limit 10;

select employees.emp_no, employees.last_name,employees.first_name,employees.sex, salaries.salary from employees join salaries on salaries.emp_no = employees.emp_no;

select employees.first_name, employees.last_name, employees.hire_date from employees where extract(year from hire_date) = 1986;

select dept_manager.emp_no, dept_manager.dept_no, departments.dept_name, employees.last_name, employees.first_name from dept_manager 
join employees ON employees.emp_no = dept_manager.emp_no join departments on departments.dept_no = dept_manager.dept_no;