SELECT cohorts.name as cohort, COUNT(assignment_submissions.*) as total_submission
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id 
GROUP BY cohort 
ORDER BY total_submission DESC;