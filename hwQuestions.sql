--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
--
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employees e
JOIN salaries s ON s.emp_no = e.emp_no;
--
--2. List first name, last name, and hire date for employees who were hired in 1986.
--
SELECT e.first_name, e.last_name, e.hire_date FROM employees e
WHERE EXTRACT(year from hire_date) = 1986;
--
--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
--
SELECT d.dept_no, d.dept_name, mgr.emp_no AS mgr_emp_no, mgr.last_name AS mgr_last_name, mgr.first_name AS mgr_first_name FROM departments AS d
JOIN department_manager dm ON dm.dept_no = d.dept_no
JOIN employees mgr ON mgr.emp_no = dm.emp_no
--
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
--
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name FROM employees AS e

JOIN department_employees de ON de.emp_no = e.emp_no
JOIN departments dp ON dp.dept_no = de.dept_no
--
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
--
SELECT e.first_name, e.last_name, e.sex FROM employees e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';
--
--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
--
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees e
JOIN department_employees de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';
--
--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
--
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees e
JOIN department_employees de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE d.dept_name IN ('Development','Sales');
--
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
--
SELECT COUNT(last_name) AS Frequency, last_name FROM employees GROUP BY last_name ORDER BY Frequency DESC;