USE employees;
#replace with name of column

SELECT CONCAT(first_name, ' ', last_name)
FROM employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'All employees'
FROM employees;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'A%a';