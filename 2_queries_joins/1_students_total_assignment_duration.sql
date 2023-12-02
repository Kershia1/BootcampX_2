SELECT SUM(asssignement_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE student_name LIKE '%Ibrahim Schimmel%';