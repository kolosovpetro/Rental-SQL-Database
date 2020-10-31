/* For every rental display date of rental, date of return and name of client
that made the rental */
SELECT date_of_rental, date_of_return, last_name
FROM rentals r
JOIN clients cl ON cl.client_id = r.client_id;