-- This code shows absolutely all the information from both tables
SELECT * FROM users
INNER JOIN dni;
-- In this other case we are joining the tables using the ON clause
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;
-- In this other example INNER JOIN is changed to JOIN, and both do the same thing
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;
