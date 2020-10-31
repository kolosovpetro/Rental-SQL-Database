--Task 7: Display name of the client, that made the first rental in the history
SELECT TOP(1) first_name, last_name
FROM rentals r
JOIN clients cl ON cl.client_id = r.client_id
JOIN copies cop ON cop.copy_id = r.copy_id
JOIN movies m ON m.movie_id = cop.movie_id
ORDER BY date_of_rental ASC

--Task 7: Different approach
SELECT TOP(1) first_name, last_name
FROM rentals r, clients cl, copies cop, movies m
WHERE cl.client_id = r.client_id
AND cop.copy_id = r.copy_id
AND m.movie_id = cop.movie_id
ORDER BY date_of_rental ASC