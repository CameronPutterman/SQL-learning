-- Find the average coffee production for all years where the honey production exceeded 1 million.

SELECT AVG(cp.Value) AS avg_coffee_production
FROM coffee_production cp 
WHERE cp.Year IN
				(SELECT DISTINCT hp.YEAR 
				FROM honey_production hp 
				WHERE hp.Value > 1000000
				)
;























