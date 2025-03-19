-- List all states with their cheese production values, including states that didn't produce any cheese in April 2023.

SELECT sl.State
,SUM(CASE
		WHEN cp.Year = 2023 and cp.Period = 'APR' THEN cp.Value
		ELSE 0
	 END
	 ) AS cheese_production_value 
FROM state_lookup sl 
LEFT JOIN cheese_production cp 
ON sl.State_ANSI = cp.State_ANSI 
GROUP BY sl.State 
;























