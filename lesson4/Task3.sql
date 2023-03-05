-- 3. Вывести магазины, в котором НЕ продаются коты “Мурзик” и “Zuza”
SELECT
  shopname, id
FROM shops  
WHERE id NOT IN 
  (SELECT shops_id FROM cats c 
    WHERE c.name IN ('Murzik', 'Zuza'));