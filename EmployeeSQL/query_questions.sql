--Question 1 
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary 
FROM salaries 
INNER JOIN employees
ON employees.emp_no = salaries.emp_no

--Question 2
SELECT * FROM Employees 
WHERE EXTRACT(year FROM "hire_date") = 1986

--Question 3
-- List the manager of each department with the following information: department number, 
-- department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dept_manager.dept_no, dept_manager.emp_no, departments.dept_name, 
employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no

--Question 4
--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, departments, dept_employees
WHERE employees.emp_no = dept_employees.emp_no and
dept_employees.dept_no = departments.dept_no

--Question 5 
--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--Question 6 
--List all employees in the Sales department, including their employee number, last name, first name, and department name.




