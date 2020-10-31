/* Return a count of the number of discontinued products in the Products table. */
SELECT COUNT(Discontinued) AS Number_Of_Discontinued
FROM Products
WHERE Discontinued = 1
GROUP BY Discontinued