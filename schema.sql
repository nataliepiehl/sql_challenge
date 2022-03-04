-- Remove tables if needed
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Generate Tables
create table departments (
	dept_no varchar not null,
	dept_name varchar not null
);

create table dept_emp (
	emp_no int not null,
	dept_no varchar not null
);

create table dept_manager (
	dept_no varchar(4) not null,
	emp_no int not null
);

create table employees (
	emp_no int not null,
	emp_title_id varchar not null,
	birth_date varchar not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date varchar not null
);

create table salaries (
	emp_no int not null,
	salary int not null
);

create table titles (
	title_id varchar not null,
	title varchar not null
);

-- List rows
select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;
