--Select the name of the student, their average completion time, and the average suggested completion time.

SELECT students.name, AVG(assignment_submissions.duration) as average_assignment_duration, AVG(assignments.duration) as average_estimated_duration
FROM assignment_submissions
JOIN students ON students.id = student_id 
JOIN assignments ON assignments.id = assignment_id
--This will require data from students, assignment_submissions, and assignments.
WHERE students.end_date IS NULL --Only get currently enrolled students.
GROUP BY students.name
ORDER BY AVG(assignment_submissions.duration) ASC,  AVG(assignments.duration) ASC; --Order by average completion time from smallest to largest.


--compass answer
SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;



