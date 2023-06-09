Use employees;
-- Query 1: Department Name and Department Manager
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
         JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
         JOIN employees AS e ON e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01';

-- Query 2: Department Name and Department Manager (Women)
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
         JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
         JOIN employees AS e ON e.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

-- Query 3: Current Titles of Employees in Customer Service
SELECT t.title, COUNT(*) AS 'Total'
FROM employees AS e
         JOIN dept_emp AS de ON de.emp_no = e.emp_no
         JOIN titles AS t ON t.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY t.title;

-- Query 4: Current Salary of Current Managers
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM departments AS d
         JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
         JOIN employees AS e ON e.emp_no = dm.emp_no
         JOIN salaries AS s ON s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';

-- Bonus Query: Names of Current Employees, Department Name, and Manager's Name
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.dept_name AS 'Department', CONCAT(m.first_name, ' ', m.last_name) AS 'Manager'
FROM employees AS e
         JOIN dept_emp AS de ON de.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = de.dept_no
         JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
         JOIN employees AS m ON m.emp_no = dm.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';

