/* For every client display its email address constructed in the following
way: lowercase first name, dot, lowercase last name, ’@wsb.pl’ */
SELECT CONCAT(LOWER(cl.first_name), '.', LOWER(cl.last_name), '@wsb.pl') "User emails"
FROM clients cl