/*  Increase price of all movies produced before 1980 by 0.5 */
UPDATE movies
SET price = price + 0.5
WHERE year < 1980