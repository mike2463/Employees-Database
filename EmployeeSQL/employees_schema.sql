drop table if exists departments, titles, employees, dept_emp, dept_manager, salaries;

create table departments(dept_no varchar not null unique, dept_name varchar not null, primary key (dept_no));

create table titles(title_id varchar not null unique, title varchar(50), primary key (title_id));

create table employees(emp_no int not null unique, primary key (emp_no), title_id varchar, foreign key (title_id) references titles(title_id),
					   birth_date date, first_name varchar(50) not null, last_name varchar(50) not null,
					  sex varchar, hire_date date not null);
					  
create table dept_emp(emp_no int, foreign key (emp_no) references employees(emp_no), dept_no varchar, foreign key (dept_no) references departments(dept_no));

create table dept_manager(dept_no varchar, foreign key (dept_no) references departments(dept_no), emp_no int, foreign key (emp_no) references employees(emp_no));

create table salaries(emp_no int, foreign key (emp_no) references employees(emp_no), salary int not null);

