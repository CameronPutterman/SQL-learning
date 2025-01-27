-- Which states had cheese production greater than 100 million in April 2023? The Cheese Department wants to focus their marketing efforts there. 

-- How many states are there?

SELECT sl.State
,sl.State_ANSI
FROM state_lookup sl 
WHERE sl.State_ANSI IN (
					SELECT cp.State_ANSI
					FROM cheese_production cp 
					WHERE cp.Value > 100000000 and cp.Year = 2023 and cp.Period = 'APR')
;

SELECT DISTINCT sl.State
FROM state_lookup sl 
JOIN cheese_production cp 
ON sl.State_ANSI = cp.State_ANSI 
WHERE cp.Value > 100000000 and cp.Year = 2023 and cp.Period = 'APR'
;





















