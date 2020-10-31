/* Display titles of movies in which both De Niro and Reno played. */
SELECT mov.title
FROM movies mov
JOIN starring star ON star.movie_id = mov.movie_id
JOIN actors act ON act.actor_id = star.actor_id
WHERE act.last_name = 'De Niro'
INTERSECT
SELECT mov.title
FROM movies mov
JOIN starring star ON star.movie_id = mov.movie_id
JOIN actors act ON act.actor_id = star.actor_id
WHERE act.last_name = 'Reno'