/* Write a query to count current and discontinued products. */
SELECT
	/* Subquery 1 */
	(SELECT COUNT([Northwind].[dbo].[Products].[ProductName])
	 FROM [Northwind].[dbo].[Products]
	 WHERE [Northwind].[dbo].[Products].[Discontinued] = 1 
	 GROUP BY [Northwind].[dbo].[Products].[Discontinued]) AS Discontinued_Count_True,
	 /* Subquery 2 */
	(SELECT COUNT([Northwind].[dbo].[Products].[ProductName])
	 FROM [Northwind].[dbo].[Products]
	 WHERE [Northwind].[dbo].[Products].[Discontinued] = 0
	 GROUP BY [Northwind].[dbo].[Products].[Discontinued]) AS Discontinued_Count_False
	 