SELECT cohorts.start_date AS name, AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts.start_date
ORDER BY cohorts.start_date ASC;