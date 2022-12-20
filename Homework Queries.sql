SELECT  e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN saleries AS s
ON (e.emp_no = s.emp_no)

SELECT e.first_name, e.last_name, e.hire_date 
FROM employees AS e
WHERE e.hire_date 
BETWEEN '1986-01-01' AND '1986-12-31'


SELECT	dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
	INNER JOIN departments AS d ON (dm.dept_no = d.dept_no)
	INNER JOIN employees AS e ON (dm.emp_no = e.emp_no)

SELECT	e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
	INNER JOIN dept_emp AS de ON (e.emp_no = de.emp_no)
	INNER JOIN departments AS d ON (de.dept_no = d.dept_no)

SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE e.first_name ='Hercules' AND e.last_name LIKE 'B%'

SELECT	e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
	INNER JOIN dept_emp AS de ON (e.emp_no = de.emp_no)
	INNER JOIN departments AS d ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'

SELECT	e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
	INNER JOIN dept_emp AS de ON (e.emp_no = de.emp_no)
	INNER JOIN departments AS d ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales', 'Development')


SELECT e.last_name, 
COUNT(e.last_name) 
FROM employees AS e
GROUP BY e.last_name
ORDER BY COUNT(e.last_name) DESC;