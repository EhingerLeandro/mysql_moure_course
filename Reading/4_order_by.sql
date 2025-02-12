-- El orderby por defecto es ascendente
SELECT * FROM users ORDER BY age;
SELECT * FROM users ORDER BY age desc;
--
SELECT * FROM users WHERE email="carlos@gmail.com" ORDER BY age desc;
SELECT name, surname FROM users WHERE email="carlos@gmail.com" ORDER BY age desc;
