/* Return a list of company names and contact names of all the Owners from the Customer table from Mexico, Sweden and Germany. */
SELECT CompanyName, ContactName
FROM Customers
WHERE Country IN ('Mexico', 'Sweden', 'Germany')