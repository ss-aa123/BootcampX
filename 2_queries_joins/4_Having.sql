-- total submissions for all currently enrolled students who's total submissions are less than 100

-- HAVING is like WHERE but works on aggregated data (count)

-- HAVING is evaluatede before SELECT so can't call 'total_submissions' on it

SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING count(assignment_submissions.*) < 100;