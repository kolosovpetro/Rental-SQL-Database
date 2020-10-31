/* For each movie display its 
title, 
minimum, 
maximum and 
average rental
time, 
number of times it was rented. 
Order the results from most popular
movie to least one. */

SELECT 
	mov.title "Title",
	MIN(DATEDIFF(HOUR, rent.date_of_rental, rent.date_of_return)) "Min time",
	MAX(DATEDIFF(HOUR, rent.date_of_rental, rent.date_of_return)) "Max time",
	COUNT(*) "Times rented"
FROM movies mov
JOIN copies cop ON cop.movie_id = mov.movie_id
JOIN rentals rent ON rent.copy_id = cop.copy_id
GROUP BY mov.title
ORDER BY COUNT(*) DESC