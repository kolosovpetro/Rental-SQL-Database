/* Return a list of customer id's from the Orders table with required dates 
between Jan 1, 1997 
and Jan 1, 1998 
and with freight under 100 units. */

SELECT CustomerID
FROM Orders
WHERE RequiredDate BETWEEN '01.01.1997' AND '01.01.1997' AND Freight < 100