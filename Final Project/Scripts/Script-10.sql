SELECT *
FROM egg_production 
WHERE State_ANSI = '';

SELECT *
FROM egg_production 
WHERE Value > 52000000;

UPDATE cheese_production SET value = REPLACE(value, ',', '');

