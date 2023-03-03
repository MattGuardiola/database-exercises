USE ymir_employees;

SELECT CONCAT(first_name, ' ', last_name) as full_name
FROM employees
WHERE last_name LIKE 'E%' OR '%e';

SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25;

SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25
AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date desc;

SELECT datediff(curdate(), hire_date)
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25
AND YEAR(hire_date) BETWEEN 1990 AND 1999;