/*Stored procedures are used to set instructions
that are used to perform repetitive tasks. In the next
example, the procedure is used to display all the users, 
but it can be used to perform any other tasks, such as 
adding, deleting, or modifying data.
*/
DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END //
--
CALL p_all_users();
/*In this other example, the procedure uses a parameter,
similir like a function, to set the age of the users.
*/
DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
	SELECT * FROM users WHERE age=age_param;
END //
--
CALL p_all_users(20);
