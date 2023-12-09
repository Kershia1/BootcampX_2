SELECT assignments.day AS day, COUNT(name) AS number_of_assignements, SUM(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day ASC;