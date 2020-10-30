/* Return a list of category names and descriptions of all categories beginning with 'Co' from the Categories table. */
SELECT CategoryName, Description
FROM Categories
WHERE LOWER(CategoryName) LIKE 'co%'