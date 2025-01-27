-- The State Relations team wants a list of all states names with their corresponding ANSI codes. Can you generate that list?

-- What is the State_ANSI code for Florida?

SELECT sl.State
,sl.State_ANSI
FROM state_lookup sl 
WHERE sl.State = 'FLORIDA'
;
























