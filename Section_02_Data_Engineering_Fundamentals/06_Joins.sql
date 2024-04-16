SELECT
    c.customerName
  , p.paymentDate
  , p.amount
FROM
    customers AS c
INNER JOIN
    payments AS p
ON
    c.customerNumber = p.customerNumber;


SELECT
    c.customerName
  , p.paymentDate
  , p.amount
FROM
    customers AS c
LEFT JOIN
    payments AS p
ON
    c.customerNumber = p.customerNumber;


SELECT
    c.customerName
  , p.paymentDate
  , p.amount
FROM
    customers AS c
RIGHT JOIN
    payments AS p
ON
    c.customerNumber = p.customerNumber;


SELECT
    c.customerName
  , p.paymentDate
  , p.amount
FROM
    customers AS c
FULL JOIN
    payments AS p
ON
    c.customerNumber = p.customerNumber;


SELECT
    c.customerName
  , p.paymentDate
  , p.amount
FROM
    payments AS p
CROSS JOIN
    customers AS c;