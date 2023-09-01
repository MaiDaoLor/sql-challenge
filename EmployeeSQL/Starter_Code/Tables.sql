--create table and import all CVS file from Data folder 
create table departments(
	dept_no VARCHAR,
	dept_name VARCHAR
);

SELECT * FROM departments

create table dept_emp(
	employee_no INT,
	dept_no VARCHAR
);

SELECT * FROM dept_emp

create table dept_manager(
	dept_no VARCHAR,
	emp_no, INT
);

select * from dept_manager

create table employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR,
	hire_date DATE
); 

select * from employees 

create table salaries(
	emp_no INT, 
	salary MONEY
);

select * from salaries

create table titles(
	title_no VARCHAR,
	title VARCHAR
);

SELECT * FROM TITLES
