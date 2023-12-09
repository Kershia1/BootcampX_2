SELECT AVG(total_duration) AS average_total_duration
FROM (SELECT cohorts.start_date AS cohort, SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration 
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts.start_date
ORDER BY total_duration  ASC) subquery;
