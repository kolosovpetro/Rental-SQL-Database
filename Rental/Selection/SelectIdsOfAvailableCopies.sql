/* Display IDs of all movies with copies available for rent. Eliminate
duplicates. Present the results in ascending order */
SELECT DISTINCT cop.copy_id "Available copy id"
FROM movies mov
JOIN copies cop ON cop.movie_id = mov.movie_id
WHERE cop.available = 1
ORDER BY cop.copy_id