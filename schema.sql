Create Table departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	Primary Key (dept_no),
	Unique (dept_name)
);

Create Table employees (
	emp_no INT NOT NULL,
	birth_date DATE NOT  NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	Primary Key (emp_no)
);

Create Table dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	Foreign Key (emp_no) References employees (emp_no),
	Foreign Key (dept_no) References departments (dept_no),
	Primary Key (emp_no, dept_no)
);

Create Table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	Foreign Key (emp_no) References employees (emp_no),
	Primary Key (emp_no)
);

Create Table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	Foreign Key (emp_no) References employees (emp_no),
	Foreign Key (dept_no) References departments (dept_no),
	Primary Key (emp_no, dept_no)
);

Create Table titles (
	emp_no INT NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	Foreign Key (emp_no) References employees (emp_no),
	Primary Key (emp_no, title, from_date)
);

Select * From departments;

	