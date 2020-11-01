/*  Delete all the movies in which no actor played */
DELETE FROM movies
WHERE title IN (SELECT mov.title
				FROM movies mov
				EXCEPT
				SELECT DISTINCT mov.title
				FROM movies mov
				JOIN starring star ON star.movie_id = mov.movie_id
				JOIN actors act ON act.actor_id = star.actor_id)