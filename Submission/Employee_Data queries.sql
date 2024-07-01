-- 1) List the employee number, last name, first name, sex, and salary of each employee.
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM
	employees e
	join salaries s on e.emp_no = s.emp_no
Order by
	e.last_name ASC,
	s.salary DESC;

-- 2) List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT
	e.first_name,
	e.last_name,
	e.hire_date
FROM
	employees e
WHERE
	e.hire_date >= '1986-01-01' AND e.hire_date < '1987-01-01';

-- 3) List the manager of each department along with their department number, 
--    department name, employee number, last name, and first name.
SELECT
	d.dept_no,
	d.dept_name, 
	e.emp_no,
	e.last_name, 
	e.first_name,
	title
FROM 
	departments d
	join employees e on emp_no = e.emp_no
	join titles on e.emp_title_id = title_id
WHERE 
	title = 'Manager';

-- 4) List the department number for each employee along with that employee’s employee 
--	  number, last name, first name, and department name.
SELECT
	d.dept_no,
	d.dept_name, 
	e.emp_no,
	e.last_name, 
	e.first_name
FROM 
	departments d
	join employees e on emp_no = e.emp_no;

-- 5) List first name, last name, and sex of each employee whose first name is Hercules 
--    and whose last name begins with the letter B.
SELECT
	e.first_name,
	e.last_name,
	e.sex
FROM
	employees e
WHERE
	e.first_name = 'Hercules'
	and e.last_name like 'B%'
ORDER BY
	e.last_name ASC,
	e.first_name ASC;

-- 6) List each employee in the Sales department, including their employee number, 
--    last name, and first name.
SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name
FROM 
	employees e
JOIN departments d ON dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- 7) List each employee in the Sales and Development departments, including their 
--    employee number, last name, first name, and department name.
SELECT 
	e.emp_no,
	e.last_name, 
	e.first_name, 
	d.dept_name
FROM 
	employees e
JOIN departments d ON dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

-- 8) List the frequency counts, in descending order, of all the employee last names 
--    (that is, how many employees share each last name).
SELECT 
	e.last_name, 
	COUNT(e.last_name) AS frequency_count
FROM 
	employees e
GROUP BY 
	e.last_name
ORDER BY 
	frequency_count DESC;





