/*  Display names and birthdays of clients with age greater than the average
age. Age can be calculated by subtracting birthday from NOW(). */
SELECT 
	CONCAT(cl.first_name, ' ', cl.last_name) "Full name",
	cl.birthday "Birthday"
FROM clients cl
WHERE DATEDIFF(YEAR, cl.birthday, GETDATE()) > (SELECT AVG(DATEDIFF(YEAR, cl.birthday, GETDATE()))
												FROM clients cl)