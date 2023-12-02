SELECT students.name as student_name, duration 
FROM students INNER JOIN assignment_submissions ON id = id
WHERE student_name LIKE '%Ibrahim Schimmel%';