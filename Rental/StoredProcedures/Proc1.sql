/* Display titles of movies that were rented by both Gary Goodspeed and Brian Griffin */

CREATE PROCEDURE GetMoviesRentedByNameLastName(@NAME varchar(10), @SURNAME varchar(10)) 
AS
BEGIN
SET NOCOUNT ON

SELECT mov.title
FROM movies mov
JOIN copies cop ON cop.movie_id = mov.movie_id
JOIN rentals rent ON rent.copy_id = cop.copy_id
JOIN clients cl ON cl.client_id = rent.client_id
WHERE cl.first_name = @NAME AND cl.last_name = @SURNAME
 
END;

EXEC GetMoviesRentedByNameLastName 'Gary', 'Goodspeed'
