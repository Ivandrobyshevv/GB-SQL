/*Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными*/

CREATE TABLE sale (
  id int AUTO_INCREMENT PRIMARY KEY,
  order_date DATE NOT NULL,                                   
  count_product int DEFAULT 0
);

INSERT INTO sale (order_date, count_product)
VALUES 
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);
