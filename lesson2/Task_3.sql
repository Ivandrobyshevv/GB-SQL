/*
Создайте таблицу “orders”, заполните ее значениями
*/

CREATE TABLE orders (
id AUTO_INCREMENT PRIMARY KEY,
employee_id varchar(100) NOT NULL,
amount numeric(10,2) DEFAULT (0.0),
order_status varchar(100) NOT NULL
);

INSERT INTO orders (employee_id, amount, order_status)
VALUES
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED');

/*
Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status:
OPEN – «Order is in open state» ; CLOSED - «Order is closed»; CANCELLED -  «Order is cancelled»
*/
SELECT id AS "id", employee_id, amount,
(
    CASE
        WHEN order_status = 'OPEN' THEN 'Order is in open state'
        WHEN order_status = 'CLOSED' THEN 'Order is closed'
        WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
    END
) AS "order_status"
FROM orders;

