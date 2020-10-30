/* Write a query to get Product list (id, name, unit price) where current products cost less than $20. */
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice < 20
ORDER BY UnitPrice DESC