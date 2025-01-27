UPDATE cheese_production SET value = REPLACE(value, ',', '');

UPDATE cheese_production 
SET value=REPLACE(value,',',''
);

SELECT value
,REPLACE(value, ',', '') AS updated_value
FROM cheese_production 
LIMIT 10
;

UPDATE cheese_production SET value = REPLACE(value, ',', '');

UPDATE cheese_production 
SET value=REPLACE(value,',',''
);

UPDATE cheese_production 
SET value=REPLACE(value, ',', '')
;
UPDATE cheese_production
SET Value = REPLACE(Value, ',', '')
;

UPDATE coffee_production 
SET value=REPLACE(value, ',', '')
;

PRAGMA table_info(cheese_production);

UPDATE cheese_production 
SET value=REPLACE(value, ',', '')
;

SELECT typeof(value) AS data_type, value
FROM cheese_production
LIMIT 10;

SELECT value 
FROM cheese_production 
WHERE value 
LIKE '%,%' 
LIMIT 10
;

UPDATE cheese_production SET value = REPLACE(value, ',', '');


UPDATE honey_production SET value = REPLACE(value, ',', '');



