/* Write a query to get Product list (id, name, unit price) where products cost between $15 and $25. */
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice BETWEEN 15 AND 25
ORDER BY UnitPrice DESC