--Relación 1 a 1
CREATE TABLE dni (
	dni_id int AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
    );
--
CREATE TABLE companies(
company_id int AUTO_INCREMENT PRIMARY KEY,
name varchar(100) NOT NULL
);
--
ALTER TABLE users
MODIFY company_id int;
--
ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id);
--
CREATE TABLE languages(
	language_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);
--
CREATE TABLE users_languages(
	user_language_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
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
DROP TABLE companies;
--


