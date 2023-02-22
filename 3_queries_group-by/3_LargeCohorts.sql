-- all cohorts with 18 or more students

SELECT cohorts.name as cohort_name, count(students.*) as student_count
FROM cohorts
JOIN students ON cohort_id = cohorts.id
GROUP BY cohorts_name
HAVING count(students.*) >= 18
ORDER BY student_count;
