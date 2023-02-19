SELECT brand, phone_model, price
FROM phone
WHERE full_cost BETWEEN 100000.00 AND 145000.00;


SELECT brand, phone_model, price
FROM phone
WHERE phone_model LIKE '%phone%';


SELECT brand, phone_model, price
FROM phone
WHERE phone_model LIKE '%Galaxy%';

SELECT brand, phone_model, price
FROM phone
WHERE phone_model RLIKE '[0-9]';

SELECT brand, phone_model, price
FROM phone
WHERE phone_model RLIKE '[8]';