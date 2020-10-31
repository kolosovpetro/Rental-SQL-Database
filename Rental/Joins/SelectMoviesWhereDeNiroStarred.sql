--Task 9: Display titles of all movies that starred Robert De Niro
SELECT title
FROM movies m
JOIN starring s ON s.movie_id = m.movie_id
JOIN actors act ON act.actor_id = s.actor_id
WHERE first_name = 'Robert' AND last_name = 'De Niro';

--Task 9: Different approach
SELECT title
FROM movies m, starring s, actors act
WHERE s.movie_id = m.movie_id
AND act.actor_id = s.actor_id
AND first_name = 'Robert' 
AND last_name = 'De Niro';