/*  For every actor display the number of movies in which he/she played.
Skip actors, that played in only one movie */
SELECT 
	CONCAT(act.first_name, ' ', act.last_name) "Full Name",
	COUNT(*) "Number of movies"
FROM actors act
JOIN starring star ON star.actor_id = act.actor_id
JOIN movies mov ON mov.movie_id = star.movie_id
GROUP BY act.first_name, act.last_name
HAVING COUNT(*) > 1