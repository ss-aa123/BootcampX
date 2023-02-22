-- total number of assignments for each day of bootcamp where assignments are greater than or equal to 10 

SELECT day, count(*) as total_assignments
FROM assignments 
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;
