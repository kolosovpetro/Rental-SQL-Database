/* Display the names of all clients and actors. Order the results by last name. */
SELECT cl.first_name "Firstname", cl.last_name "Lastname"
FROM clients cl
UNION
SELECT act.first_name "Firstname", act.last_name "Lastname"
FROM actors act