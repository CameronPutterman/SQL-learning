-- Your manager wants to know how coffee production has changed over the years. 

-- What is the total value of coffee production for 2011?

SELECT SUM(cp.Value)
FROM coffee_production cp 
WHERE cp.Year = 2011
;
























