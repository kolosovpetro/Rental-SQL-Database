/* Display the titles of all the movies with copies available in the rental store.
Eliminate duplicates */
SELECT DISTINCT mov.title
FROM movies mov
JOIN copies cop ON cop.movie_id = mov.movie_id
WHERE cop.available = 1