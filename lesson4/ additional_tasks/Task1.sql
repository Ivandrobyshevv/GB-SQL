-- 1. Вывести на экран сколько машин каждого цвета для машин марок BMW и LADA
SELECT
  MARK,
  COLOR,
  COUNT(COLOR) AS color_count
FROM AUTO a
GROUP BY MARK, COLOR
ORDER BY MARK, COLOR