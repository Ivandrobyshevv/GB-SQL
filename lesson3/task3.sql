-- Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
SELECT post, SUM(salary) AS "salary"
FROM staff
GROUP BY post
order BY MAX(salary) DESC;