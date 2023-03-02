CREATE TABLE departments (
	dept_no VARCHAR,
    dept_name VARCHAR,
	primary key (dept_no),
	unique (dept_name)
);

CREATE TABLE employees (
	emp_no INT,
    emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	primary key(emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT,
    dept_no VARCHAR,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no),
	primary key (emp_no, dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR,
    emp_no INT,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no),
	primary key (emp_no, dept_no)
);

CREATE TABLE salaries (
	emp_no INT,
    salary INT,
	foreign key (emp_no) references employees(emp_no),
	primary key (emp_no)
);

CREATE TABLE titles (
	title_id VARCHAR,
    title VARCHAR
);