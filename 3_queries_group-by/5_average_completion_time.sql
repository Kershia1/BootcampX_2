--Select the students name and average time from assignment submissions.
--Order the results from greatest duration to least greatest duration.
--A student will have a null end_date if they are currently enrolled


SELECT name, AVG(assignment_submissions.duration) as average_assignment_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY AVG(assignment_submissions.duration) DESC;
