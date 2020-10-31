/* Display movie titles, with second to last letter ’o’ */
SELECT mov.title
FROM movies mov
WHERE SUBSTRING(mov.title, LEN(mov.title) - 1, 1) = 'o'