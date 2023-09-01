--Data Analysis

--1. List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s
on (e.emp_no = s.emp_no); 

--2. List the first name, last name, and hire date for the employees who
-----were hired in 1986.
select e.first_name, e.last_name, e.hire_date
from employees e
where e.hire_date between '01/01/1986' and '12/31/1986';

--3. List the manager of each department along with their 
-----department number, department name, employee number, last name, and first name.
select dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from dept_manager dm
join departments d
on (dm.dept_no = d.dept_no)
join employees e
on (dm.emp_no = e.emp_no);

--4. List the department number for each employee along with that employee’s
-----employee number, last name, first name, and department name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de
on (e.emp_no = de.employee_no)
inner join departments d
on (de.dept_no = d.dept_no);

--5. List first name, last name, and sex of each employee whose first name 
-----is Hercules and whose last name begins with the letter B.
select e.first_name, e.last_name, e.sex
from employees e
where (e.first_name = 'Hercules') and (lower(e.last_name) like 'b%');

--6. List each employee in the Sales department, including their
-----employee number, last name, and first name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from departments d
join dept_emp de
on (d.dept_no = de.dept_no)
join employees e
on (e.emp_no = de.employee_no)
where lower(dept_name) = 'sales';

--7. List each employee in the Sales and Development departments, including their 
-----employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from departments d
join dept_emp de
on (d.dept_no = de.dept_no)
join employees e
on (e.emp_no = de.employee_no)
where (lower(d.dept_name) = 'sales') or (lower(d.dept_name) = 'development');


--8. List the frequency counts, in descending order, 
-----of all the employee last names 
-----(that is, how many employees share each last name).
select last_name,count(last_name) as Frequency 
from employees 
group by last_name
order by frequency desc;