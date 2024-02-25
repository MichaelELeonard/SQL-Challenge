-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/avuP3v
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- Create employees table
CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY ("emp_no")
);


-- Create salaries table
CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY ("emp_no")
);


-- Create titles table
CREATE TABLE "titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY ("title_id")
);


-- Create departments table
CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY ("dept_no")
);


-- Create dept_emp table
CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY ("emp_no","dept_no")
);


-- Create dept_manager table
DROP TABLE IF EXISTS dept_manager;
CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY ("dept_no","emp_no")
);


--Add constraints to tables in db
ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");



--List the employee number, last name, first name, sex, and salary of each employee.
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
FROM employees As e 
	JOIN dept_manager AS m ON e.emp_no = m.emp_no 
	JOIN departments AS d ON m.dept_no = d.dept_no 
ORDER BY "dept_no";


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees As e 
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
FROM employees As e 
	JOIN dept_emp AS de ON e.emp_no = de.emp_no 
	JOIN departments AS d ON de.dept_no = d.dept_no 
WHERE (dept_name LIKE 'Sales') 
ORDER BY "emp_no";


--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees As e 
	JOIN dept_emp AS de ON e.emp_no = de.emp_no 
	JOIN departments AS d ON de.dept_no = d.dept_no 
WHERE ((dept_name LIKE 'Sales') OR (dept_name LIKE 'Development')) 
ORDER BY "dept_name";


--List the frequency counts, in descending order, of all the employee last names
SELECT last_name, COUNT(last_name)
FROM employees 
GROUP BY last_name
ORDER BY "last_name" DESC;










