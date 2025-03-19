-- Can you find the total yogurt production for states in the year 2022 which also have cheese production data from 2023? 
-- This will help the Dairy Division in their planning.

SELECT SUM(yp.Value) AS total_yogurt_production
FROM yogurt_production yp 
WHERE yp.Year = 2022 and yp.State_ANSI IN 
									   (SELECT cp.State_ANSI
									   FROM cheese_production cp 
									   WHERE cp.Year = 2023 and cp.Value is not null
									   )
;

SELECT sl.State
,SUM(yp.Value) AS yogurt_production_2022
FROM state_lookup sl 
JOIN yogurt_production yp 
ON sl.State_ANSI = yp.State_ANSI 
WHERE yp.Year = 2022 and yp.State_ANSI IN (
								  SELECT cp.State_ANSI 
								  FROM cheese_production cp 
								  WHERE cp.Year = 2023 and cp.Value is not null
								  )
GROUP BY sl.State
;

























