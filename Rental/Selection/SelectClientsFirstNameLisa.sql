/*  Fetch last names of all clients with first name ’Lisa’ */
SELECT c.last_name
FROM clients c
WHERE c.first_name = 'Lisa'