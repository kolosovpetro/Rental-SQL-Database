/* Display last names of all actors with first names Arnold, Tom and Jodie.
Results should be presented in descending order */
SELECT act.last_name
FROM actors act
WHERE act.first_name IN ('Arnold', 'Tom', 'Jodie')
ORDER BY act.last_name DESC