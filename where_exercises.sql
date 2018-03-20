# Create a file named where_exercises.sql. Make sure to use the employees database
#
USE employees;
# PART 1

# 2 Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT first_name, last_name
FROM employees
WHERE first_name IN('Irena', 'Vidya', 'Maya');

# 3 Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

# 4 Find all employees hired in the 90s — 135,214 rows.
SELECT hire_date ,last_name, first_name
FROM employees
WHERE hire_date LIKE '199%'
ORDER BY hire_date ASC ;

# 5 Find all employees born on Christmas — 842 rows.
SELECT last_name, first_name, birth_date
FROM employees
WHERE birth_date LIKE '%12%25';

# 6 Find all employees with a 'q' in their last name — 1,873 rows.
SELECT last_name, first_name
FROM employees
WHERE last_name LIKE '%q%';

# PART 2

# 1 Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena'
      OR first_name = 'Vidya'
      OR first_name = 'Maya';

# 2 Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT first_name, last_name
FROM employees
WHERE gender = 'M'
      AND (first_name = 'Irena'
      OR first_name = 'Vidya'
      OR first_name = 'Maya');

# 3 Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

# 4 Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';
# or
SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%E';

# 5 Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT hire_date ,birth_date, last_name, first_name
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%12%25'
ORDER BY hire_date ASC ;

# 6 Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' and last_name NOT LIKE '%qu%';