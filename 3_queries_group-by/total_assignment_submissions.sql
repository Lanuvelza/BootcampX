
SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) AS total_submission
FROM cohorts 
JOIN students ON cohorts.id = students.cohort_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohort
ORDER BY total_submission DESC;