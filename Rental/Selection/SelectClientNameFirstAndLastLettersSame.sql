/* Display the names of clients, whose first and last letter of name are the
same. Ignore the case, eliminate duplicates */
SELECT DISTINCT cl.first_name
FROM clients cl
WHERE SUBSTRING(cl.first_name, 1, 1) = SUBSTRING(cl.first_name, LEN(cl.first_name), LEN(cl.first_name))