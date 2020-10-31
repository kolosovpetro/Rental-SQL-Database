--Task 11: Display last names of clients that made rentals between '2005-07-15' and '2005-07-20'. 
--Eliminate duplicates
SELECT DISTINCT first_name, last_name
FROM rentals rent
JOIN clients cl ON cl.client_id = rent.client_id
WHERE date_of_rental BETWEEN '2005-07-15' AND '2005-07-20';

--Task 11: Different approach
SELECT DISTINCT first_name, last_name
FROM rentals rent, clients cl
WHERE cl.client_id = rent.client_id
AND date_of_rental BETWEEN '2005-07-15' AND '2005-07-20';