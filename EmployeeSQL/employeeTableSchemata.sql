DROP TABLE department; 
DROP TABLE dept_emp;
DROP TABLE salaries;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE titles;

CREATE TABLE department(
   	dept_no VARCHAR(7) NOT NULL,
   	dept_name VARCHAR(30) NOT NUll
);

CREATE TABLE dept_emp(
	emp_no INT NOT NUll,
	dept_no VARCHAR(7) NOT NULL
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(7) NOT NULL,
	emp_no INT NOT NULL
);

CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title VARCHAR (30) NOT NULL,
	birth_date VARCHAR (30) NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex CHAR(1) NOT NULL,
	hire_date VARCHAR (30) NOT NULL
);

CREATE TABLE titles(
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR (30) NOT NULL
);

