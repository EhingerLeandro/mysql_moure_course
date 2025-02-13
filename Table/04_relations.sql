--Relation 1 to 1
CREATE TABLE dni (
	dni_id int AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
    );
-- In this we create another table that will be used to stablish a 1:n relation  with users
CREATE TABLE companies(
company_id int AUTO_INCREMENT PRIMARY KEY,
name varchar(100) NOT NULL
);
--
ALTER TABLE users
MODIFY company_id int;
-- Here we are adding a foreign key to the table users that is linked to the table companies
ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id);
--
CREATE TABLE languages(
	language_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);
/*This is a table that allows to link users with languages in a n:n relation,
as you can see every singular relation cannot be repeated.*/
CREATE TABLE users_languages(
	user_language_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int NOT NULL,
    language_id int NOT NULL,
    FOREIGN KEY(user_id) REFERENCES  users(user_id),
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE(language_id, user_id)
);
--
DELETE FROM dni WHERE dni_id=3;
--
SELECT * FROM companies;
SELECT * FROM users;
--
INSERT INTO dni (dni_number, user_id) VALUE(111111, 1);
INSERT INTO dni (dni_number, user_id) VALUE(222222, 2);
INSERT INTO dni (dni_number, user_id) VALUE(333333, 3);
INSERT INTO dni (dni_number) VALUE(444444);
--
INSERT INTO companies (name) VALUES("Malvisco");
INSERT INTO companies (name) VALUES("Almacenes cholo");
INSERT INTO companies (name) VALUES("Pesqueria calamar");
--
UPDATE users SET company_id=1 WHERE user_id=1;
--
UPDATE users SET company_id=2 WHERE user_id=3;
UPDATE users SET company_id=3 WHERE user_id=5;
UPDATE users SET company_id=1 WHERE user_id=6;
--
INSERT INTO languages(name) VALUE("kotlin");
INSERT INTO languages(name) VALUE("java");
INSERT INTO languages(name) VALUE("python");
INSERT INTO languages(name) VALUE("c#");
INSERT INTO languages(name) VALUE("php");
--
INSERT INTO users_languages(user_id, language_id) VALUES(1, 1);
INSERT INTO users_languages(user_id, language_id) VALUES(1, 3);
INSERT INTO users_languages(user_id, language_id) VALUES(1, 5);
--
DROP TABLE companies;
--


