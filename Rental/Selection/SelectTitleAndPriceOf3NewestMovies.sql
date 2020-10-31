/* Display title and price of three newest movies */
SELECT TOP(3) mov.title, mov.price
FROM movies mov
ORDER BY mov.year DESC