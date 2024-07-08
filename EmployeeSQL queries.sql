﻿--List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e 
	JOIN salaries AS s ON e.emp_no = s.emp_no 
ORDER BY "emp_no";


--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE hire_date >= '1986/01/01' AND hire_date < '1987/01/01'
ORDER BY "hire_date";


--List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT m.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e 
	JOIN dept_manager AS m ON e.emp_no = m.emp_no 
	JOIN departments AS d ON m.dept_no = d.dept_no 
ORDER BY "dept_no";


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees AS e 
	JOIN dept_emp AS de ON e.emp_no = de.emp_no 
	JOIN departments AS d ON de.dept_no = d.dept_no 
ORDER BY "dept_no";


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name 
FROM employees
WHERE ((first_name LIKE 'Hercules') AND (last_name LIKE 'B%'))
ORDER BY "last_name";


--List each employee in the Sales department, including their employee number, last name, and first name
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e 
	JOIN dept_emp AS de ON e.emp_no = de.emp_no 
	JOIN departments AS d ON de.dept_no = d.dept_no 
WHERE (dept_name LIKE 'Sales') 
ORDER BY "emp_no";


--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e 
	JOIN dept_emp AS de ON e.emp_no = de.emp_no 
	JOIN departments AS d ON de.dept_no = d.dept_no 
WHERE ((dept_name LIKE 'Sales') OR (dept_name LIKE 'Development')) 
ORDER BY "dept_name";


--List the frequency counts, in descending order, of all the employee last names
SELECT last_name, COUNT(last_name)
FROM employees 
GROUP BY last_name
ORDER BY "last_name" DESC;










