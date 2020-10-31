/* For every client display its first, last name and number of rentals. Order
the results by last names */
SELECT 
	CONCAT(cl.first_name, ' ', cl.last_name) "Full Name",
	COUNT(*) "Rental count"
FROM clients cl
JOIN rentals rent ON rent.client_id = cl.client_id
GROUP BY cl.client_id, cl.first_name, cl.last_name
ORDER BY cl.last_name