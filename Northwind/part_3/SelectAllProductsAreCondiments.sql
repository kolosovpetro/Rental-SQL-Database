/* Return all product names from the Products table that are condiments. */
SELECT prod.ProductName
FROM Products prod
JOIN Categories cat ON cat.CategoryID = prod.CategoryID
WHERE cat.CategoryName = 'Condiments'