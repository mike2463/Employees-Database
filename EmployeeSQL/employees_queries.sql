select * from departments limit 10;

select * from titles limit 10;

select * from employees limit 10;

select * from dept_emp limit 10;

select * from dept_manager limit 10;

select * from salaries limit 10;

select employees.emp_no, employees.last_name,employees.first_name,employees.sex, salaries.salary 
from employees 
join salaries on salaries.emp_no = employees.emp_no;

select employees.first_name, employees.last_name, employees.hire_date 
from employees 
where extract(year from hire_date) = 1986;

select dept_manager.emp_no, dept_manager.dept_no, departments.dept_name, employees.last_name, employees.first_name 
from dept_manager 
join employees ON employees.emp_no = dept_manager.emp_no 
join departments on departments.dept_no = dept_manager.dept_no;

select dept_emp.dept_no, dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_no 
from dept_emp 
join employees on employees.emp_no = dept_emp.emp_no 
join departments on departments.dept_no = dept_emp.dept_no;

select employees.first_name, employees.last_name, employees.sex 
from employees where employees.first_name = 'Hercules' and employees.last_name like 'B%';

select departments.dept_name, employees.emp_no, employees.first_name, employees.last_name
from departments 
join dept_emp on dept_emp.dept_no = departments.dept_no 
join employees on dept_emp.emp_no = employees.emp_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

select employees.last_name, count(employees.last_name) 
from employees 
group by last_name 
order by count desc;