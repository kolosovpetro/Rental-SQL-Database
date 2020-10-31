--Task 12: Display titles of movies rented between '2005-07-15' and '2005-07-25'.
--Eliminate duplicates
SELECT DISTINCT mov.title
FROM rentals rent
JOIN clients cl ON cl.client_id = rent.client_id
JOIN copies cop ON cop.copy_id = rent.copy_id
JOIN movies mov ON mov.movie_id = cop.movie_id
WHERE date_of_rental BETWEEN '2005-07-15' AND '2005-07-25';

--Task 12: Different approach
SELECT DISTINCT mov.title
FROM rentals rent, clients cl, copies cop, movies mov
WHERE cl.client_id = rent.client_id
AND cop.copy_id = rent.copy_id
AND mov.movie_id = cop.movie_id
AND date_of_rental BETWEEN '2005-07-15' AND '2005-07-25';