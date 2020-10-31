/* For each client display it’s last name, count of all the rentals he or she
made and total number of rentals in the whole rental store. Order results by last
name. */
SELECT last_name, COUNT(last_name) AS client_rentals,
(SELECT COUNT(*) AS total_rentals FROM rentals)
FROM clients c
JOIN rentals r ON r.client_id = c.client_id
GROUP BY last_name;
