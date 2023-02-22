-- Выведите 5 максимальных заработных плат (saraly)
SELECT MAX(salary) AS "salary"
FROM staff
GROUP BY salary
order BY MAX(salary) DESC
LIMIT 5;