/* For every copy display it’s ID and title of the movie. Order the results by
copy ID */
SELECT cop.copy_id "Copy IDs", mov.title "Movie Title"
FROM copies cop
JOIN movies mov ON mov.movie_id = cop.copy_id