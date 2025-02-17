/*Here you can see how inner join is used with a 1:1 relation, 
in this case we are joining the tables users and dni*/

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

/*Next we are joining the tables using the relation 1:n */

SELECT * FROM users 
INNER JOIN companies
ON users.company_id = companies.company_id;
--You can change the order of the columns like in the next example
SELECT * FROM companies
INNER JOIN users
ON users.company_id = companies.company_id;
--Here we are selecting only two columns from the table companies
SELECT users.name, companies.name FROM companies
INNER JOIN users
ON users.company_id = companies.company_id;

/*In the next example(S) we are joining the tables using the relation n:n,
for this kind of relation we need a middle table.*/

SELECT *
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;
-- With this other example we are specifying the columns that we want to select
SELECT users.name, languages.name
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;
