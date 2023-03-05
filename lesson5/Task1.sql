-- 1.Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов

CREATE VIEW cars25 AS
 SELECT id, name, cost
 FROM cars
 WHERE cost < 25000;