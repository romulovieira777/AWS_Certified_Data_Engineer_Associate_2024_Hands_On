SELECT
    salesperson
  , Jan AS Jan_sales
  , Feb AS Feb_sales
FROM (
    SELECT
        salesperson
      , month
      , sales
    FROM
        sales
     ) AS sourceTable
PIVOT (
    SUM(sales)
    FOR month IN (Jan, Feb)
) AS pivotTable;


SELECT
    salesperson
  , SUM(CASE WHEN month = 'Jan' THEN sales ELSE 0 END) AS Jan_sales
  , SUM(CASE WHEN month = 'Feb' THEN sales ELSE 0 END) AS Feb_sales
FROM
    sales
GROUP BY
    salesperson;