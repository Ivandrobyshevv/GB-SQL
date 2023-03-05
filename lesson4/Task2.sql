-- 2.Вывести магазин, в котором продается кот “Мурзик” (попробуйте выполнить 2 способами)
-- Способ 1
SELECT
  c.name,
  s.shopname
FROM cats c 
  LEFT JOIN shops s 
    ON c.shops_id = s.id
WHERE c.name = 'Murzik';

-- Способ 2
SELECT
  shopname
FROM shops  
WHERE id IN 
  (SELECT shops_id FROM cats c WHERE c.name = 'Murzik')