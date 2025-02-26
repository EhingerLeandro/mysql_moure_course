/* This is used when you need to activate an action
when an specific event occurs. Also this is not 
a query started by you, but a procedure */
DELIMITER $$
CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history (user_id, email)
        VALUES (OLD.user_id, OLD.email);
	END IF; 
END $$
--This next code is user to activate the trigger
UPDATE users SET email="fulanita@hotmail.Com" WHERE user_id = 3;
--To eliminate a trigger
DROP TRIGGER tg_email;