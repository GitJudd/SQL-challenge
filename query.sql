-- Run 1
CREATE TABLE titles (
    emp_title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
	PRIMARY KEY (emp_title_id)
);

-- Run 2
CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);

-- Run 3
CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR not null,
    birth_date date NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    SEX VARCHAR NOT NULL,
    hire_date date NOT NULL,
	PRIMARY KEY (emp_no),
	foreign key (emp_title_id) references titles(emp_title_id)
);

-- Run 4
CREATE TABLE department_employees (
    emp_no INT   NOT NULL,
	dept_no VARCHAR   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Run 5
CREATE TABLE department_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Run 6
CREATE TABLE salaries (
    emp_no int   NOT NULL,
	salary INTEGER   NOT NULL,   
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Table Check

select * from department_employees

select * from department_manager

select * from departments

select * from employees

select * from salaries

select * from titles
