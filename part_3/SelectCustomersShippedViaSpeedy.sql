/* Return the customer name and customer address of all customers with orders that shipped using Speedy Express. */
SELECT cus.ContactName, cus.Address
FROM Customers cus
JOIN Orders ord ON ord.CustomerID = cus.CustomerID
JOIN Shippers sh ON sh.ShipperID = ord.ShipVia
