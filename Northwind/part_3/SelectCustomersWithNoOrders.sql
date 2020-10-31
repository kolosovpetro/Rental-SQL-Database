/* Return a list of customer names who have no orders in the Orders table. */
SELECT cus.ContactName
FROM Customers cus
EXCEPT
SELECT cus.ContactName
FROM Customers cus
JOIN Orders ord ON ord.CustomerID = cus.CustomerID