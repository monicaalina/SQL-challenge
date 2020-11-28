--1. List the following details of each employee: employee number, last name, first name, sex, and salary

SELECT
Employee.emp_no,
Employee.last_name,
Employee.first_name,
Employee.sex,
Salary.salary

FROM Salary as Salary
INNER JOIN Employee 
ON Employee.emp_no = Salary.emp_no;


--2.List first name, last name, and hire date for employees who were hired in 1986

SELECT
first_name,
last_name,
hire_date
FROM Employee
WHERE hire_date BETWEEN '1986-01-01'
AND '1986-12-31';


--3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name

SELECT
Dept_Manager.dept_no,
Dept_Manager.emp_no,
Department.dept_name,
Employee.last_name,
Employee.first_name

FROM Dept_Manager
INNER JOIN Department
ON Dept_Manager.dept_no = Department.dept_no
INNER JOIN Employee
ON Employee.emp_no = Dept_Manager.emp_no;


--4. List the department of each employee with the following information: employee number, last name, first name, and department name

SELECT
Dept_Employee.emp_no,
Department.dept_name,
Employee.last_name,
Employee.first_name

FROM Dept_Employee
INNER JOIN Department
ON Dept_Employee.dept_no = Department.dept_no
INNER JOIN Employee
ON Employee.emp_no = Dept_Employee.emp_no;


--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT
first_name,
last_name,
sex
FROM Employee
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';


--6.List all employees in the Sales department, including their employee number, last name, first name, and department name

SELECT 
Dept_Employee.emp_no,
Department.dept_name,
Employee.last_name,
Employee.first_name
FROM Employee
JOIN Dept_Employee
ON Dept_Employee.emp_no = Employee.emp_no
JOIN Department
ON Dept_Employee.dept_no = Department.dept_no
WHERE dept_name = 'Sales';


--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name

SELECT 
Dept_Employee.emp_no,
Department.dept_name,
Employee.last_name,
Employee.first_name
FROM Employee
JOIN Dept_Employee
ON Dept_Employee.emp_no = Employee.emp_no
JOIN Department
ON Dept_Employee.dept_no = Department.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name

SELECT last_name, 
Count(last_Name) 
From Employee 
Group By last_name 
Order By Count Desc;
