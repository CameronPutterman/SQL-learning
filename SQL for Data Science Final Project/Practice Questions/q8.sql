SELECT SUM(yp.Value)
FROM yogurt_production yp 
WHERE yp.Year = 2022 and yp.State_ANSI IN (SELECT cp.State_ANSI 
						FROM cheese_production cp 
						WHERE cp.Value > 0 and cp.Year = 2022)
;