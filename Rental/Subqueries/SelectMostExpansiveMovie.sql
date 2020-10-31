/* Display the title of the most expensive movie. Do not use keyword LIMIT. */
SELECT mov.title "Movie title"
FROM  movies mov
WHERE mov.price = (SELECT MAX(mov.price) FROM movies mov)