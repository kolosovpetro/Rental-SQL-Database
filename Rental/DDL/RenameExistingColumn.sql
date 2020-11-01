/* Rename column author to author fullname */
EXEC sp_rename 'books.author', 'author_fullname', 'COLUMN'