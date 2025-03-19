SELECT hp.State_ANSI
,mp.State_ANSI
FROM honey_production hp 
JOIN milk_production mp 
ON hp.State_ANSI = mp.State_ANSI and hp.Value > 0 and mp.Value > 0
WHERE hp.Year = 2022 and hp.State_ANSI = '35'
;