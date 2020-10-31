/* Fetch titles of all movies produced in 1998 or 1999 */
SELECT title
FROM movies
WHERE year IN ('1998', '1999')