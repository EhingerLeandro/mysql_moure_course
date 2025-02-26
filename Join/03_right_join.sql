/*Right join is used when we want to select all the rows 
from the right table, the right table is the second one that
is being joined*/
SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;
--
SELECT * FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;
--
SELECT users.name, dni.dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;