/* This index uses more space in the permanent memory, 
and also more ram memory, but the queries are faster */
CREATE INDEX idx_name ON users(name);
-- In the case you want to have a unique index
CREATE UNIQUE INDEX idx_name ON users(name);
--When you want to erase the index
DROP INDEX idx_name ON users;