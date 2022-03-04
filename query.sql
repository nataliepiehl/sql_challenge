-- Data Analysis
-- 1: List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries on
employees.emp_no = salaries.emp_no;

-- 2: List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date from employees where hire_date like '%1986%';

-- 3: List the manager of each department with the following information:
--    department number, department name, the manager's employee number, last name, first name.
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager
inner join employees on
dept_manager.emp_no = employees.emp_no
inner join departments on 
departments.dept_no = dept_manager.dept_no;

-- 4: List the department of each employee with the following information:
--    employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_manager
inner join employees on
dept_manager.emp_no = employees.emp_no
inner join departments on 
departments.dept_no = dept_manager.dept_no;

-- 5: List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- 6: List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- 7: List all employees in the Sales and Development departments,
--    including their employee number, last name, first name, and department name.

select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;