SELECT
    department_id
 , COUNT(employee_id) AS number_of_employees
FROM
    employees
WHERE
    join_date > '2020-01-01'
GROUP BY
    department_id;


SELECT
    YEAR(sale_date) AS sale_year
  , product_id
  , SUM(amount)     AS total_sales
FROM
    sales
GROUP BY
    sale_year
  , product_id
ORDER BY
    sale_year
  , total_sales DESC;