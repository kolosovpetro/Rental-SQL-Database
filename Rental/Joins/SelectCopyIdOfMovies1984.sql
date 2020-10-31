/* Display IDs of copies of movies produced in 1984 */
SELECT cop.copy_id
FROM movies mov
JOIN copies cop ON cop.movie_id = mov.movie_id
WHERE mov.year = '1984'