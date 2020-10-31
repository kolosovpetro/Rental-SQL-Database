/* Fetch first and last names of all clients with last name longer by at least
three characters than first name */
SELECT c.first_name, c.last_name
FROM clients c
WHERE LEN(c.last_name) - LEN(c.first_name) > 3