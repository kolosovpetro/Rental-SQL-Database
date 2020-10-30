/* Write a query to get Product list (name, units on order , units in stock) of stock is less than the quantity on order. */
SELECT 
	[Northwind].[dbo].[Products].[ProductName], 
	[Northwind].[dbo].[Products].[UnitsOnOrder], 
	[Northwind].[dbo].[Products].[UnitsInStock]
FROM [Northwind].[dbo].[Products]
WHERE [Northwind].[dbo].[Products].[UnitsInStock] < [Northwind].[dbo].[Products].[UnitsOnOrder]
ORDER BY [Northwind].[dbo].[Products].[UnitsOnOrder] DESC