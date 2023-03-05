-- 2.Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW)
ALTER VIEW cars25 AS
 SELECT `id`, `name`, `cost`
 FROM cars
 WHERE cost < 30000;