SELECT DISTINCT title FROM titles ;

SELECT last_name FROM employees
WHERE last_name LIKE '%E' AND last_name LIKE 'E%'
GROUP BY last_name;

SELECT last_name, first_name FROM employees
WHERE last_name LIKE '%E' AND last_name LIKE 'E%'
GROUP BY last_name ,first_name;


SELECT  DISTINCT last_name FROM employees
WHERE last_name LIKE '%q%' AND last_name  NOT LIKE '%qu%';


SELECT  COUNT(*) ,last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name  NOT LIKE '%qu%'
GROUP BY last_name
LIMIT 3;


SELECT COUNT(*) , gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

