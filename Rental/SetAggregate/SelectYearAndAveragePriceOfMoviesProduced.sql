/* For every year of production, display the average price of the movie.
Order the results by year */
SELECT mov.year, AVG(mov.price) "Averagre price"
FROM movies mov
JOIN copies cop ON cop.movie_id = mov.movie_id
GROUP BY mov.year
ORDER BY mov.year