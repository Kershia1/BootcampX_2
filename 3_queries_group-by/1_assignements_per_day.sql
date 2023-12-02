SELECT day, total_assignements
FROM assignements
GROUP BY cohorts_id
ORDER BY date ASC;