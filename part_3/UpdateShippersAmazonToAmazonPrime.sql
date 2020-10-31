/* Change the company name from 'Amazon' to 'Amazon Prime Shipping' in the Shippers table using SQL. */
UPDATE Shippers
SET CompanyName = 'Amazon Prime Shipping'
WHERE CompanyName = 'Amazon'