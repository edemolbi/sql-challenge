-- List employee #, first & last name, sex and salary of each employee

SELECT 
 emp_no, first_name, last_name, sex, salary
  FROM employees
   JOIN salaries
	USING (emp_no);
	

-- List first name, last name, and hire date for employees hired in 1986  

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date LIKE '%86%';

-- List the manager of each department with department #, department name, manager's employee #, first name, and last name
 
SELECT employees.emp_no, employees.first_name, employees.last_name, dept_manager.dept_no, department.dept_name
 	FROM employees
 		INNER JOIN dept_manager ON employees.emp_no=dept_manager.emp_no
		INNER JOIN department ON dept_manager.dept_no=department.dept_no;

-- List department of each employee with employee #, first and last names, and department name

SELECT employees.emp_no, employees.first_name, employees.last_name, department.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN department ON dept_emp.dept_no=department.dept_no;

-- List first name, last name and sex for employees with first names "Hercules" and a last name that starts with B

SELECT first_name, last_name, sex FROM employees 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List all employees in sales department, including employee #, first and last names, and department name

SELECT employees.emp_no, employees.first_name, employees.last_name, department.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN department ON dept_emp.dept_no=department.dept_no 
WHERE department.dept_name = 'Sales';

-- List all employees in sales and development departments, including employee #, first and last names, and department name

SELECT employees.emp_no, employees.first_name, employees.last_name, department.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN department ON dept_emp.dept_no=department.dept_no 
WHERE department.dept_name = 'Sales'
OR department.dept_name = 'Development';

-- List the frequency count of employee last names in decreasing order

SELECT last_name, count(*) as c FROM employees GROUP BY last_name ORDER BY c DESC;
