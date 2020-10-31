/* For every client display the total amount of money he or she spent on
renting movies */
SELECT cl.last_name "Last name", SUM(mov.price) "Total spent"
FROM clients cl
JOIN rentals rent ON rent.client_id = cl.client_id
JOIN copies cop ON cop.copy_id = rent.copy_id
JOIN movies mov ON mov.movie_id = cop.movie_id
GROUP BY cl.last_name