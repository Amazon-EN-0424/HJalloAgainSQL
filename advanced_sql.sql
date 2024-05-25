SELECT * FROM robots;

SELECT * FROM components;

SELECT * FROM maintenance_logs;

SELECT COUNT(*)
FROM components;

SELECT AVG(weight)
FROM robots;

SELECT MIN(price), MAX(price)
FROM robots;

SELECT category, COUNT(*)
FROM robots
GROUP BY category;



INSERT INTO robots (id, name, model, category, price, weight, battery_capacity)
VALUES (6, 'RoboFriend', 'RM-100', 'Household', 999.99, 5.5, 5000);

SELECT category, AVG(price)
FROM robots
GROUP BY category
HAVING AVG(price) > 1000
   AND AVG(price) < 3000;

SELECT *
FROM robots
WHERE name LIKE '%a_d';

SELECT *
FROM maintenance_logs
WHERE maintenance_date BETWEEN '2023-04-01' AND '2023-07-30';

SELECT * FROM robots WHERE category = 'Household' OR price < 1500;

SELECT * FROM robots ORDER BY name DESC;

SELECT DISTINCT category FROM robots;
SELECT COUNT(DISTINCT category) FROM robots;


