/* For all clients display: first name, first letter of first name, last letter of
first name. Columns should have titles as below */
SELECT 
	cl.first_name "First name",
	SUBSTRING(cl.first_name, 1, 1) "First letter of name",
	SUBSTRING(cl.first_name, LEN(cl.first_name), LEN(cl.first_name)) "Last letter of name"
FROM clients cl