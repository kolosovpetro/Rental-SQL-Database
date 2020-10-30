/* Return all available columns in the Suppliers tables for the marketing managers and sales representatives that have a FAX number */
SELECT *
FROM Suppliers
WHERE Fax IS NOT NULL