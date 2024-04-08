SELECT
    COUNT(*) AS high_salary_count
FROM
    employees
WHERE
    salary > 70000;


SELECT
    COUNT(CASE WHEN salary > 70000 THEN 1 END) AS high_salary_count
  , COUNT(CASE WHEN salary BETWEEN 50000 AND 70000 THEN 1 END) AS medium_salary_count
  , COUNT(CASE WHEN salary < 50000 THEN 1 END) AS low_salary_count
FROM
    employees;