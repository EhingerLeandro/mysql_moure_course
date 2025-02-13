/*It is recommended to always use WHERE, so as not to affect all users of the database, 
and thus only modify the elements that are required.*/
UPDATE users SET age=21 WHERE user_id = 10;
