CREATE TABLE departments (
  dept_no VARCHAR(15) NOT NULL PRIMARY KEY,
  dept_name VARCHAR(50) NOT NULL
);

select * from departments


CREATE TABLE titles (
	title_id VARCHAR(15) NOT NULL PRIMARY KEY,
	title VARCHAR(50) NOT NULL
);

select * from titles


CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(15) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

select * from employees


CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(15) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp


CREATE TABLE dept_managers (
 dept_no VARCHAR (15),
 emp_no INT NOT NULL,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_managers


CREATE TABLE salaries (
	salary INT NOT NULL PRIMARY KEY,
    emp_no INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries
