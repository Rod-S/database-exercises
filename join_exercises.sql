use employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'department manager'
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
WHERE dm.emp_no = e.emp_no AND dm.to_date > curdate();

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'department manager'
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
WHERE dm.emp_no = e.emp_no AND dm.to_date > curdate() AND e.gender = 'F';

SELECT titles.title, count(e.emp_no)
FROM employees as e
JOIN titles ON titles.emp_no = e.emp_no
JOIN dept_emp as de ON de.emp_no = e.emp_no
JOIN departments as d ON d.dept_no = de.dept_no
WHERE e.emp_no = de.emp_no AND d.dept_name = 'Customer Service' AND de.to_date > curdate()
GROUP BY titles.title;

SELECT d.dept_name AS 'department name', CONCAT(e.first_name, ' ', e.last_name) AS 'name', s.salary
FROM employees as e
JOIN dept_manager as dm ON e.emp_no = dm.emp_no
JOIN dept_emp as de ON de.emp_no = e.emp_no
JOIN salaries as s ON s.emp_no = e.emp_no
JOIN departments as d ON d.dept_no = dm.dept_no
WHERE dm.to_date > curdate() AND s.to_date > curdate();

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'employee name', d.dept_name as 'Department Name', CONCAT(e2.first_name, ' ', e2.last_name) as 'Manager Name'
FROM employees as e
         JOIN dept_emp as de ON de.emp_no = e.emp_no
         JOIN dept_manager dm on dm.emp_no = de.emp_no
         JOIN departments as d ON d.dept_no = dm.dept_no
         JOIN employees e2 on de.emp_no = dm.emp_no
WHERE (de.to_date > curdate() AND de.to_date > curdate());