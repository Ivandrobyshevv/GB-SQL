-- 2. Вывести на экран марку авто и количество AUTO не этой марки

SELECT
  a.MARK,
  (SELECT COUNT(MARK) 
    FROM AUTO b 
    WHERE a.MARK <> b.MARK) AS count_other
FROM AUTO a
GROUP BY MARK