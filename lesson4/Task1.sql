-- 1.Вывести всех котиков по магазинам по id (условие соединения shops.id = cats.shops_id
SELECT
  c.name,
  s.shopname
FROM cats c 
  LEFT JOIN shops s 
    ON c.shops_id = s.id;