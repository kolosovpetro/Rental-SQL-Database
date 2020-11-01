/* Display names of actors and titles of movies, that starred also Jean Reno.
Order by movie titles */
SELECT 
	CONCAT(act.first_name, ' ', act.last_name) "Full actor name",
	mov.title "Movie title"
FROM movies mov
JOIN starring star ON star.movie_id = mov.movie_id
JOIN actors act ON act.actor_id = star.actor_id
WHERE mov.title IN (SELECT mov.title
					FROM movies mov
					JOIN starring star ON star.movie_id = mov.movie_id
					JOIN actors act ON act.actor_id = star.actor_id
					WHERE act.first_name = 'Jean' AND act.last_name = 'Reno')
