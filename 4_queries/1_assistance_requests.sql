SELECT COUNT(*) AS total_assistances, name
FROM teachers
--JOIN teachers ON teachers.id = teacher_id
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY name;