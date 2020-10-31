/*  Display IDs and rent time (in days) of all copies, that were rented for
more than one day */
SELECT cop.copy_id, DATEDIFF(day, rent.date_of_rental, rent.date_of_return) "Days rented"
FROM copies cop
JOIN rentals rent ON rent.copy_id = cop.copy_id
WHERE DATEDIFF(day, rent.date_of_rental, rent.date_of_return) > 1