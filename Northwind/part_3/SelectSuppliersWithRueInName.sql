/* Return all the company names, city, country and postal code from the Suppliers table with
the word 'rue' in their address. The list should ordered alphabetically by company name. */
SELECT CompanyName, City, Country, PostalCode
FROM Suppliers
WHERE Address LIKE '%rue%'