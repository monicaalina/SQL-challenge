CREATE TABLE Title (
	
	title_id VARCHAR(8) NOT NULL,
	title VARCHAR (20) NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE Employee (

	emp_no INT NOT NULL,
	emp_title_id VARCHAR (8) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	sex VARCHAR (5) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES Title (title_id)
);

CREATE TABLE Salary (

	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employee (emp_no)
);

CREATE TABLE Department (

	dept_no VARCHAR (10) NOT NULL,
	dept_name VARCHAR (20) NOT NULL,
	PRIMARY KEY (dept_no)				   
);

CREATE TABLE Dept_Employee (

	emp_no INT NOT NULL,
	dept_no VARCHAR (10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employee (emp_no),
	FOREIGN KEY (dept_no) REFERENCES Department (dept_no)
);
	
CREATE TABLE Dept_Manager(

	dept_no VARCHAR (10) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Department (dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employee (emp_no)
);

