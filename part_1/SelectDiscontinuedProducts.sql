/* Write a query to get discontinued Product list (Product ID and name) */
SELECT ProductID, ProductName
FROM Products
WHERE Discontinued = 1