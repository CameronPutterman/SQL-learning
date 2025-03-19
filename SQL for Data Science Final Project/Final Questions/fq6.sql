-- For a cross-commodity report, can you list all states with their cheese production values, even if they didn't produce any cheese in April of 2023?

-- What is the total for NEW JERSEY?

SELECT sl.State
,SUM(CASE
	WHEN cp.Year = 2023 and cp.Period = 'APR' THEN cp.Value 
	ELSE 0 
END) as april_production_2023
FROM state_lookup sl 
LEFT JOIN cheese_production cp 
ON sl.State_ANSI = cp.State_ANSI 
GROUP BY sl.State 
ORDER BY sl.State 
;

SELECT sl.State
,SUM(CASE
	WHEN cp.Year = 2023 and cp.Period = 'APR' THEN cp.Value 
	ELSE 0 
END) as april_production_2023
FROM state_lookup sl 
LEFT JOIN cheese_production cp 
ON sl.State_ANSI = cp.State_ANSI 
WHERE sl.State = 'NEW JERSEY'
GROUP BY sl.State 
;























