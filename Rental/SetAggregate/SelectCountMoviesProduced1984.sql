/*  Display the number of movies produced in 1984 */
SELECT COUNT(*)
FROM movies mov
WHERE mov.year = '1984'