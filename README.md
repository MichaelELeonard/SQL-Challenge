<img src="Pics/Header.png" width="894" height="503">

# SQL-CHALLENGE

For the challenge we were tasked to do a research project examining employes at the Pewlett Hackard during the 1980s and 1990s. A database was created and six CSV files containing company data was entered into tables for quarry analysis.  
Files submitted for this project include:

* [EmployeeSQL ERD]( https://github.com/MichaelELeonard/sql-challenge/blob/main/EmployeeSQL%20ERD.png) 

* [EmployeeSQL Table Schemata]( https://github.com/MichaelELeonard/sql-challenge/blob/main/EmployeeSQL%20table%20schemata.sql)

* [EmployeeSQL Queries]( https://github.com/MichaelELeonard/sql-challenge/blob/main/EmployeeSQL%20queries.sql)


## Data Modeling


EmployeeSQL ERD was created using [QuickDBD]( https://www.quickdatabasediagrams.com)

<img src="Pics/ERD.png" width="821" height="561">

## Data Engineering
[EmployeeSQL Table Schemata]( https://github.com/MichaelELeonard/sql-challenge/blob/main/EmployeeSQL%20table%20schemata.sql)


The exported SQL file from QuickDBD was imported to PostgreSQL to create the tables of the SQL database.  Data from the six CSV flies was uploaded into the tables and the constrains were established.  
## Data Analysis

[EmployeeSQL Queries]( https://github.com/MichaelELeonard/sql-challenge/blob/main/EmployeeSQL%20queries.sql)


For the Data Analysis portion of the project, the database was queried eight times to acquire the data requested by Pewlett Hackard.  These queried included:

<br> 

* List the employee number, last name, first name, sex, and salary of each employee.

<img src="Pics/Query1 Results.png" width="617" height="263">

<br> 

* List the first name, last name, and hire date for the employees who were hired in 1986.

<img src="Pics/Query2 Results.png" width="431" height="262">

<br> 

* List the manager of each department along with their department number, department name, employee number, last name, and first name.

<img src="Pics/Query3 Results.png" width="664" height="260">

<br> 

* List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

<img src="Pics/Query4 Results.png" width="660" height="261">

<br> 

* List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

<img src="Pics/Query5 Results.png" width="361" height="262">

<br> 

* List each employee in the Sales department, including their employee number, last name, and first name.

<img src="Pics/Query6 Results.png" width="529" height="260">

<br> 

* List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

<img src="Pics/Query7 Results.png" width="534" height="262">

<br> 

* List the frequency counts, in descending order, of all the employee’s last names.

<img src="Pics/Query8 Results.png" width="393" height="261">

<br> 

