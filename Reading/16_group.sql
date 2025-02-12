SELECT MAX(age) FROM users GROUP BY age;
SELECT COUNT(age), age FROM users GROUP BY age;
SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age desc;
SELECT COUNT(age), age FROM users WHERE age>20 GROUP BY age ORDER BY age asc;