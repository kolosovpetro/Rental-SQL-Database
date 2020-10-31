/* Fetch title and price of all movies with price exceeding 9. Order results
ascending by price. */
SELECT m.title, m.price
FROM movies m
WHERE m.price > 9