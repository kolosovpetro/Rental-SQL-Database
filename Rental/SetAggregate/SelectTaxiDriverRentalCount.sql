/*  How many time movie ’Taxi Driver’ was rented? */
SELECT COUNT(*) "Taxi driver rented times"
FROM movies mov
JOIN copies cop ON cop.movie_id = mov.movie_id
JOIN rentals rent ON rent.copy_id = cop.copy_id
WHERE mov.title = 'Taxi Driver'