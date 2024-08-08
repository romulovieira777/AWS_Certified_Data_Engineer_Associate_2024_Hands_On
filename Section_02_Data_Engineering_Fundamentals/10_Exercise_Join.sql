/*
Practicing join queries in SQL

We've loaded upa couple of tables of data from a fictional retailer: Products, containing information about the products
sold by the company, ans Suppliers, containing information about the companies that provided those products. These two
tables are connected by columns named SupplierID.

Create a report of every ProductName in the Products table, together with the CompanyName associated with each product's
supplier.

This query should be written in such a way that every product is listed in your report, even if no match exists in the
Suppliers table for its SupplierID. Your final results should be sorted alphabetically by ProductName.

Learning Objective
Learn how to use JOIN operations to combine data from multiple tables in SQL.
*/
SELECT
    Products.ProductName
  , Suppliers.CompanyName
FROM
    Products
LEFT JOIN
    Suppliers
ON
    Products.SupplierID = Suppliers.SupplierID
ORDER BY
    Products.ProductName;