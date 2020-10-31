/* Return all employee first and last names from the Employees table by combining the 2 columns aliased as 'DisplayName'. 
The combined format should be 'LastName, FirstName'. */
SELECT CONCAT(CONCAT(emp.FirstName, ', '), emp.LastName)
FROM Employees emp