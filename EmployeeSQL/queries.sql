--Question 1

SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s ON
e.emp_no= s.emp_no;

--Question 2

SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date LIKE '%1986'

--Question 3

SELECT d.dept_no, d.dept_name, e.emp_no, e.first_name, e.last_name
FROM dept_manager as f
INNER JOIN departments as d ON
f.dept_no= d.dept_no
INNER JOIN employees as e ON
f.emp_no= e.emp_no

--Question 4

SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
INNER JOIN departments as d ON
de.dept_no= d.dept_no
INNER JOIN employees as e ON
de.emp_no= e.emp_no

--Question 5

SELECT first_name, last_name, sex FROM employees
WHERE first_name LIKE 'Hercules' 
AND last_name LIKE 'B%'

--Question 6
CREATE VIEW list AS
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_emp as de 
INNER JOIN departments as d ON
de.dept_no= d.dept_no
INNER JOIN employees as e ON
de.emp_no= e.emp_no;

SELECT * FROM list
WHERE dept_name LIKE 'Sales';

--Question 7

SELECT * FROM sales
WHERE dept_name IN ('Sales','Development');

--Question 8
SELECT last_name, COUNT(last_name) AS "Employee_Count"
from employees
GROUP BY last_name
ORDER BY "Employee_Count" DESC;
