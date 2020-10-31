/* Return the product id and the total quantities ordered for each product id in the Order Details table. */
SELECT ProductID, SUM(Quantity) AS Total_Quantity
FROM [Order Details]
GROUP BY ProductID