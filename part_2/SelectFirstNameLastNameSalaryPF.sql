/* Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary) */
SELECT FirstName, LastName, Extension, Extension/6 "PF"
FROM Employees