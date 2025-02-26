/*LEFT JOIN is used when we want to select all the rows from the left table,
and also when you are getting the rows from the right table that do not have a match 
in the left table*/
SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;
--In this other example we change the order of the tables
SELECT * FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;
--Here we are selecting only two columns from the table dni
SELECT users.name, dni.dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;
--
SELECT users.name, languages.name
FROM users
LEFT JOIN users_languages ON users_languages.user_id = users.user_id
LEFT JOIN languages ON users_languages.language_id = languages.language_id;