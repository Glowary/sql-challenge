# Module 9 SQL Challenge 

**Review CSV Files** for structure and columns info.

**Create Entity Relationship Diagram (ERD)** to understand how tables and variables are related.
![ERD](https://github.com/Glowary/sql-challenge/blob/main/ERD.png?raw=true)

**Create Tables**
```sql
-- Create the employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex CHAR(1),
    hire_date DATE
);
...
-- Create the dept_manager table
CREATE TABLE dept_manager (
    emp_no INT,
    dept_no VARCHAR(10),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
```
**Queries**
1. List the employee number, last name, first name, sex, and salary of each employee.
```
SELECT employee_number, last_name, first_name, gender, salary
FROM employees
JOIN salaries ON employees.employee_number = salaries.employee_number;
```
2. List the first name, last name, and hire date for the employees who were hired in 1986.
```
WHERE YEAR(hire_date) = 1986;
```
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
```
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
```
6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
```
GROUP BY last_name
ORDER BY name_count DESC;
```
**References**  
[Import Data](https://www.commandprompt.com/education/how-to-import-or-export-csvs-to-postgresql-using-pgadmin/)  
[Variable](https://www.sqlshack.com/an-overview-of-the-sql-table-variable/) 
