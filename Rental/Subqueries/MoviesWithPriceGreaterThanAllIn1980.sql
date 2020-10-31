/* Display titles of movies, with price greater than price of all the movies
produced before 1980. */
SELECT *
FROM movies mov
WHERE mov.price > (SELECT MAX(mov.price)
					FROM movies mov
					WHERE mov.year < '1980')