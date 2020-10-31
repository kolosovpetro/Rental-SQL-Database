/* Display titles of all movies, ordered from shortest to longest title */
SELECT title
FROM movies mov
ORDER BY LEN(mov.title)