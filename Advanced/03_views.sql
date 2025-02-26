CREATE VIEW v_adult_users AS
SELECT name, age 
FROM users
WHERE age>=18;
/* A VIEW is used to create a virtual table, so that, 
it's not necessary to write again the needed query*/
SELECT * FROM v_adult_users;