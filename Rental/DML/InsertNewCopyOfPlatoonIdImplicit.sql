/*  Insert new copy of a movie ’Platoon’ into the relation. Do not explicitly
write movie id or assign copy id, instead try getting them from some query */
INSERT INTO copies
VALUES (1, (SELECT mov.movie_id
			FROM movies mov
			WHERE mov.title = 'Platoon'))