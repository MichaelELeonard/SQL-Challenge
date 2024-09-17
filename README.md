<img src="Pics/Header.png" width="894" height="503">

# SQL-CHALLENGE

For the challenge we were tasked to do a research project about people employed at the Pewlett Hackard during the 1980s and 1990s. A database was created and six CSV files containing company data were entered into tables so that a quarry analysis could be performed.  
Files submitted for this project include:

* EmployeeSQL ERD PNG file – https://github.com/MichaelELeonard/sql-challenge/blob/main/EmployeeSQL%20ERD.png
* EmployeeSQL table schemata SQL Source File – https://github.com/MichaelELeonard/sql-challenge/blob/main/EmployeeSQL%20table%20schemata.sql
* EmployeeSQL queries SQL Source File – https://github.com/MichaelELeonard/sql-challenge/blob/main/EmployeeSQL%20queries.sql

## Data Modeling

EmployeeSQL ERD was created using QuickDBD at https://www.quickdatabasediagrams.com.  The tables were designed through the QuickDBD database and were exported as a PostgreSQL file which was uploaded into PostgreSQL.  

<img src="Pics/ERD.png" width="821" height="561">

## Data Engineering

The exported SQL file from QuickDBD was import into PostgreSQL and the resulting schema code was used to create the tables and constraints of the SQL-CHALLENGE database.  Data from the six CSV flies were then uploaded into the database tables and db constrains were established for analysis.  
## Data Analysis

For the Data Analysis portion of the project the resulting db was queried eight times to acquire the data requested by Pewlett Hackard.  These queried included:

* List the employee number, last name, first name, sex, and salary of each employee.
<img src="Pics/Query1.png" width="576" height="103">

<img src="Pics/Query1 Results.png" width="617" height="263">

<br> 

* List the first name, last name, and hire date for the employees who were hired in 1986.
<img src="Pics/Query2.png" width="578" height="109">

<img src="Pics/Query2 Results.png" width="431" height="262">

<br> 

* List the manager of each department along with their department number, department name, employee number, last name, and first name.
<img src="Pics/Query3.png" width="638" height="117">

<img src="Pics/Query3 Results.png" width="664" height="260">

<br> 

* List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
<img src="Pics/Query4.png" width="633" height="122">

<img src="Pics/Query4 Results.png" width="660" height="261">

<br> 

* List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
<img src="Pics/Query5.png" width="587" height="101">

<img src="Pics/Query5 Results.png" width="361" height="262">

<br> 

* List each employee in the Sales department, including their employee number, last name, and first name.
<img src="Pics/Query6.png" width="534" height="135">

<img src="Pics/Query6 Results.png" width="529" height="260">

<br> 

* List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
<img src="Pics/Query7.png" width="621" height="139">

<img src="Pics/Query7 Results.png" width="534" height="262">

<br> 

* List the frequency counts, in descending order, of all the employee’s last names.
<img src="Pics/Query8.png" width="348" height="96">

<img src="Pics/Query8 Results.png" width="393" height="261">

<br> 

All the requested queries were able to be run with no errors and all appropriate data results were acquired.
