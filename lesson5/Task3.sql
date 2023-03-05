-- 3.Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”
CREATE VIEW favorite_cars AS
 SELECT id, `name`, cost
 FROM cars
 WHERE `name` IN ('skoda', 'audi');