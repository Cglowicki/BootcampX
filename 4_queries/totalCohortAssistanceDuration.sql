SELECT cohorts.name AS cohort, SUM(ar.completed_at - ar.started_at) AS total_duration
FROM assistance_requests AS ar
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;