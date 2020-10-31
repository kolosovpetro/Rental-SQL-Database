/*  Display the price of the most expensive movie in the store */
SELECT MAX(mov.price)
FROM movies mov
JOIN copies cop ON cop.movie_id = mov.movie_id