UPDATE honey_production SET value = REPLACE(value, ',', '');

UPDATE honey_production 
SET value=REPLACE(value, ',', '')
;
UPDATE coffee_production 
SET Value=REPLACE(Value, ',', '')
;

SELECT *
FROM coffee_production 
WHERE Value < 5000000
;

UPDATE egg_production 
SET Value=REPLACE(Value, ',', '')
;

UPDATE yogurt_production 
SET Value=REPLACE(Value, ',', '')
;

