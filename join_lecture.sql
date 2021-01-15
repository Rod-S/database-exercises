USE employees;

#output all current employees names and their current titles
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'employee name', titles.title
FROM employees
JOIN titles ON titles.emp_no = employees.emp_no
WHERE titles.to_date > NOW()
ORDER BY titles.title;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

# //SELECT title AS Book, first_name ||' '|| last_name AS Patron, loaned_on AS "Loaned on", return_by AS "Return by", returned_on AS "Returned on"
# FROM loans
# INNER JOIN books ON loans.book_id = books.id
# INNER JOIN patrons ON loans.patron_id = patrons.id;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON de.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM dept_emp AS de
         JOIN employees AS e ON de.emp_no = e.emp_no
         JOIN departments AS d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;