-- Доп. задание
-- Cоздание процедуры, которая решает следующую задачу Выбрать для одного пользователя 5 пользователей в случайной комбинации, которые удовлетворяют хотя бы одному критерию:

-- 1.из одного города
-- 2.состоят в одной группе
-- 3.друзья друзей
DELIMITER $$

CREATE PROCEDURE find_person(IN find_id int)
BEGIN
  SELECT b.user_id, u.firstname, u.lastname
  FROM
    (SELECT user_id FROM
      (SELECT p.user_id
        FROM profiles p
        WHERE p.hometown = (SELECT hometown FROM profiles WHERE PROFILES.user_id = find_id)
      UNION
      SELECT id
        FROM communities
        WHERE id IN (SELECT community_id FROM users_communities WHERE user_id = find_id)) a
    UNION
    SELECT target_user_id 
      FROM friend_requests
      WHERE initiator_user_id IN (
        SELECT
           target_user_id
         FROM friend_requests
         WHERE initiator_user_id = find_id)) b
  LEFT JOIN users u
    ON b.user_id = u.id
  ORDER BY RAND()
  LIMIT 5;
END
$$

DELIMITER ;

-- Cоздание функции, вычисляющей коэффициент популярности пользователя
DELIMITER @@

CREATE FUNCTION celebrity(id int) 
RETURNS decimal 
BEGIN
  
  DECLARE result int DEFAULT 0;

  SELECT a.percent INTO result
    FROM
      (SELECT target_user_id, 100. * COUNT(target_user_id) / SUM(COUNT(*)) OVER () AS percent
      FROM friend_requests
      GROUP BY target_user_id) a
    WHERE a.target_user_id = id;
   
  RETURN result;

END
@@

DELIMITER ;