SELECT
    count(*) AS total_rows
FROM
    employees;


SELECT
    SUM(salary) AS total_salary
FROM
    employees;


SELECT
    AVG(salary) AS average_salary
FROM
    employees;


SELECT
    MAX(salary) AS highest_salary
FROM
    employees;