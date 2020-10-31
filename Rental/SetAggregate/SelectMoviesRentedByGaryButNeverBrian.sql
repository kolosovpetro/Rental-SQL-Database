/* Display titles of movies that were rented by Gary Goodspeed and were
never rented by Brian Griffin */
SELECT mov.title
FROM movies mov
JOIN copies cop ON cop.movie_id = mov.movie_id
JOIN rentals rent ON rent.copy_id = cop.copy_id
JOIN clients cl ON cl.client_id = rent.client_id
WHERE cl.first_name = 'Gary' AND cl.last_name = 'Goodspeed'
EXCEPT
SELECT mov.title
FROM movies mov
JOIN copies cop ON cop.movie_id = mov.movie_id
JOIN rentals rent ON rent.copy_id = cop.copy_id
JOIN clients cl ON cl.client_id = rent.client_id
WHERE cl.first_name = 'Brian' AND cl.last_name = 'Griffin'