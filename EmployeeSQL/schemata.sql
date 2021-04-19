-- Titles
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);

SELECT * FROM titles;

-- Employees
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(5),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date VARCHAR(10), 
	first_name VARCHAR, 
	last_name VARCHAR, 
	gender VARCHAR(1), 
	hire_date DATE
);

SELECT * FROM employees;

-- Departments
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR
);

SELECT * FROM departments;

-- Department Managers
DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR(4),
	emp_no INTEGER PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;

-- Salaries
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	emp_no INTEGER PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INTEGER
);

SELECT * FROM salaries;

-- Department Employees
DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
	emp_no INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(4),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;