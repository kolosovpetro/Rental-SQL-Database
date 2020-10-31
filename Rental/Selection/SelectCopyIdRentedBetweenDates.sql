/* Display the IDs of all copies, that were rented between 2005-07-15 and
2005-07-22. Eliminate duplicates. Present the results in ascending order */
SELECT cop.copy_id
FROM copies cop
JOIN rentals rent ON rent.copy_id = cop.copy_id
WHERE rent.date_of_rental BETWEEN '2005-07-15' AND '2005-07-22'
ORDER BY cop.copy_id
