SELECT * FROM departments;SELECT *  FROM employees WHERE  first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT *  FROM employees WHERE  first_name = 'Irena' OR  first_name = 'Vidya' OR  first_name =  'Maya';

SELECT *  FROM employees WHERE  (first_name = 'Irena' OR  first_name = 'Vidya' OR  first_name =  'Maya') AND gender = 'M';

SELECT * FROM employees WHERE (last_name LIKE 'E%') AND last_name LIKE '%E' ;

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E' ;

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name  NOT LIKE '%qu%';

SELECT first_name, last_name FROM employees WHERE  first_name = 'Irena' OR  first_name = 'Vidya' OR  first_name =  'Maya' ORDER BY first_name, last_name;

SELECT first_name, last_name FROM employees WHERE  first_name = 'Irena' OR  first_name = 'Vidya' OR  first_name =  'Maya' ORDER BY  last_name ASC ,first_name ASC;

SELECT  last_name, emp_no FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no;

SELECT  last_name, emp_no FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no DESC ;

