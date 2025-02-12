SELECT name, age,
CASE
	WHEN age>=18 THEN "Si es mayor de edad"
    ELSE "No es mayor de edad"
END AS "Mayor de edad?"
FROM users;
--Diferentes maneras de usar CASE
SELECT name, age,
CASE
	WHEN age>18 THEN "Si es mayor de edad"
    WHEN age=18 THEN "Acaba de cumplir mayoría"
    ELSE "No es mayor de edad"
END AS "Mayor de edad?"
FROM users;
--
SELECT name, age,
CASE
	WHEN age>18 THEN True
    ELSE False
END AS "Mayor de edad?"
FROM users;
