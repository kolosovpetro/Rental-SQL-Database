/*  Display all actors in the following form: first letter of first name, dot,
space, last name */
SELECT CONCAT(CONCAT(SUBSTRING(act.first_name, 1,1), '. '), act.last_name)
FROM actors act