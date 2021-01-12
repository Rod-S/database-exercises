USE employees;

Select *
FROM titles
WHERE to_date;

DESCRIBE titles;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Baek')
AND emp_no < 20000;

