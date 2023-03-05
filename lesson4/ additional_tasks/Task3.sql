-- Даны 2 таблицы, созданные следующим образом:
create table test_b (id INT);

insert into test_a(id, data) values
(10, 'A'),
(20, 'A'),
(30, 'F'),
(40, 'D'),
(50, 'C');

insert into test_b(id) values
(10),
(30),
(50);
-- Напишите запрос, который вернет строки из таблицы test_a, id которых нет в таблице test_b, НЕ используя ключевого слова NOT.
SELECT id 
FROM 
  (SELECT id, data
  FROM test_a
  UNION ALL
  SELECT id, NULL
  FROM test_b) c
GROUP BY ID
HAVING COUNT(id) = 1;