/* Display names of clients that rented the same copies of movies as Brian
Griffin */
SELECT DISTINCT CONCAT(cl.first_name, ' ', cl.last_name) "Full name"
FROM clients cl
JOIN rentals rent ON rent.client_id = cl.client_id
JOIN copies cop ON cop.copy_id = rent.copy_id
JOIN movies mov ON mov.movie_id = cop.movie_id
WHERE cop.copy_id IN (SELECT cop.copy_id
					FROM clients cl
					JOIN rentals rent ON rent.client_id = cl.client_id
					JOIN copies cop ON cop.copy_id = rent.copy_id
					JOIN movies mov ON mov.movie_id = cop.movie_id
					WHERE cl.first_name = 'Brian' AND cl.last_name = 'Griffin')