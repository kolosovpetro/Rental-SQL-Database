/* Return a complete list of company names from the Shippers table. 
Include freight totals rounded to the nearest whole number for each shipper from the Orders table for those shippers with orders. */
SELECT shippers.CompanyName, ROUND(SUM(orders.Freight), 0) "Total Freight"
FROM Shippers shippers
JOIN Orders orders ON orders.ShipVia = shippers.ShipperID
GROUP BY shippers.CompanyName
