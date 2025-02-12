/* Se recomienda usar siempre el WHERE, para no afectar todos los usuarios de
la base de datos, y así solo modificar los elementos que se requieren.*/
UPDATE users SET age=21 WHERE user_id = 10;
