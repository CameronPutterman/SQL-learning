SELECT SUM(Value )
FROM coffee_production 
WHERE Year = 2015
;

SELECT AVG(value)
FROM honey_production hp 
WHERE year = 2022
;

SELECT sl.State
,sl.State_ANSI 
FROM state_lookup sl 
WHERE State is 'IOWA'
;

SELECT Value
,yp."Year" 
FROM yogurt_production yp 
WHERE Year = 2022
ORDER BY Value DESC 
;

SELECT hp.State_ANSI
,mp.State_ANSI 
FROM honey_production hp 
,milk_production mp 
WHERE hp.Value < 0 and mp.Value < 0 and hp.Year = 2022 and mp.Year = 2022
;

SELECT State_ANSI 
FROM honey_production hp 
WHERE Value > 0 and Year = 2022
;

SELECT State_ANSI
FROM honey_production hp 
JOIN milk_production mp 
ON hp.Year 

SELECT hp.State_ANSI
,mp.State_ANSI 
FROM honey_production hp 
,milk_production mp 
WHERE hp.Year = 2022 and mp.Year = 2022 and hp.Value >0 and mp.Value>0 and hp.State_ANSI = 35 and mp.State_ANSI  = 35
;

SELECT cp.Value AS che_prod
,yp.Value AS yog_prod
,SUM(yp.Value) AS total_yog_prod
FROM cheese_production cp 
JOIN yogurt_production yp 
ON cp.State_ANSI = yp.State_ANSI 
WHERE cp.Value > 0
;

SELECT cp.State_ANSI
,SUM(yp.Value)
FROM cheese_production cp 
JOIN yogurt_production yp 
ON cp.Year = yp.Year 
WHERE cp.Year = 2022
;

SELECT SUM(Value)
FROM yogurt_production yp 
WHERE State_ANSI IN (SELECT State_ANSI
						FROM cheese_production cp 
						WHERE Year = 2022)
;

SELECT SUM(Value)
FROM yogurt_production yp 
WHERE yp.Year = 2022 and yp.State_ANSI IN (SELECT State_ANSI
						FROM cheese_production cp 
						WHERE Year = 2022)
;