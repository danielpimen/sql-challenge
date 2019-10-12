  
CREATE TABLE departments (
    dept_no varchar(8) PRIMARY KEY ,
    dept_name varchar(32)   NOT NULL
);

CREATE TABLE employees (
    emp_no Integer PRIMARY KEY ,
    birth_date date   NOT NULL,
    first_name varchar(64)   NOT NULL,
    last_name varchar(64)   NOT NULL,
    gender char   NOT NULL,
    hire_date date   NOT NULL
);

CREATE TABLE dept_manager (
	dept_no varchar(8),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	emp_no Integer,
    FOREIGN KEY (emp_no) REFERENCES  employees (emp_no),
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE dept_employees (
	emp_no Integer,
    FOREIGN KEY (emp_no) REFERENCES  employees (emp_no),
    dept_no varchar(8),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE salaries (
    emp_no Integer ,
	FOREIGN KEY (emp_no) REFERENCES  employees (emp_no),
    salary Integer   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE titles (
    emp_no Integer,
	FOREIGN KEY (emp_no) REFERENCES  employees (emp_no),
    title varchar(64)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);