/* For every rental display date of rental, date of return and name of client
that made the rental */
SELECT date_of_rental, date_of_return, last_name
FROM rentals r, clients cl
WHERE r.client_id = cl.client_id