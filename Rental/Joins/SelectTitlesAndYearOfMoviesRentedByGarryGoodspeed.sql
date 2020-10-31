--Task 6: Display titles and years of production of all the movies rented by Gary Goodspeed
SELECT title, year
FROM rentals r
JOIN clients cl ON cl.client_id = r.client_id
JOIN copies cop ON cop.copy_id = r.copy_id
JOIN movies m ON m.movie_id = cop.movie_id
WHERE first_name = 'Gary' AND last_name = 'Goodspeed';

--Task 6: Different approach
SELECT title, year
FROM rentals r, clients cl, copies cop, movies m
WHERE cl.client_id = r.client_id
AND cop.copy_id = r.copy_id
AND m.movie_id = cop.movie_id
AND first_name = 'Gary' 
AND last_name = 'Goodspeed';