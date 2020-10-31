/* Display titles of movies, with price greater than price of movie ’Frantic’. */
SELECT mov.title "Prices greater Frantic"
FROM movies mov
WHERE mov.price > (SELECT mov.price
					FROM movies mov
					WHERE mov.title = 'Frantic')