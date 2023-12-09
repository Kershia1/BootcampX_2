SELECT teachers.name AS teacher, cohorts.start_date AS cohort
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.start_date = '2018-07-02'
GROUP BY teacher, cohort
ORDER BY teacher;