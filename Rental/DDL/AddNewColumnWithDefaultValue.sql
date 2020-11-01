/*  Add new column to table books: publisher as VARCHAR(300), with
default value ’Unknown’ */
ALTER TABLE books
ADD publisher VARCHAR(300) NOT NULL
DEFAULT 'Unknown'