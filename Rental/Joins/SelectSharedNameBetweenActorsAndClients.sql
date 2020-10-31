--Task 13: For clients that have the same first name as one of the actors display:
--shared first name, last name of actor, last name of client

SELECT cl.first_name "Shared name", act.last_name "Actor's lastname", cl.last_name "Client's lastname"
FROM clients cl
JOIN actors act ON act.first_name = cl.first_name