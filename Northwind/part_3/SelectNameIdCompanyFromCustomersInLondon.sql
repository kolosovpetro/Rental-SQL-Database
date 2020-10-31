/* Return the contact name, customer id, and company name of all Customers in London */
SELECT ContactName, CustomerID, CompanyName
FROM Customers
WHERE City = 'London'