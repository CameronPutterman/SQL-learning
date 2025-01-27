-- List all states from state_lookup that are missing from milk_production in 2023.

-- How many states are there?

SELECT sl.State
,CASE 
	WHEN EXISTS(
			   SELECT mp.Value
			   FROM milk_production mp
			   WHERE sl.State_ANSI = mp.State_ANSI and mp.Year = 2023
			   ) THEN 'present'
			   ELSE 'missing'
END AS milk_production_records
FROM state_lookup sl
WHERE 
	CASE 
		WHEN EXISTS(
					SELECT mp.Value
					FROM milk_production mp 
					WHERE sl.State_ANSI = mp.State_ANSI and mp.Year = 2023
					) THEN 1
					ELSE 0
	END = 0
ORDER BY sl.State
;

SELECT DISTINCT sl.State
FROM state_lookup sl 
LEFT JOIN milk_production mp 
ON sl.State_ANSI = mp.State_ANSI and mp.Year = 2023
WHERE mp.State_ANSI is null 
;
SELECT DISTINCT sl.State
FROM state_lookup sl 
LEFT JOIN milk_production mp 
ON sl.State_ANSI = mp.State_ANSI and mp.Year = 2023
WHERE mp.Value is null 
;























