--For every rental display name of the client that made the rental and title of the rented movie
SELECT first_name, title
FROM rentals r
JOIN clients cl ON cl.client_id = r.client_id
JOIN copies cop ON cop.copy_id = r.copy_id
JOIN movies m ON m.movie_id = cop.movie_id;

--Task 5: Different approach
SELECT first_name, title
FROM rentals r, clients cl, copies cop, movies m
WHERE cl.client_id = r.client_id
AND cop.copy_id = r.copy_id
AND m.movie_id = cop.movie_id;