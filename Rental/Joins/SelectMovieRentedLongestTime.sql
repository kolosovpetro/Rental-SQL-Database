--Task 10: Display the movie title, that was rented for the longest time
SELECT TOP(1) mov.title
FROM rentals rent
JOIN clients cl ON cl.client_id = rent.client_id
JOIN copies cop ON cop.copy_id = rent.copy_id
JOIN movies mov ON mov.movie_id = cop.movie_id
ORDER BY DATEDIFF(DAY, rent.date_of_rental, rent.date_of_return) DESC;

--Task 10: Different approach
SELECT TOP(1) mov.title
FROM rentals rent, clients cl, copies cop, movies mov
WHERE cl.client_id = rent.client_id
AND cop.copy_id = rent.copy_id
AND mov.movie_id = cop.movie_id
ORDER BY DATEDIFF(DAY, rent.date_of_rental, rent.date_of_return) DESC;