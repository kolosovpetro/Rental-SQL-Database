/* Increase by 1 price of all movies, that were rented more than twice */
UPDATE movies
SET price = price + 1
WHERE title IN (SELECT mov.title
				FROM movies mov
				JOIN copies cop ON cop.movie_id = mov.movie_id
				JOIN rentals rent ON rent.copy_id = cop.copy_id
				GROUP by mov.title
				HAVING COUNT(*) > 1)