/*  Display names of actors that played in ’Terminator’ but never played in
’Ghostbusters’ */
SELECT CONCAT(act.first_name, ' ', act.last_name) "Display Name"
FROM movies mov
JOIN starring star ON star.movie_id = mov.movie_id
JOIN actors act ON act.actor_id = star.actor_id
WHERE mov.title = 'Terminator'
EXCEPT
SELECT CONCAT(act.first_name, ' ', act.last_name) "Display Name"
FROM movies mov
JOIN starring star ON star.movie_id = mov.movie_id
JOIN actors act ON act.actor_id = star.actor_id
WHERE mov.title = 'Ghostbusters'