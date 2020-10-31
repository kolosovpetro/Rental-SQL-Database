/* Display the name of the client that made the first rental in the history. Do
not use keyword LIMIT. */
SELECT cl.first_name, cl.last_name
FROM rentals rent
JOIN clients cl ON cl.client_id = rent.client_id
WHERE rent.date_of_rental = (SELECT MIN(rent.date_of_rental) FROM rentals rent)
