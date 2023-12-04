--SELECT cohorts.name as cohort_name, COUNT(assignment_submissions.id) as total_submissions
--FROM cohorts
--JOIN assignment_submissions ON cohorts.id = assignment_submissions.student_id
--GROUP BY cohorts.name
--HAVING COUNT(assignment_submissions.id)
--ORDER BY COUNT(assignment_submissions.id) DESC;

--Select the cohort name and total submissions.
--Order the results from greatest to least submissions.

SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;