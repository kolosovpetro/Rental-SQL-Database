--Display last names of actors, that played in ’Terminator’
SELECT act.last_name "LastNames of Actors"
FROM movies m
JOIN starring s ON s.movie_id = m.movie_id
JOIN actors act ON act.actor_id = s.actor_id
WHERE title = 'Terminator';

--Different approach
SELECT act.last_name "LastNames of Actors"
FROM movies m, starring s, actors act
WHERE s.movie_id = m.movie_id
AND act.actor_id = s.actor_id
AND title = 'Terminator';