/* What was the average rental time of ’Ronin’? */
SELECT AVG(DATEDIFF(HOUR, rent.date_of_rental, rent.date_of_return)) "AVG time Ronin Rented"
FROM movies mov
JOIN copies cop ON cop.movie_id = mov.movie_id
JOIN rentals rent ON rent.copy_id = cop.copy_id
WHERE mov.title = 'Ronin'