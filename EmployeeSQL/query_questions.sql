--Question 1 
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary 
FROM salaries 
INNER JOIN employees
ON employees.emp_no = salaries.emp_no

--Question 2
SELECT * FROM Employees 
WHERE EXTRACT(year FROM "hire_date") = 1986

--Question 3