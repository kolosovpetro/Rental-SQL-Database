/*  Display movie titles that are available for rental. Do not use JOINs. */
SELECT mov.title "Available movies"
FROM movies mov
WHERE mov.movie_id IN (SELECT cop.movie_id
						FROM copies cop
						WHERE cop.available = 1)