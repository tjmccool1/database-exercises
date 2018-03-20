# functions exercise
# 1 Copy the order_by_exercises.sql script and save it as functions_exercises.sql.
USE employees;

# 2 Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name,' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;

# 3 For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
# SELECT * ,  datediff(curdate(), hire_date)/365 AS 'YEARS AT COMPANY'
SELECT * ,cast(datediff(curdate(),hire_date)/365 AS DECIMAL(2,0))
  AS 'YEARS',
  cast(datediff(curdate(),hire_date)%365/30 AS DECIMAL(2,0))
    AS 'MONTHS',
  cast(datediff(curdate(),hire_date)%365%30 AS DECIMAL(2,0))
    AS 'DAYS'
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%12%25'
ORDER BY birth_date DESC , hire_date DESC ;

# SELECT curdate();
# SELECT NOW();