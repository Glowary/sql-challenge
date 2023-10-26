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

-- Create the titles table
CREATE TABLE titles (
    title_id VARCHAR(10),
    title VARCHAR(255),
    FOREIGN KEY (title_id) REFERENCES employees(emp_title_id)
);

-- Create the salaries table
CREATE TABLE salaries (
    emp_no INT,
    salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

);

-- Create the departments table
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(255)
);

-- Create the dept_emp table
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(10),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create the dept_manager table
CREATE TABLE dept_manager (
    emp_no INT,
    dept_no VARCHAR(10),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
